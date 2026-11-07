.class public Lcom/android/internal/protolog/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static blacklist REQUIRE_PROTOLOGTOOL:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private static final blacklist sInitLock:Ljava/lang/Object;

.field private static blacklist sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/protolog/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    .registers 4
    .param p0, "datasource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p1, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 121
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 123
    .local v0, "unprocessedPerfettoProtoLogImpl":Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
    invoke-virtual {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->enable()V
    :try_end_8
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 125
    return-object v0

    .line 126
    .end local v0    # "unprocessedPerfettoProtoLogImpl":Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
    :catch_9
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public static declared-synchronized blacklist getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;
    .registers 3

    const-class v0, Lcom/android/internal/protolog/ProtoLog;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    if-nez v1, :cond_26

    .line 242
    sget-object v1, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v1}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 243
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 244
    new-instance v1, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v1

    .line 252
    .local v1, "params":Landroid/tracing/perfetto/DataSourceParams;
    sget-object v2, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v2, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 255
    .end local v1    # "params":Landroid/tracing/perfetto/DataSourceParams;
    :cond_26
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 240
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 1

    .line 229
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-object v0
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public static varargs blacklist init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2
    .param p0, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 79
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->logOnlyToLogcat()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    new-instance v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;

    invoke-direct {v0}, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_11

    .line 82
    :cond_e
    invoke-static {p0}, Lcom/android/internal/protolog/ProtoLog;->initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 84
    :goto_11
    return-void
.end method

.method private static varargs blacklist initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 6
    .param p0, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 99
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    .line 101
    .local v0, "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_7
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v2, "allGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    sget-object v3, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 104
    .local v3, "previousProtoLogImpl":Lcom/android/internal/protolog/common/IProtoLog;
    if-eqz v3, :cond_1f

    .line 106
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLog;->getRegisteredGroups()Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, "alreadyRegisteredGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 110
    .end local v4    # "alreadyRegisteredGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    :cond_1f
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 111
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 110
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLog;->createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    move-result-object v4

    sput-object v4, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 112
    instance-of v4, v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v4, :cond_38

    .line 113
    move-object v4, v3

    check-cast v4, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->disable()V

    .line 115
    .end local v2    # "allGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    .end local v3    # "previousProtoLogImpl":Lcom/android/internal/protolog/common/IProtoLog;
    :cond_38
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 221
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    return v0
.end method

.method private static blacklist logOnlyToLogcat()Z
    .registers 1

    .line 88
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist logOnlyToLogcat$ravenwood()Z
    .registers 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs blacklist logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "stringMessage"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz v0, :cond_12

    .line 265
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_11
    return-void

    .line 261
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use ProtoLog before it is initialized in this process."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-void
.end method
