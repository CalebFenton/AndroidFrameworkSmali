.class public Lcom/android/internal/protolog/ProtoLogImpl;
.super Ljava/lang/Object;
.source "ProtoLogImpl.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogImpl"

.field private static blacklist sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private static blacklist sLegacyOutputFilePath:Ljava/lang/String;

.field private static blacklist sLegacyViewerConfigPath:Ljava/lang/String;

.field private static blacklist sLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

.field private static blacklist sViewerConfigPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createLegacyProtoLogImpl([Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/LegacyProtoLogImpl;
    .registers 5
    .param p0, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 146
    new-instance v0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sLegacyOutputFilePath:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sLegacyViewerConfigPath:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/protolog/LegacyProtoLogImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;)V

    .line 148
    .local v0, "protologImpl":Lcom/android/internal/protolog/LegacyProtoLogImpl;
    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->registerGroups([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 150
    return-object v0
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static declared-synchronized blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 7

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-nez v1, :cond_b3

    .line 109
    const-string v1, "ProtoLogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/protolog/ProtoLogImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with viewerConfigPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 113
    .local v1, "groups":[Lcom/android/internal/protolog/common/IProtoLogGroup;
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 114
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "viewerConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 119
    const-string v3, "ProtoLogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find viewer config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when setting up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/internal/protolog/ProtoLogImpl;

    .line 120
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". ProtoLog will not work here!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v3, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;

    invoke-direct {v3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;-><init>()V

    sput-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_9e

    .line 125
    :cond_8b
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v3
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_b7

    .line 127
    .local v3, "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    :try_start_8f
    new-instance v4, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-direct {v4, v3, v5, v6, v1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 130
    .local v4, "processedProtoLogImpl":Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;
    sput-object v4, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 131
    invoke-virtual {v4}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->enable()V
    :try_end_9d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_8f .. :try_end_9d} :catch_9f
    .catchall {:try_start_8f .. :try_end_9d} :catchall_b7

    .line 134
    .end local v4    # "processedProtoLogImpl":Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;
    nop

    .line 136
    .end local v2    # "viewerConfigFile":Ljava/io/File;
    .end local v3    # "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    :goto_9e
    goto :goto_ac

    .line 132
    .restart local v2    # "viewerConfigFile":Ljava/io/File;
    .restart local v3    # "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    :catch_9f
    move-exception v4

    .line 133
    .local v4, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_a0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 137
    .end local v2    # "viewerConfigFile":Ljava/io/File;
    .end local v3    # "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    .end local v4    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_a6
    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogImpl;->createLegacyProtoLogImpl([Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/LegacyProtoLogImpl;

    move-result-object v2

    sput-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 140
    :goto_ac
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v2, v3}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 142
    .end local v1    # "groups":[Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_b3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_b5
    .catchall {:try_start_a0 .. :try_end_b5} :catchall_b7

    monitor-exit v0

    return-object v1

    .line 107
    :catchall_b7
    move-exception v1

    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v1
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 4
    .param p0, "protoLogInstance"    # Lcom/android/internal/protolog/common/IProtoLog;
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 101
    invoke-interface {p0, p1, p2}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 96
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized blacklist setSingleInstance(Lcom/android/internal/protolog/common/IProtoLog;)V
    .registers 2
    .param p0, "instance"    # Lcom/android/internal/protolog/common/IProtoLog;

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 155
    :try_start_3
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 156
    monitor-exit v0

    return-void

    .line 154
    .end local p0    # "instance":Lcom/android/internal/protolog/common/IProtoLog;
    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # J
    .param p3, "paramsMask"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    .end local p0    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p1    # "messageHash":J
    .end local p3    # "paramsMask":I
    .end local p4    # "args":[Ljava/lang/Object;
    .local v2, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v3, "messageHash":J
    .local v5, "paramsMask":I
    .local v6, "args":[Ljava/lang/Object;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 89
    return-void
.end method
