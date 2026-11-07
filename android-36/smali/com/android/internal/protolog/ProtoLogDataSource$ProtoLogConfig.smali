.class public Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtoLogConfig"
.end annotation


# static fields
.field private static final blacklist DEFAULT:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;


# instance fields
.field private final blacklist mDefaultLogFromLevel:Lcom/android/internal/protolog/common/LogLevel;

.field private final blacklist mGroupConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .registers 1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->DEFAULT:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 248
    new-instance v0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;)V

    sput-object v0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->DEFAULT:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;)V
    .registers 3
    .param p1, "defaultLogFromLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p2, "groupConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->mDefaultLogFromLevel:Lcom/android/internal/protolog/common/LogLevel;

    .line 254
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->mGroupConfigs:Ljava/util/Map;

    .line 255
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    .registers 4
    .param p1, "groupTag"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->mGroupConfigs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    return-object v0
.end method

.method public blacklist getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    .registers 4

    .line 262
    new-instance v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->mDefaultLogFromLevel:Lcom/android/internal/protolog/common/LogLevel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Z)V

    return-object v0
.end method

.method public blacklist getGroupTagsWithOverriddenConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->mGroupConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
