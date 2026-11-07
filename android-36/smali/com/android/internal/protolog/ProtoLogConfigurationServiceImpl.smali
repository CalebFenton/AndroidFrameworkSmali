.class public Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;
.super Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;
.source "ProtoLogConfigurationServiceImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/ProtoLogConfigurationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogConfigurationService"


# instance fields
.field private final blacklist mClientConfigFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/protolog/IProtoLogClient;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigFileCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mGroupToClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/IProtoLogClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLogGroupToLogcatStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegisteredGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningInstances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;


# direct methods
.method public static synthetic blacklist $r8$lambda$Y9-F_dA-v6oN1BnST5AZw_K_H2Q(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d0EC1boA3wrFcn2Wn5VRApjmAio(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->lambda$registerClient$0(Lcom/android/internal/protolog/IProtoLogClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pqxEk5H96a4bhYyk47EqCgWSXK4(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wPtt8uiPRcPZf-oNAXsjhpBvE3c(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wgsgMaWPHRE9gdXcv3dRKmiaLrs(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceFlush()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 111
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .registers 3
    .param p1, "tracer"    # Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    .line 122
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V
    .registers 3
    .param p1, "datasource"    # Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 117
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .registers 4
    .param p1, "datasource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p2, "tracer"    # Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    .line 128
    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    .line 129
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    .line 131
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 132
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Ljava/lang/Runnable;)V

    .line 133
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 135
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 136
    return-void
.end method

.method private static blacklist dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .registers 3
    .param p0, "dataSource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p1, "viewerConfigFilePath"    # Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/protolog/Utils;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    .line 320
    return-void
.end method

.method static synthetic blacklist lambda$dumpViewerConfig$1(Ljava/lang/String;)Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .registers 5
    .param p0, "viewerConfigFilePath"    # Ljava/lang/String;

    .line 314
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;-><init>(Ljava/io/FileInputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 315
    :catch_b
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load viewer config file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$registerClient$0(Lcom/android/internal/protolog/IProtoLogClient;)V
    .registers 2
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onClientBinderDeath(Lcom/android/internal/protolog/IProtoLogClient;)V

    return-void
.end method

.method private blacklist onClientBinderDeath(Lcom/android/internal/protolog/IProtoLogClient;)V
    .registers 7
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;

    .line 324
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    .local v0, "configFile":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 326
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 327
    .local v1, "newCount":I
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    if-nez v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 329
    .local v2, "lastProcessWithViewerConfig":Z
    :goto_25
    if-eqz v2, :cond_2e

    .line 330
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-interface {v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    .line 333
    .end local v1    # "newCount":I
    .end local v2    # "lastProcessWithViewerConfig":Z
    :cond_2e
    return-void
.end method

.method private blacklist onTracingInstanceFlush()V
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    .line 303
    .end local v1    # "fileName":Ljava/lang/String;
    goto :goto_a

    .line 304
    :cond_1e
    return-void
.end method

.method private blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 297
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 307
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method private blacklist registerGroups(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V
    .registers 9
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;
    .param p2, "groups"    # [Ljava/lang/String;
    .param p3, "logcatStatuses"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_50

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_4f

    .line 234
    aget-object v1, p2, v0

    .line 235
    .local v1, "group":Ljava/lang/String;
    aget-boolean v2, p3, v0

    .line 237
    .local v2, "logcatStatus":Z
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 243
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_37
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 247
    .local v3, "requestedLogToLogcat":Z
    if-eq v3, v2, :cond_4c

    .line 248
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    .line 233
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "logcatStatus":Z
    .end local v3    # "requestedLogToLogcat":Z
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 251
    .end local v0    # "i":I
    :cond_4f
    return-void

    .line 227
    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected groups and logcatStatuses to have the same length, but groups has length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and logcatStatuses has length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist registerViewerConfigFile(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V
    .registers 6
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;
    .param p2, "viewerConfigFile"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    .local v0, "count":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method private blacklist toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "enabled"    # Z
    .param p3, "groups"    # [Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "clientToGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/protolog/IProtoLogClient;Ljava/util/Set<Ljava/lang/String;>;>;"
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_70

    aget-object v4, p3, v3

    .line 259
    .local v4, "group":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 261
    .local v5, "clients":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/protolog/IProtoLogClient;>;"
    if-nez v5, :cond_4b

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to toggle log to logcat for group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with no registered clients. This is a no-op."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "warning":Ljava/lang/String;
    const-string v7, "ProtoLogConfigurationService"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    goto :goto_6d

    .line 270
    .end local v6    # "warning":Ljava/lang/String;
    :cond_4b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/protolog/IProtoLogClient;

    .line 271
    .local v7, "client":Lcom/android/internal/protolog/IProtoLogClient;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v7    # "client":Lcom/android/internal/protolog/IProtoLogClient;
    goto :goto_4f

    .line 258
    .end local v4    # "group":Ljava/lang/String;
    .end local v5    # "clients":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/protolog/IProtoLogClient;>;"
    :cond_6d
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 276
    :cond_70
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/IProtoLogClient;

    .line 278
    .local v3, "client":Lcom/android/internal/protolog/IProtoLogClient;
    :try_start_84
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 279
    .local v4, "clientGroups":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggling logcat logging for client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/protolog/IProtoLogClient;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for groups: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    .line 281
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    invoke-interface {v3, p2, v4}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    .line 283
    const-string v5, "- Done"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_d4} :catch_d6

    .line 288
    .end local v4    # "clientGroups":[Ljava/lang/String;
    nop

    .line 289
    .end local v3    # "client":Lcom/android/internal/protolog/IProtoLogClient;
    goto :goto_78

    .line 284
    .restart local v3    # "client":Lcom/android/internal/protolog/IProtoLogClient;
    :catch_d6
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "- Failed"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Failed to toggle logcat status for groups on client"

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 291
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "client":Lcom/android/internal/protolog/IProtoLogClient;
    :cond_e4
    array-length v1, p3

    :goto_e5
    if-ge v2, v1, :cond_f5

    aget-object v3, p3, v2

    .line 292
    .local v3, "group":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v3    # "group":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    .line 294
    :cond_f5
    return-void
.end method

.method private static blacklist writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p0, "pis"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "os"    # Landroid/util/proto/ProtoOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 338
    .local v2, "inGroupToken":J
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 340
    .local v0, "outGroupToken":J
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5f

    .line 341
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_66

    .line 355
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 356
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :pswitch_38
    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 353
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_d

    .line 347
    :pswitch_45
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 349
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_d

    .line 343
    :pswitch_52
    const-wide v4, 0x10d00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    .line 344
    .local v6, "id":I
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 345
    .end local v6    # "id":I
    goto :goto_d

    .line 360
    :cond_5f
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 361
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 362
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method private static blacklist writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 10
    .param p0, "pis"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "os"    # Landroid/util/proto/ProtoOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 367
    .local v2, "inMessageToken":J
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 369
    .local v0, "outMessagesToken":J
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7a

    .line 370
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    .line 378
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected field id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :pswitch_38
    const-wide v4, 0x10900000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_d

    .line 375
    :pswitch_45
    const-wide v4, 0x10d00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d

    .line 374
    :pswitch_52
    const-wide v4, 0x10e00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d

    .line 373
    :pswitch_5f
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_d

    .line 371
    :pswitch_6c
    nop

    .line 372
    const-wide v4, 0x10600000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 371
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_d

    .line 383
    :cond_7a
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 384
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 385
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_5f
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public varargs blacklist disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "groups"    # [Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public varargs blacklist enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "groups"    # [Ljava/lang/String;

    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public blacklist getGroups()[Ljava/lang/String;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isLoggingToLogcat(Ljava/lang/String;)Z
    .registers 6
    .param p1, "group"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 209
    .local v0, "isLoggingToLogcat":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 214
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 210
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to get logcat logging status of non-registered group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/internal/protolog/ProtoLogCommandHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V

    .line 169
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v2, "in":Ljava/io/FileDescriptor;
    .local v3, "out":Ljava/io/FileDescriptor;
    .local v4, "err":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    .local v6, "callback":Landroid/os/ShellCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 170
    return-void
.end method

.method public blacklist registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    .registers 6
    .param p1, "client"    # Lcom/android/internal/protolog/IProtoLogClient;
    .param p2, "args"    # Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Lcom/android/internal/protolog/IProtoLogClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 156
    iget-object v0, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    .line 157
    .local v0, "viewerConfigFile":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerViewerConfigFile(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V

    .line 161
    :cond_14
    iget-object v1, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerGroups(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V

    .line 162
    return-void
.end method
