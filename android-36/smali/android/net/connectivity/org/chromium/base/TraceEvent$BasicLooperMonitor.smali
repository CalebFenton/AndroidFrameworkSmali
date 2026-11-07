.class Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;
.super Ljava/lang/Object;
.source "TraceEvent.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasicLooperMonitor"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist FILTERED_EVENT_NAME:Ljava/lang/String; = "Looper.dispatch: EVENT_NAME_FILTERED"

.field static final blacklist LOOPER_TASK_PREFIX:Ljava/lang/String; = "Looper.dispatch: "

.field private static final blacklist SHORTEST_LOG_PREFIX_LENGTH:I


# instance fields
.field private blacklist mCurrentTarget:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/net/connectivity/org/chromium/base/TraceEvent;

    .line 58
    const-string v0, "<<<<< Finished to "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->SHORTEST_LOG_PREFIX_LENGTH:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getTarget(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "logLine"    # Ljava/lang/String;

    .line 120
    const/16 v0, 0x28

    sget v1, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->SHORTEST_LOG_PREFIX_LENGTH:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 121
    .local v0, "start":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    move v2, v1

    goto :goto_13

    :cond_d
    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 122
    .local v2, "end":I
    :goto_13
    if-eq v2, v1, :cond_1c

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    const-string v1, ""

    :goto_1e
    return-object v1
.end method

.method private static blacklist getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "logLine"    # Ljava/lang/String;

    .line 127
    const/16 v0, 0x7d

    sget v1, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->SHORTEST_LOG_PREFIX_LENGTH:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 128
    .local v0, "start":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    move v2, v1

    goto :goto_13

    :cond_d
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 129
    .local v2, "end":I
    :goto_13
    if-ne v2, v1, :cond_19

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 132
    :cond_19
    if-eq v0, v1, :cond_22

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    const-string v1, ""

    :goto_24
    return-object v1
.end method

.method static blacklist getTraceEventName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "line"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEventNameFilteringEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    const-string v0, "Looper.dispatch: EVENT_NAME_FILTERED"

    return-object v0

    .line 104
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper.dispatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->getTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist beginHandling(Ljava/lang/String;)V
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    .line 75
    .local v0, "earlyTracingActive":Z
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_28

    .line 78
    :cond_c
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->getTraceEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 80
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->beginToplevel(Ljava/lang/String;)V

    goto :goto_28

    .line 82
    :cond_22
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->begin(Ljava/lang/String;Z)V

    .line 85
    :cond_28
    :goto_28
    return-void
.end method

.method blacklist endHandling(Ljava/lang/String;)V
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    .line 89
    .local v0, "earlyTracingActive":Z
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_24

    :cond_c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 90
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 91
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->endToplevel()V

    goto :goto_24

    .line 93
    :cond_1e
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->end(Ljava/lang/String;Z)V

    .line 96
    :cond_24
    :goto_24
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->mCurrentTarget:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public whitelist println(Ljava/lang/String;)V
    .registers 3
    .param p1, "line"    # Ljava/lang/String;

    .line 63
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->beginHandling(Ljava/lang/String;)V

    goto :goto_10

    .line 66
    :cond_c
    nop

    .line 67
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->endHandling(Ljava/lang/String;)V

    .line 69
    :goto_10
    return-void
.end method
