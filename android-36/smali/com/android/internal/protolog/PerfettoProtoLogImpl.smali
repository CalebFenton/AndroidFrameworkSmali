.class public abstract Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/IProtoLogClient$Stub;
.source "PerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field public static final blacklist NULL_STRING:Ljava/lang/String; = "null"

.field private static final blacklist STACK_SIZE_TO_PROTO_LOG_ENTRY_CALL:I = 0x6


# instance fields
.field protected blacklist mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private final blacklist mCollectStackTraceGroupCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

.field protected final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mDefaultLogLevelCounts:[I

.field protected final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mLogcatReady:Z

.field private final blacklist mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$ByAaNrwt9j6GynENDKrjHFNxzFg(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$connectToConfigurationService$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MQ_SVaXmDujMW5ISGNMGvz8bOeI(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZlqZnoHV-BCap7Ww-YBSQosJFUU(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mJFpMcp6YfnU0kpGiDT5HEXAhf0(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingFlush()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oLMGvk9n3jCtLVnANtrX7U02Jos(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qCUZOZspX3_hz0DsGTElovE4fEE(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 5
    .param p1, "dataSource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p2, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    .param p3, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 125
    nop

    .line 126
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 127
    nop

    .line 128
    const-string/jumbo v0, "protolog_configuration"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;

    move-result-object v0

    goto :goto_15

    .line 129
    :cond_14
    const/4 v0, 0x0

    .line 125
    :goto_15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    .line 131
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .registers 6
    .param p1, "dataSource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p2, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    .param p3, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p4, "configurationService"    # Lcom/android/internal/protolog/IProtoLogConfigurationService;

    .line 137
    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogClient$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    .line 108
    nop

    .line 109
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 138
    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 139
    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 140
    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    .line 142
    invoke-direct {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 143
    return-void
.end method

.method private blacklist collectStackTrace()Ljava/lang/String;
    .registers 7

    .line 643
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 644
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 645
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 646
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x6

    .local v3, "i":I
    :goto_13
    :try_start_13
    array-length v4, v0

    if-ge v3, v4, :cond_31

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_39

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 649
    .end local v3    # "i":I
    :cond_31
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 651
    .end local v2    # "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 645
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw v3
.end method

.method private blacklist connectToConfigurationService()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private blacklist hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 7
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "logGroup"    # Ljava/lang/String;
    .param p3, "messageString"    # Ljava/lang/String;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "fullStringIdentifier":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private blacklist internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J
    .registers 21
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 583
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 585
    .local v2, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-boolean v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const-wide v4, 0x10d0000000dL

    if-nez v3, :cond_1d

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    .line 587
    .local v3, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 588
    iput-boolean v6, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 592
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    :cond_1d
    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10b00000069L

    if-nez v3, :cond_7a

    .line 593
    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    .line 596
    .restart local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 597
    .local v10, "protologViewerConfigToken":J
    const-wide v12, 0x20b00000002L

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 599
    .local v12, "groupConfigToken":J
    const-wide v14, 0x10d00000001L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v8

    invoke-virtual {v3, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 600
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 601
    const-wide v8, 0x10900000003L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 603
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 604
    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 607
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v10    # "protologViewerConfigToken":J
    .end local v12    # "groupConfigToken":J
    :cond_7a
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v3, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 608
    .local v3, "messageHash":Ljava/lang/Long;
    iget-object v9, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d6

    .line 609
    iget-object v9, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v9

    .line 614
    .local v9, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v10, 0x2

    invoke-virtual {v9, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    const-wide v4, 0x10b00000069L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 617
    .local v4, "protologViewerConfigToken":J
    const-wide v10, 0x20b00000001L

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 619
    .local v10, "messageConfigToken":J
    const-wide v12, 0x10600000001L

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 620
    invoke-virtual {v9, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 621
    const-wide v6, 0x10e00000003L

    iget v12, v0, Lcom/android/internal/protolog/common/LogLevel;->id:I

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 622
    const-wide v6, 0x10d00000004L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v12

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 624
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 625
    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 628
    .end local v4    # "protologViewerConfigToken":J
    .end local v9    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v10    # "messageConfigToken":J
    :cond_d6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private blacklist internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .registers 10
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 659
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 660
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000025L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .end local p2    # "stacktrace":Ljava/lang/String;
    .local v2, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local v6, "stacktrace":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private blacklist internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I
    .registers 16
    .param p3, "fieldId"    # J
    .param p5, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 681
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local p2, "internMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 683
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-boolean v1, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 684
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v1

    .line 685
    .local v1, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10d0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 686
    iput-boolean v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 689
    .end local v1    # "os":Landroid/util/proto/ProtoOutputStream;
    :cond_19
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 690
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 691
    .local v1, "internedIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v2

    .line 694
    .local v2, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 695
    .local v3, "token":J
    invoke-virtual {v2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 696
    .local v5, "innerToken":J
    const-wide v7, 0x10400000001L

    invoke-virtual {v2, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 697
    const-wide v7, 0x10c00000002L

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 698
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 699
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 702
    .end local v1    # "internedIndex":I
    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "token":J
    .end local v5    # "innerToken":J
    :cond_56
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .registers 10
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 669
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 670
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000024L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .end local p2    # "string":Ljava/lang/String;
    .local v2, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local v6, "string":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic blacklist lambda$connectToConfigurationService$0()V
    .registers 7

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object v0

    .line 169
    .local v0, "args":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    .line 172
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 175
    .local v3, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 176
    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 173
    .end local v3    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 179
    .end local v2    # "i":I
    :cond_46
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {v2, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4d

    .line 182
    .end local v0    # "args":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    nop

    .line 183
    return-void

    .line 180
    :catch_4d
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to register ProtoLog client"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 8
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "tsNanos"    # J
    .param p7, "stacktrace"    # Ljava/lang/String;

    .line 378
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$4(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Double;)V
    .registers 6
    .param p0, "os"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "it"    # Ljava/lang/Double;

    .line 560
    const-wide v0, 0x20100000004L

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Boolean;)V
    .registers 5
    .param p0, "os"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "it"    # Ljava/lang/Boolean;

    .line 563
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide v1, 0x20500000005L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method private synthetic blacklist lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .registers 34
    .param p1, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p5, "stacktrace"    # Ljava/lang/String;
    .param p6, "tsNanos"    # J
    .param p8, "ctx"    # Landroid/tracing/perfetto/TracingContext;

    .line 458
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    .line 459
    .local v4, "tlsState":Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v5

    .line 461
    .local v5, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    if-ge v0, v6, :cond_20

    .line 462
    return-void

    .line 465
    :cond_20
    const-string v6, "null"

    if-eqz v2, :cond_48

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "argIndex":I
    array-length v8, v2

    const/4 v9, 0x0

    :goto_27
    if-ge v9, v8, :cond_48

    aget-object v10, v2, v9

    .line 471
    .local v10, "o":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v11

    invoke-static {v11, v0}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v11

    .line 472
    .local v11, "type":I
    if-nez v11, :cond_42

    .line 473
    if-nez v10, :cond_3b

    .line 474
    invoke-direct {v1, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    goto :goto_42

    .line 476
    :cond_3b
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v3, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    .line 479
    :cond_42
    :goto_42
    nop

    .end local v10    # "o":Ljava/lang/Object;
    .end local v11    # "type":I
    add-int/lit8 v0, v0, 0x1

    .line 470
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 483
    .end local v0    # "argIndex":I
    :cond_48
    const/4 v0, 0x0

    .line 484
    .local v0, "internedStacktrace":I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 488
    move-object/from16 v8, p5

    invoke-direct {v1, v3, v8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    move v9, v0

    goto :goto_5e

    .line 484
    :cond_5b
    move-object/from16 v8, p5

    move v9, v0

    .line 491
    .end local v0    # "internedStacktrace":I
    .local v9, "internedStacktrace":I
    :goto_5e
    const/4 v0, 0x0

    .line 493
    .local v0, "needsIncrementalState":Z
    const-wide/16 v10, 0x0

    .line 494
    .local v10, "messageHash":J
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_6f

    .line 495
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 497
    :cond_6f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_83

    .line 498
    const/4 v0, 0x1

    .line 499
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v12

    .line 500
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct {v1, v3, v14, v13, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_87

    .line 497
    :cond_83
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 503
    :goto_87
    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v12

    .line 504
    .local v12, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v15, 0x0

    const-wide v7, 0x10400000008L

    move-wide/from16 v13, p6

    invoke-virtual {v12, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 505
    const-wide v7, 0x10b00000068L

    invoke-virtual {v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 507
    .local v7, "token":J
    const-wide v13, 0x10600000001L

    invoke-virtual {v12, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 509
    if-eqz v2, :cond_1f1

    .line 511
    const/4 v13, 0x0

    .line 512
    .local v13, "argIndex":I
    new-instance v14, Landroid/util/LongArray;

    invoke-direct {v14}, Landroid/util/LongArray;-><init>()V

    .line 513
    .local v14, "longParams":Landroid/util/LongArray;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 514
    .local v17, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v16

    .line 515
    .local v18, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v16, v15

    array-length v15, v2

    move-object/from16 v19, v5

    move v2, v13

    move/from16 v5, v16

    move v13, v0

    .end local v0    # "needsIncrementalState":Z
    .end local v5    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .local v2, "argIndex":I
    .local v13, "needsIncrementalState":Z
    .local v19, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    :goto_c6
    if-ge v5, v15, :cond_1be

    aget-object v20, p3, v5

    .line 516
    .local v20, "o":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v21

    .line 518
    .local v21, "type":I
    packed-switch v21, :pswitch_data_218

    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v5, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v22, "argIndex":I
    .local v23, "messageHash":J
    goto/16 :goto_1ae

    .line 544
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .restart local v10    # "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_e1
    if-nez v20, :cond_103

    .line 545
    :try_start_e3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e7
    .catch Ljava/lang/ClassCastException; {:try_start_e3 .. :try_end_e7} :catch_f6

    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    :try_start_eb
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_1ae

    .line 551
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_f6
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    goto/16 :goto_1a6

    .line 547
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_103
    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_116
    .catch Ljava/lang/ClassCastException; {:try_start_eb .. :try_end_116} :catch_11e

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_1ae

    .line 551
    :catch_11e
    move-exception v0

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_1a6

    .line 537
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_127
    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    if-nez v20, :cond_147

    .line 538
    const-wide/16 v23, 0x0

    :try_start_12f
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_133
    .catch Ljava/lang/ClassCastException; {:try_start_12f .. :try_end_133} :catch_13e

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :try_start_137
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v23, v10

    goto/16 :goto_1ae

    .line 551
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :catch_13e
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v5, v17

    move-wide/from16 v23, v10

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    goto/16 :goto_1a6

    .line 540
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :cond_147
    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15a
    .catch Ljava/lang/ClassCastException; {:try_start_137 .. :try_end_15a} :catch_15d

    .line 542
    move-wide/from16 v23, v10

    goto :goto_1ae

    .line 551
    :catch_15d
    move-exception v0

    move-wide/from16 v23, v10

    goto :goto_1a6

    .line 530
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_161
    move/from16 v22, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    if-nez v20, :cond_173

    .line 531
    move-wide/from16 v23, v10

    .end local v10    # "messageHash":J
    .restart local v23    # "messageHash":J
    const-wide/16 v10, 0x0

    :try_start_16f
    invoke-virtual {v14, v10, v11}, Landroid/util/LongArray;->add(J)V

    goto :goto_1ae

    .line 533
    .end local v23    # "messageHash":J
    .restart local v10    # "messageHash":J
    :cond_173
    move-wide/from16 v23, v10

    .end local v10    # "messageHash":J
    .restart local v23    # "messageHash":J
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Landroid/util/LongArray;->add(J)V

    .line 535
    goto :goto_1ae

    .line 521
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .restart local v10    # "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_181
    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    .restart local v23    # "messageHash":J
    if-nez v20, :cond_192

    .line 522
    invoke-direct {v1, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    .local v0, "internedStringId":I
    goto :goto_19a

    .line 524
    .end local v0    # "internedStringId":I
    :cond_192
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    .line 526
    .restart local v0    # "internedStringId":I
    :goto_19a
    const-wide v10, 0x20d00000002L

    invoke-virtual {v12, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_1a2
    .catch Ljava/lang/ClassCastException; {:try_start_16f .. :try_end_1a2} :catch_1a5

    .line 527
    const/4 v10, 0x1

    .line 528
    .end local v13    # "needsIncrementalState":Z
    .local v10, "needsIncrementalState":Z
    move v13, v10

    goto :goto_1ae

    .line 551
    .end local v0    # "internedStringId":I
    .end local v10    # "needsIncrementalState":Z
    .restart local v13    # "needsIncrementalState":Z
    :catch_1a5
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/ClassCastException;
    :goto_1a6
    const-string v10, "ProtoLog"

    const-string v11, "Invalid ProtoLog paramsMask"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1af

    .line 553
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_1ae
    nop

    .line 554
    :goto_1af
    nop

    .end local v20    # "o":Ljava/lang/Object;
    .end local v21    # "type":I
    add-int/lit8 v0, v22, 0x1

    .line 515
    .end local v22    # "argIndex":I
    .local v0, "argIndex":I
    add-int/lit8 v10, v18, 0x1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    move v5, v10

    move-wide/from16 v10, v23

    move v2, v0

    goto/16 :goto_c6

    .line 557
    .end local v0    # "argIndex":I
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .local v10, "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1be
    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    .restart local v23    # "messageHash":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c7
    invoke-virtual {v14}, Landroid/util/LongArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1de

    .line 558
    const-wide v10, 0x21200000003L

    move-wide v15, v7

    .end local v7    # "token":J
    .local v15, "token":J
    invoke-virtual {v14, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    invoke-virtual {v12, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    move-wide v7, v15

    goto :goto_1c7

    .end local v15    # "token":J
    .restart local v7    # "token":J
    :cond_1de
    move-wide v15, v7

    .line 560
    .end local v0    # "i":I
    .end local v7    # "token":J
    .restart local v15    # "token":J
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 563
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move v0, v13

    goto :goto_1f6

    .line 509
    .end local v2    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v13    # "needsIncrementalState":Z
    .end local v14    # "longParams":Landroid/util/LongArray;
    .end local v15    # "token":J
    .end local v19    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v0, "needsIncrementalState":Z
    .local v5, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v7    # "token":J
    .restart local v10    # "messageHash":J
    :cond_1f1
    move-object/from16 v19, v5

    move-wide v15, v7

    move-wide/from16 v23, v10

    .line 566
    .end local v5    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v7    # "token":J
    .end local v10    # "messageHash":J
    .restart local v15    # "token":J
    .restart local v19    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v23    # "messageHash":J
    :goto_1f6
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_208

    .line 567
    const-wide v5, 0x10d00000006L

    invoke-virtual {v12, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 570
    :cond_208
    move-wide v5, v15

    .end local v15    # "token":J
    .local v5, "token":J
    invoke-virtual {v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 572
    if-eqz v0, :cond_217

    .line 573
    const-wide v7, 0x10d0000000dL

    const/4 v2, 0x2

    invoke-virtual {v12, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 576
    :cond_217
    return-void

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_181
        :pswitch_161
        :pswitch_127
        :pswitch_e1
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 345
    invoke-static {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTracingInstanceStop$7(I)Z
    .registers 2
    .param p0, "it"    # I

    .line 801
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$toggleLogcat$1(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 255
    const-string v0, "ProtoLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$waitForInitialization$8()V
    .registers 2

    .line 887
    const-string v0, "ProtoLog"

    const-string v1, "Complete initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method private blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .registers 15
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 370
    .local v7, "tsNanos":J
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_27

    .line 371
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->collectStackTrace()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v0, "stacktrace":Ljava/lang/String;
    goto :goto_29

    .line 373
    .end local v0    # "stacktrace":Ljava/lang/String;
    :cond_27
    const/4 v0, 0x0

    move-object v9, v0

    .line 376
    .local v9, "stacktrace":Ljava/lang/String;
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_46

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .local v3, "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .local v4, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v5, "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .local v6, "args":[Ljava/lang/Object;
    :try_start_37
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_43

    .line 381
    iget-object p1, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    goto :goto_58

    .line 381
    :catchall_43
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .end local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local v6    # "args":[Ljava/lang/Object;
    .restart local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catchall_46
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local v6    # "args":[Ljava/lang/Object;
    :goto_4d
    iget-object p2, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    throw p1

    .line 367
    .end local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v7    # "tsNanos":J
    .end local v9    # "stacktrace":Ljava/lang/String;
    .restart local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local p4    # "args":[Ljava/lang/Object;
    :cond_53
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 384
    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local v6    # "args":[Ljava/lang/Object;
    :goto_58
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 385
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 387
    :cond_65
    return-void
.end method

.method private static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 820
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz p0, :cond_d

    .line 822
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 825
    :cond_d
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 427
    iget-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    if-nez v0, :cond_27

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to log a protolog message with hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to logcat before the service is ready to accept such requests."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 434
    :cond_27
    invoke-virtual {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "messageString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 441
    if-eqz p4, :cond_43

    .line 443
    :try_start_2
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    .line 448
    .local v0, "message":Ljava/lang/String;
    :goto_6
    goto :goto_44

    .line 444
    .end local v0    # "message":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FORMAT_ERROR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", args=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 446
    const-string v3, ", "

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_6

    .line 450
    .end local v0    # "message":Ljava/lang/String;
    :cond_43
    move-object v0, p3

    .line 452
    .restart local v0    # "message":Ljava/lang/String;
    :goto_44
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private blacklist logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 18
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "tsNanos"    # J
    .param p7, "stacktrace"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    move-wide v8, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    .line 577
    return-void
.end method

.method private blacklist onTracingFlush()V
    .registers 6

    .line 390
    const-string v0, "Executing onTracingFlush"

    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 395
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    .line 396
    .local v0, "loggingService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_42

    .line 398
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 399
    nop

    .line 402
    :try_start_1a
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 403
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 405
    .local v2, "finished":Z
    if-nez v2, :cond_2c

    .line 406
    const-string v3, "ProtoLog background tracing service didn\'t finish gracefully."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_2c} :catch_2d

    .line 410
    .end local v2    # "finished":Z
    :cond_2c
    goto :goto_33

    .line 408
    :catch_2d
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Failed to wait for tracing to finish"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_33
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->dumpViewerConfig()V

    .line 416
    :cond_3c
    const-string v2, "Finished onTracingFlush"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void

    .line 398
    .end local v0    # "loggingService":Ljava/util/concurrent/ExecutorService;
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 399
    throw v0
.end method

.method private declared-synchronized blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 13
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 746
    :try_start_1
    const-string v0, "ProtoLog"

    const-string v1, "Executing onTracingInstanceStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 749
    .local v0, "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    .local v1, "i":I
    :goto_12
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 750
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 753
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :cond_24
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    .line 755
    .local v1, "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 756
    .local v3, "overriddenGroupTag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 759
    .local v4, "logLevelsCountsForGroup":[I
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 760
    .local v5, "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    .local v6, "i":I
    :goto_56
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_66

    .line 761
    aget v7, v4, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v6

    .line 760
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 764
    .end local v6    # "i":I
    :cond_66
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_8a

    .line 765
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 766
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 765
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_8a
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v6, :cond_ad

    .line 770
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 771
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 770
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .end local v3    # "overriddenGroupTag":Ljava/lang/String;
    .end local v4    # "logLevelsCountsForGroup":[I
    .end local v5    # "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    :cond_ad
    goto/16 :goto_2c

    .line 775
    :cond_af
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v2, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 777
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 779
    const-string v2, "ProtoLog"

    const-string v3, "Finished onTracingInstanceStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_1 .. :try_end_c0} :catchall_c2

    .line 780
    monitor-exit p0

    return-void

    .line 745
    .end local v0    # "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v1    # "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "instanceIdx":I
    .end local p2    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :catchall_c2
    move-exception p1

    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method private declared-synchronized blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 11
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 784
    :try_start_1
    const-string v0, "ProtoLog"

    const-string v1, "Executing onTracingInstanceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 787
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 788
    .local v0, "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    .local v1, "i":I
    :goto_17
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 789
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 792
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :cond_29
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    .line 794
    .local v1, "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 795
    .local v3, "overriddenGroupTag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 797
    .local v4, "logLevelsCountsForGroup":[I
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 798
    .local v5, "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    .local v6, "i":I
    :goto_4f
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_5f

    .line 799
    aget v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v4, v6

    .line 798
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 801
    .end local v6    # "i":I
    :cond_5f
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 802
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_73
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v6, :cond_a5

    .line 806
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 807
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 806
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_a5

    .line 810
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .end local v3    # "overriddenGroupTag":Ljava/lang/String;
    .end local v4    # "logLevelsCountsForGroup":[I
    .end local v5    # "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    :cond_a5
    goto :goto_31

    .line 815
    :cond_a6
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v2, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 816
    const-string v2, "ProtoLog"

    const-string v3, "Finished onTracingInstanceStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_1 .. :try_end_b2} :catchall_b4

    .line 817
    monitor-exit p0

    return-void

    .line 783
    .end local v0    # "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v1    # "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "instanceIdx":I
    .end local p2    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :catchall_b4
    move-exception p1

    :try_start_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p1
.end method

.method private blacklist registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7
    .param p1, "protoLogGroups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 302
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 303
    .local v2, "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v2    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 305
    :cond_15
    return-void
.end method

.method private varargs blacklist setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .registers 10
    .param p1, "value"    # Z
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p3, "groups"    # [Ljava/lang/String;

    .line 718
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 719
    const/4 v0, -0x1

    return v0

    .line 722
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p3

    if-ge v0, v1, :cond_37

    .line 723
    aget-object v1, p3, v0

    .line 724
    .local v1, "group":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 725
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-eqz v2, :cond_1e

    .line 726
    invoke-interface {v2, p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    .line 722
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 728
    .restart local v1    # "group":Ljava/lang/String;
    .restart local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IProtoLogGroup named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v0    # "i":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_37
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v0, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 737
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7
    .param p1, "protoLogGroups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 308
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 310
    .local v0, "groupId":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_4a

    aget-object v3, p1, v2

    .line 311
    .local v3, "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 316
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 312
    .restart local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group with same id ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") registered twice. Potential duplicate or hash id collision."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_4a
    return-void
.end method

.method public static blacklist waitForInitialization()V
    .registers 5

    .line 881
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    .line 882
    .local v0, "currentInstance":Lcom/android/internal/protolog/common/IProtoLog;
    instance-of v1, v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v1, :cond_23

    move-object v1, v0

    check-cast v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    .line 886
    .local v1, "protoLog":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :try_start_b
    iget-object v2, v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 888
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_19} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_19} :catch_1a

    .line 891
    goto :goto_22

    .line 889
    :catch_1a
    move-exception v2

    .line 890
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ProtoLog"

    const-string v4, "Failed to wait for tracing service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_22
    return-void

    .line 883
    .end local v1    # "protoLog":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :cond_23
    return-void
.end method


# virtual methods
.method protected abstract blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.end method

.method public blacklist disable()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnFlushCallback(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 194
    return-void
.end method

.method abstract blacklist dumpViewerConfig()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist enable()V
    .registers 3

    .line 150
    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 152
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->connectToConfigurationService()V

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 159
    return-void
.end method

.method abstract blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
.end method

.method public blacklist getRegisteredGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 6
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 285
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 286
    .local v0, "groupLevelCount":[I
    if-nez v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-gtz v1, :cond_28

    :cond_18
    if-eqz v0, :cond_22

    .line 287
    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v1, v0, v1

    if-gtz v1, :cond_28

    .line 288
    :cond_22
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_28
    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 286
    :goto_2b
    return v1
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 9
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # J
    .param p5, "paramsMask"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p5, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 212
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    invoke-direct {v1, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/android/internal/protolog/common/InvalidFormatStringException; {:try_start_1 .. :try_end_9} :catch_a

    .line 216
    goto :goto_1f

    .line 213
    :catch_a
    move-exception v1

    .line 214
    .local v1, "e":Lcom/android/internal/protolog/common/InvalidFormatStringException;
    const-string v2, "ProtoLog"

    const-string v3, "Invalid protolog string format"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    new-instance v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const-string v3, "INVALID MESSAGE"

    invoke-direct {v2, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 217
    .end local v1    # "e":Lcom/android/internal/protolog/common/InvalidFormatStringException;
    :goto_1f
    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .registers 11
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 331
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    .line 332
    const-string v1, "Command deprecated. Please use \'cmd protolog_configuration\' instead."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    return v2

    .line 336
    :cond_11
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "cmd":Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 338
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 340
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_21
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "arg":Ljava/lang/String;
    if-eqz v4, :cond_2c

    .line 343
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 345
    :cond_2c
    new-instance v4, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    .line 346
    .local v4, "logger":Lcom/android/internal/protolog/common/ILogger;
    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 347
    .local v7, "groups":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_84

    :cond_41
    goto :goto_6b

    :sswitch_42
    const-string/jumbo v8, "start"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    goto :goto_6c

    :sswitch_4c
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_6c

    :sswitch_57
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x3

    goto :goto_6c

    :sswitch_61
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x2

    goto :goto_6c

    :goto_6b
    move v6, v2

    :goto_6c
    packed-switch v6, :pswitch_data_96

    .line 360
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 357
    :pswitch_74
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v2

    return v2

    .line 354
    :pswitch_79
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v2

    return v2

    .line 349
    :pswitch_7e
    const-string v6, "Command not supported. Please start and stop ProtoLog tracing with Perfetto."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    return v2

    :sswitch_data_84
    .sparse-switch
        -0x57eac4c9 -> :sswitch_61
        -0x3d842b0e -> :sswitch_57
        0x360802 -> :sswitch_4c
        0x68ac462 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_79
        :pswitch_74
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 241
    :pswitch_c
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 238
    :pswitch_10
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_24

    .line 235
    :pswitch_14
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto :goto_24

    .line 232
    :pswitch_18
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto :goto_24

    .line 229
    :pswitch_1c
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_24

    .line 226
    :pswitch_20
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    nop

    .line 244
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method protected blacklist readyToLogToLogcat()V
    .registers 2

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 322
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "groups"    # [Ljava/lang/String;

    .line 255
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;-><init>()V

    .line 256
    .local v0, "logger":Lcom/android/internal/protolog/common/ILogger;
    if-eqz p1, :cond_b

    .line 257
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    goto :goto_e

    .line 259
    :cond_b
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    .line 261
    :goto_e
    return-void
.end method

.method protected blacklist validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p2, "groups"    # [Ljava/lang/String;

    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2b

    .line 707
    aget-object v1, p2, v0

    .line 708
    .local v1, "group":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 709
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-nez v2, :cond_28

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 711
    const/4 v3, 0x0

    return v3

    .line 706
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method
