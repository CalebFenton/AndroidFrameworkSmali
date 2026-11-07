.class public Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupConfig"
.end annotation


# instance fields
.field public final blacklist collectStackTrace:Z

.field public final blacklist logFrom:Lcom/android/internal/protolog/common/LogLevel;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/common/LogLevel;Z)V
    .registers 3
    .param p1, "logFromLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "collectStackTrace"    # Z

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 276
    iput-boolean p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    .line 277
    return-void
.end method
