.class public Landroid/util/TimingsTraceLog;
.super Ljava/lang/Object;
.source "TimingsTraceLog.java"


# static fields
.field private static final greylist-max-o DEBUG_BOOT_TIME:Z

.field private static final blacklist MAX_NESTED_CALLS:I = 0xa


# instance fields
.field private blacklist mCurrentLevel:I

.field private final blacklist mMaxNestedCalls:I

.field private final blacklist mStartNames:[Ljava/lang/String;

.field private final blacklist mStartTimes:[J

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mThreadId:J

.field private final greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/util/TimingsTraceLog;)V
    .registers 4
    .param p1, "other"    # Landroid/util/TimingsTraceLog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 77
    iget-object v0, p1, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    .line 78
    iget-wide v0, p1, Landroid/util/TimingsTraceLog;->mTraceTag:J

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    .line 80
    iget v0, p1, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    .line 81
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    .line 83
    iget v0, p1, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "traceTag"    # J

    .line 56
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;JI)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "traceTag"    # J
    .param p4, "maxNestedCalls"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 61
    iput-object p1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    .line 62
    iput-wide p2, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    .line 64
    iput p4, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    .line 65
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartNamesArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->createAndGetStartTimesArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    .line 67
    return-void
.end method

.method private greylist-max-o assertSameThread()V
    .registers 6

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 140
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    .line 145
    return-void

    .line 141
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance of TimingsTraceLog can only be called from the thread it was created on (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but was from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createAndGetStartNamesArray()[Ljava/lang/String;
    .registers 2

    .line 87
    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private blacklist createAndGetStartTimesArray()[J
    .registers 2

    .line 91
    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    new-array v0, v0, [J

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method


# virtual methods
.method public final blacklist getUnfinishedTracesForDebug()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    if-eqz v0, :cond_22

    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_9

    goto :goto_22

    .line 165
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget v2, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gt v1, v2, :cond_21

    .line 167
    iget-object v2, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 169
    .end local v1    # "i":I
    :cond_21
    return-object v0

    .line 164
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    :goto_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o logDuration(Ljava/lang/String;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 151
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took to complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public greylist-max-o traceBegin(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    .line 100
    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 102
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_d

    return-void

    .line 104
    :cond_d
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    if-lt v0, v1, :cond_40

    .line 105
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not tracing duration of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because already reached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TimingsTraceLog;->mMaxNestedCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " levels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_40
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 111
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aput-object p1, v0, v1

    .line 112
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 113
    return-void
.end method

.method public greylist-max-o traceEnd()V
    .registers 6

    .line 121
    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    .line 122
    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_d

    return-void

    .line 126
    :cond_d
    iget v0, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    if-gez v0, :cond_1a

    .line 127
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "traceEnd called more times than traceBegin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_1a
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartNames:[Ljava/lang/String;

    iget v1, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-object v0, v0, v1

    .line 132
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Landroid/util/TimingsTraceLog;->mStartTimes:[J

    iget v4, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    .line 133
    .local v1, "duration":J
    iget v3, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/util/TimingsTraceLog;->mCurrentLevel:I

    .line 135
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 136
    return-void
.end method
