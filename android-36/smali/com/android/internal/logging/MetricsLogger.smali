.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final greylist-max-o LOGTAG:I = 0x80004

.field public static final greylist-max-o VIEW_UNKNOWN:I

.field private static greylist-max-o sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 189
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 195
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 213
    return-void
.end method

.method public static greylist-max-o action(Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 201
    return-void
.end method

.method public static greylist-max-o action(Landroid/metrics/LogMaker;)V
    .registers 2
    .param p0, "content"    # Landroid/metrics/LogMaker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 207
    return-void
.end method

.method public static greylist-max-o count(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method private static greylist-max-o getLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 52
    :cond_b
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static greylist-max-o hidden(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 169
    return-void
.end method

.method public static greylist-max-o histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method public static greylist-max-o visibility(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 183
    return-void
.end method

.method public static greylist-max-o visibility(Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 176
    return-void
.end method

.method public static greylist-max-o visible(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 163
    return-void
.end method


# virtual methods
.method public greylist-max-o action(I)V
    .registers 4
    .param p1, "category"    # I

    .line 132
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 133
    return-void
.end method

.method public greylist-max-o action(II)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "value"    # I

    .line 139
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 140
    return-void
.end method

.method public greylist-max-o action(ILjava/lang/String;)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 153
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 154
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 157
    return-void
.end method

.method public greylist-max-o action(IZ)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .line 146
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 147
    return-void
.end method

.method public greylist-max-o count(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 73
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x323

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 76
    return-void
.end method

.method public greylist-max-o hidden(I)V
    .registers 4
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 102
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 103
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 106
    return-void
.end method

.method public greylist-max-o histogram(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 81
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x324

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterBucket(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 85
    return-void
.end method

.method protected blacklist saveLog(Landroid/metrics/LogMaker;)V
    .registers 3
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 56
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiMultiAction([Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public greylist-max-o visibility(II)V
    .registers 4
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 126
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 127
    return-void
.end method

.method public greylist-max-o visibility(IZ)V
    .registers 3
    .param p1, "category"    # I
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 113
    if-eqz p2, :cond_6

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    goto :goto_9

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 118
    :goto_9
    return-void
.end method

.method public greylist-max-o visible(I)V
    .registers 4
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 94
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 97
    return-void
.end method

.method public greylist-max-r write(Landroid/metrics/LogMaker;)V
    .registers 3
    .param p1, "content"    # Landroid/metrics/LogMaker;

    .line 65
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_a

    .line 66
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 68
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 69
    return-void
.end method
