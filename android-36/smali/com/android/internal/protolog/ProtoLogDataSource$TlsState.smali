.class public Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlsState"
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 210
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method private blacklist getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    .registers 3
    .param p1, "groupTag"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;
    .registers 3
    .param p1, "groupTag"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method

.method public blacklist getShouldCollectStacktrace(Ljava/lang/String;)Z
    .registers 3
    .param p1, "groupTag"    # Ljava/lang/String;

    .line 228
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    return v0
.end method
