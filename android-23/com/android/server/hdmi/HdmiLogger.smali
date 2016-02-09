.class final Lcom/android/server/hdmi/HdmiLogger;
.super Ljava/lang/Object;
.source "HdmiLogger.java"


# static fields
.field private static final ERROR_LOG_DURATTION_MILLIS:J = 0x4e20L

.field private static final IS_USER_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "HDMI"

.field private static final sLogger:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/hdmi/HdmiLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWarningTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "user"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    sput-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->IS_USER_BUILD:Z

    #@b
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    #@d
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@10
    sput-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    #@12
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    #@a
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    #@11
    .line 56
    return-void
.end method

.method private static buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p1, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 124
    const-string/jumbo v1, "["

    #@8
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 124
    if-nez p1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 123
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 124
    const-string/jumbo v1, "]:"

    #@16
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 124
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@25
    check-cast v0, Ljava/lang/Integer;

    #@27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v0

    #@2b
    goto :goto_0
.end method

.method static final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 82
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debugInternal(Ljava/lang/String;)V

    #@b
    .line 81
    return-void
.end method

.method private debugInternal(Ljava/lang/String;)V
    .locals 0
    .param p1, "logMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    return-void
.end method

.method static final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 71
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->errorInternal(Ljava/lang/String;)V

    #@b
    .line 70
    return-void
.end method

.method private errorInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    #@2
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 77
    const-string/jumbo v1, "HDMI"

    #@f
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 74
    :cond_0
    return-void
.end method

.method private static getLogger()Lcom/android/server/hdmi/HdmiLogger;
    .locals 2

    #@0
    .prologue
    .line 101
    sget-object v1, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/hdmi/HdmiLogger;

    #@8
    .line 102
    .local v0, "logger":Lcom/android/server/hdmi/HdmiLogger;
    if-nez v0, :cond_0

    #@a
    .line 103
    new-instance v0, Lcom/android/server/hdmi/HdmiLogger;

    #@c
    .end local v0    # "logger":Lcom/android/server/hdmi/HdmiLogger;
    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiLogger;-><init>()V

    #@f
    .line 104
    .restart local v0    # "logger":Lcom/android/server/hdmi/HdmiLogger;
    sget-object v1, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@14
    .line 106
    :cond_0
    return-object v0
.end method

.method private static increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/util/Pair;

    #@6
    .line 131
    .local v0, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    #@8
    .line 132
    new-instance v3, Landroid/util/Pair;

    #@a
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@c
    check-cast v1, Ljava/lang/Long;

    #@e
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@10
    check-cast v2, Ljava/lang/Integer;

    #@12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1f
    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 129
    :cond_0
    return-void
.end method

.method private static shouldLogNow(Landroid/util/Pair;J)Z
    .locals 7
    .param p1, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    #@1
    .line 137
    if-eqz p0, :cond_0

    #@3
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@5
    check-cast v0, Ljava/lang/Long;

    #@7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@a
    move-result-wide v2

    #@b
    sub-long v2, p1, v2

    #@d
    const-wide/16 v4, 0x4e20

    #@f
    cmp-long v0, v2, v4

    #@11
    if-lez v0, :cond_1

    #@13
    :cond_0
    move v0, v1

    #@14
    :goto_0
    return v0

    #@15
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private static final toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 93
    array-length v0, p1

    #@1
    if-lez v0, :cond_0

    #@3
    .line 94
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 96
    :cond_0
    return-object p0
.end method

.method private static updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 111
    .local v0, "curTime":J
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/util/Pair;

    #@a
    .line 112
    .local v3, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {v3, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->shouldLogNow(Landroid/util/Pair;J)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 113
    invoke-static {p1, v3}, Lcom/android/server/hdmi/HdmiLogger;->buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 114
    .local v2, "log":Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    #@16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v5

    #@1a
    const/4 v6, 0x1

    #@1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v6

    #@1f
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@22
    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 115
    return-object v2

    #@26
    .line 117
    .end local v2    # "log":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V

    #@29
    .line 119
    const-string/jumbo v4, ""

    #@2c
    return-object v4
.end method

.method static final varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warningInternal(Ljava/lang/String;)V

    #@b
    .line 59
    return-void
.end method

.method private warningInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    #@2
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 65
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 66
    const-string/jumbo v1, "HDMI"

    #@f
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 63
    :cond_0
    return-void
.end method
