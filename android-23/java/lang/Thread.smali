.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$ParkState;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private final interruptActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field localValues:Ljava/lang/ThreadLocal$Values;

.field private final lock:Ljava/lang/Object;

.field volatile name:Ljava/lang/String;

.field private volatile nativePeer:J

.field private parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    sput v0, Ljava/lang/Thread;->count:I

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 199
    const-wide/16 v4, 0x0

    #@1a
    move-object v0, p0

    #@1b
    move-object v2, v1

    #@1c
    move-object v3, v1

    #@1d
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@20
    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 215
    const-wide/16 v4, 0x0

    #@1a
    move-object v0, p0

    #@1b
    move-object v2, p1

    #@1c
    move-object v3, v1

    #@1d
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@20
    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 233
    if-nez p2, :cond_0

    #@1a
    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "threadName == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 237
    :cond_0
    const-wide/16 v4, 0x0

    #@25
    move-object v0, p0

    #@26
    move-object v2, p1

    #@27
    move-object v3, p2

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "threadName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 253
    if-nez p1, :cond_0

    #@1a
    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "threadName == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 257
    :cond_0
    const-wide/16 v4, 0x0

    #@25
    move-object v0, p0

    #@26
    move-object v2, v1

    #@27
    move-object v3, p1

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@a
    .line 177
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@d
    .line 180
    const/4 v0, 0x1

    #@e
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@10
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@17
    .line 277
    const-wide/16 v4, 0x0

    #@19
    const/4 v3, 0x0

    #@1a
    move-object v0, p0

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@20
    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@a
    .line 177
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@d
    .line 180
    const/4 v0, 0x1

    #@e
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@10
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@17
    .line 297
    if-nez p3, :cond_0

    #@19
    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v1, "threadName == null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 301
    :cond_0
    const-wide/16 v4, 0x0

    #@24
    move-object v0, p0

    #@25
    move-object v1, p1

    #@26
    move-object v2, p2

    #@27
    move-object v3, p3

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 2
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@a
    .line 177
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@d
    .line 180
    const/4 v0, 0x1

    #@e
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@10
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@17
    .line 347
    if-nez p3, :cond_0

    #@19
    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v1, "threadName == null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 350
    :cond_0
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@25
    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "threadName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 318
    if-nez p2, :cond_0

    #@1a
    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "threadName == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 322
    :cond_0
    const-wide/16 v4, 0x0

    #@25
    move-object v0, p0

    #@26
    move-object v1, p1

    #@27
    move-object v3, p2

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    .line 317
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@b
    .line 177
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@e
    .line 180
    const/4 v0, 0x1

    #@f
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@11
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@18
    .line 361
    const-class v1, Ljava/lang/Thread;

    #@1a
    monitor-enter v1

    #@1b
    .line 362
    :try_start_0
    sget v0, Ljava/lang/Thread;->count:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    sput v0, Ljava/lang/Thread;->count:I

    #@21
    int-to-long v2, v0

    #@22
    iput-wide v2, p0, Ljava/lang/Thread;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 365
    if-nez p2, :cond_0

    #@27
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "Thread-"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    #@35
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@3f
    .line 371
    :goto_0
    if-nez p1, :cond_1

    #@41
    .line 372
    new-instance v0, Ljava/lang/InternalError;

    #@43
    const-string/jumbo v1, "group == null"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 361
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v1

    #@4c
    throw v0

    #@4d
    .line 368
    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@4f
    goto :goto_0

    #@50
    .line 375
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@52
    .line 377
    iput-object v4, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@54
    .line 378
    const-wide/16 v0, 0x0

    #@56
    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    #@58
    .line 379
    iput p3, p0, Ljava/lang/Thread;->priority:I

    #@5a
    .line 380
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    #@5c
    .line 383
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@5e
    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    #@61
    .line 360
    return-void
.end method

.method public static activeCount()I
    .locals 1

    #@0
    .prologue
    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private checkNotStarted()V
    .locals 2

    #@0
    .prologue
    .line 848
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 849
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@6
    const-string/jumbo v1, "Thread already started"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 847
    :cond_0
    return-void
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    #@0
    .prologue
    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "currentThread":Ljava/lang/Thread;
    if-nez p1, :cond_0

    #@6
    .line 405
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@9
    move-result-object p1

    #@a
    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 409
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    #@12
    const-string/jumbo v2, "Group already destroyed"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 412
    :cond_1
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@1b
    .line 414
    const-class v2, Ljava/lang/Thread;

    #@1d
    monitor-enter v2

    #@1e
    .line 415
    :try_start_0
    sget v1, Ljava/lang/Thread;->count:I

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    sput v1, Ljava/lang/Thread;->count:I

    #@24
    int-to-long v4, v1

    #@25
    iput-wide v4, p0, Ljava/lang/Thread;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v2

    #@28
    .line 418
    if-nez p3, :cond_3

    #@2a
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Thread-"

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-wide v2, p0, Ljava/lang/Thread;->id:J

    #@38
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@42
    .line 424
    :goto_0
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@44
    .line 425
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    #@46
    .line 427
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    #@49
    move-result v1

    #@4a
    iput v1, p0, Ljava/lang/Thread;->priority:I

    #@4c
    .line 429
    iget-object v1, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@4e
    iput-object v1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@50
    .line 432
    iget-object v1, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    #@52
    if-eqz v1, :cond_2

    #@54
    .line 433
    new-instance v1, Ljava/lang/ThreadLocal$Values;

    #@56
    iget-object v2, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    #@58
    invoke-direct {v1, v2}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    #@5b
    iput-object v1, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    #@5d
    .line 437
    :cond_2
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@5f
    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    #@62
    .line 402
    return-void

    #@63
    .line 414
    :catchall_0
    move-exception v1

    #@64
    monitor-exit v2

    #@65
    throw v1

    #@66
    .line 421
    :cond_3
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@68
    goto :goto_0
.end method

.method public static native currentThread()Ljava/lang/Thread;
.end method

.method public static dumpStack()V
    .locals 2

    #@0
    .prologue
    .line 490
    new-instance v0, Ljava/lang/Throwable;

    #@2
    const-string/jumbo v1, "stack dump"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@b
    .line 489
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 2
    .param p0, "threads"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 505
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 516
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@7
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    #@a
    move-result v0

    #@b
    .line 517
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    #@d
    add-int/2addr v4, v0

    #@e
    new-array v3, v4, [Ljava/lang/Thread;

    #@10
    .line 520
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@12
    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    #@15
    move-result v0

    #@16
    .line 521
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@19
    .line 522
    aget-object v4, v3, v1

    #@1b
    aget-object v5, v3, v1

    #@1d
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@20
    move-result-object v5

    #@21
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 521
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 525
    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 547
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static native interrupted()Z
.end method

.method private static native nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native nativeGetStatus(Z)I
.end method

.method private native nativeHoldsLock(Ljava/lang/Object;)Z
.end method

.method private native nativeInterrupt()V
.end method

.method private native nativeSetName(Ljava/lang/String;)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    #@0
    .prologue
    .line 861
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    .line 860
    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 985
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    #@4
    .line 984
    return-void
.end method

.method public static sleep(JI)V
    .locals 18
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1003
    const-wide/16 v14, 0x0

    #@2
    cmp-long v9, p0, v14

    #@4
    if-gez v9, :cond_0

    #@6
    .line 1004
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v14, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v15, "millis < 0: "

    #@10
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v14

    #@14
    move-wide/from16 v0, p0

    #@16
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v14

    #@1a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v14

    #@1e
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v9

    #@22
    .line 1006
    :cond_0
    if-gez p2, :cond_1

    #@24
    .line 1007
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v14, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v15, "nanos < 0: "

    #@2e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v14

    #@32
    move/from16 v0, p2

    #@34
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v9

    #@40
    .line 1009
    :cond_1
    const v9, 0xf423f

    #@43
    move/from16 v0, p2

    #@45
    if-le v0, v9, :cond_2

    #@47
    .line 1010
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v14, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v15, "nanos > 999999: "

    #@51
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v14

    #@55
    move/from16 v0, p2

    #@57
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v14

    #@5f
    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v9

    #@63
    .line 1015
    :cond_2
    const-wide/16 v14, 0x0

    #@65
    cmp-long v9, p0, v14

    #@67
    if-nez v9, :cond_4

    #@69
    if-nez p2, :cond_4

    #@6b
    .line 1017
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_3

    #@71
    .line 1018
    new-instance v9, Ljava/lang/InterruptedException;

    #@73
    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    #@76
    throw v9

    #@77
    .line 1020
    :cond_3
    return-void

    #@78
    .line 1023
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7b
    move-result-wide v12

    #@7c
    .line 1024
    .local v12, "start":J
    const-wide/32 v14, 0xf4240

    #@7f
    mul-long v14, v14, p0

    #@81
    move/from16 v0, p2

    #@83
    int-to-long v0, v0

    #@84
    move-wide/from16 v16, v0

    #@86
    add-long v4, v14, v16

    #@88
    .line 1026
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8b
    move-result-object v9

    #@8c
    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@8e
    .line 1029
    .local v8, "lock":Ljava/lang/Object;
    monitor-enter v8

    #@8f
    .line 1031
    :goto_0
    :try_start_0
    move-wide/from16 v0, p0

    #@91
    move/from16 v2, p2

    #@93
    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    #@96
    .line 1033
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    move-result-wide v10

    #@9a
    .line 1034
    .local v10, "now":J
    sub-long v6, v10, v12

    #@9c
    .line 1036
    .local v6, "elapsed":J
    cmp-long v9, v6, v4

    #@9e
    if-ltz v9, :cond_5

    #@a0
    monitor-exit v8

    #@a1
    .line 1002
    return-void

    #@a2
    .line 1040
    :cond_5
    sub-long/2addr v4, v6

    #@a3
    .line 1041
    move-wide v12, v10

    #@a4
    .line 1042
    const-wide/32 v14, 0xf4240

    #@a7
    :try_start_1
    div-long p0, v4, v14

    #@a9
    .line 1043
    const-wide/32 v14, 0xf4240

    #@ac
    rem-long v14, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ae
    long-to-int v0, v14

    #@af
    move/from16 p2, v0

    #@b1
    goto :goto_0

    #@b2
    .line 1029
    .end local v6    # "elapsed":J
    .end local v10    # "now":J
    :catchall_0
    move-exception v9

    #@b3
    monitor-exit v8

    #@b4
    throw v9
.end method

.method private static native sleep(Ljava/lang/Object;JI)V
.end method

.method public static native yield()V
.end method


# virtual methods
.method public final checkAccess()V
    .locals 0

    #@0
    .prologue
    .line 453
    return-void
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getId()J
    .locals 2

    #@0
    .prologue
    .line 559
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    #@2
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    #@0
    .prologue
    .line 573
    iget v0, p0, Ljava/lang/Thread;->priority:I

    #@2
    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    #@0
    .prologue
    .line 580
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    #@3
    move-result-object v0

    #@4
    .line 581
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    #@9
    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 2

    #@0
    .prologue
    .line 591
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    #@3
    move-result-object v0

    #@4
    iget-boolean v1, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@6
    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    #@9
    move-result v1

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    #@0
    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 604
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 606
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@c
    return-object v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 619
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@6
    return-object v0

    #@7
    .line 621
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@9
    return-object v0
.end method

.method public interrupt()V
    .locals 3

    #@0
    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    #@3
    .line 655
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@5
    monitor-enter v2

    #@6
    .line 656
    :try_start_0
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@10
    .line 657
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Runnable;

    #@18
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 656
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    :cond_0
    monitor-exit v2

    #@1f
    .line 649
    return-void

    #@20
    .line 655
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public final isAlive()Z
    .locals 4

    #@0
    .prologue
    .line 687
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public final isDaemon()Z
    .locals 1

    #@0
    .prologue
    .line 697
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    #@2
    return v0
.end method

.method public native isInterrupted()Z
.end method

.method public final join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 723
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 724
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    goto :goto_0

    #@f
    .line 722
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 721
    return-void
.end method

.method public final join(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    #@4
    .line 743
    return-void
.end method

.method public final join(JI)V
    .locals 21
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    const-wide/16 v14, 0x0

    #@2
    cmp-long v14, p1, v14

    #@4
    if-ltz v14, :cond_0

    #@6
    if-gez p3, :cond_1

    #@8
    .line 764
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v15, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v16, "bad timeout: millis="

    #@12
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v15

    #@16
    move-wide/from16 v0, p1

    #@18
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v15

    #@1c
    const-string/jumbo v16, ",nanos="

    #@1f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v15

    #@23
    move/from16 v0, p3

    #@25
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v15

    #@29
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v15

    #@2d
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v14

    #@31
    .line 763
    :cond_1
    const v14, 0xf4240

    #@34
    move/from16 v0, p3

    #@36
    if-ge v0, v14, :cond_0

    #@38
    .line 768
    move/from16 v0, p3

    #@3a
    int-to-long v14, v0

    #@3b
    const-wide v16, 0x7fffffffffffffffL

    #@40
    sub-long v14, v16, v14

    #@42
    const-wide/32 v16, 0xf4240

    #@45
    div-long v14, v14, v16

    #@47
    cmp-long v14, p1, v14

    #@49
    if-ltz v14, :cond_2

    #@4b
    const/4 v5, 0x1

    #@4c
    .line 769
    .local v5, "overflow":Z
    :goto_0
    move/from16 v0, p3

    #@4e
    int-to-long v14, v0

    #@4f
    or-long v14, v14, p1

    #@51
    const-wide/16 v16, 0x0

    #@53
    cmp-long v14, v14, v16

    #@55
    if-nez v14, :cond_3

    #@57
    const/4 v4, 0x1

    #@58
    .line 770
    .local v4, "forever":Z
    :goto_1
    or-int v14, v4, v5

    #@5a
    if-eqz v14, :cond_4

    #@5c
    .line 771
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->join()V

    #@5f
    .line 772
    return-void

    #@60
    .line 768
    .end local v4    # "forever":Z
    .end local v5    # "overflow":Z
    :cond_2
    const/4 v5, 0x0

    #@61
    .restart local v5    # "overflow":Z
    goto :goto_0

    #@62
    .line 769
    :cond_3
    const/4 v4, 0x0

    #@63
    .restart local v4    # "forever":Z
    goto :goto_1

    #@64
    .line 775
    :cond_4
    move-object/from16 v0, p0

    #@66
    iget-object v15, v0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@68
    monitor-enter v15

    #@69
    .line 776
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    move-result v14

    #@6d
    if-nez v14, :cond_5

    #@6f
    monitor-exit v15

    #@70
    .line 777
    return-void

    #@71
    .line 781
    :cond_5
    const-wide/32 v16, 0xf4240

    #@74
    mul-long v16, v16, p1

    #@76
    move/from16 v0, p3

    #@78
    int-to-long v0, v0

    #@79
    move-wide/from16 v18, v0

    #@7b
    add-long v10, v16, v18

    #@7d
    .line 784
    .local v10, "nanosToWait":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@80
    move-result-wide v12

    #@81
    .line 786
    .local v12, "start":J
    :goto_2
    move-object/from16 v0, p0

    #@83
    iget-object v14, v0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@85
    move-wide/from16 v0, p1

    #@87
    move/from16 v2, p3

    #@89
    invoke-virtual {v14, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    #@8c
    .line 787
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    move-result v14

    #@90
    if-nez v14, :cond_7

    #@92
    :cond_6
    monitor-exit v15

    #@93
    .line 762
    return-void

    #@94
    .line 790
    :cond_7
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@97
    move-result-wide v16

    #@98
    sub-long v6, v16, v12

    #@9a
    .line 791
    .local v6, "nanosElapsed":J
    sub-long v8, v10, v6

    #@9c
    .line 792
    .local v8, "nanosRemaining":J
    const-wide/16 v16, 0x0

    #@9e
    cmp-long v14, v8, v16

    #@a0
    if-lez v14, :cond_6

    #@a2
    .line 795
    const-wide/32 v16, 0xf4240

    #@a5
    div-long p1, v8, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a7
    .line 796
    const-wide/32 v16, 0xf4240

    #@aa
    mul-long v16, v16, p1

    #@ac
    sub-long v16, v8, v16

    #@ae
    move-wide/from16 v0, v16

    #@b0
    long-to-int v0, v0

    #@b1
    move/from16 p3, v0

    #@b3
    goto :goto_2

    #@b4
    .line 775
    .end local v6    # "nanosElapsed":J
    .end local v8    # "nanosRemaining":J
    .end local v10    # "nanosToWait":J
    .end local v12    # "start":J
    :catchall_0
    move-exception v14

    #@b5
    monitor-exit v15

    #@b6
    throw v14
.end method

.method public final parkFor$(J)V
    .locals 9
    .param p1, "nanos"    # J

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 1208
    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 1209
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 1236
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    const-string/jumbo v5, "Attempt to repark"

    #@e
    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1208
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v4

    #@14
    throw v1

    #@15
    .line 1211
    :pswitch_0
    const/4 v1, 0x1

    #@16
    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v4

    #@19
    .line 1207
    return-void

    #@1a
    .line 1215
    :pswitch_1
    const-wide/32 v6, 0xf4240

    #@1d
    :try_start_2
    div-long v2, p1, v6

    #@1f
    .line 1216
    .local v2, "millis":J
    const-wide/32 v6, 0xf4240

    #@22
    rem-long/2addr p1, v6

    #@23
    .line 1218
    const/4 v1, 0x3

    #@24
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 1220
    :try_start_3
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@28
    long-to-int v5, p1

    #@29
    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c
    .line 1229
    :try_start_4
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@2e
    if-ne v1, v8, :cond_0

    #@30
    .line 1230
    const/4 v1, 0x1

    #@31
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 1221
    :catch_0
    move-exception v0

    #@35
    .line 1222
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@38
    .line 1229
    :try_start_6
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    #@3a
    if-ne v1, v8, :cond_0

    #@3c
    .line 1230
    const/4 v1, 0x1

    #@3d
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    #@3f
    goto :goto_0

    #@40
    .line 1223
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    #@41
    .line 1229
    iget v5, p0, Ljava/lang/Thread;->parkState:I

    #@43
    if-ne v5, v8, :cond_1

    #@45
    .line 1230
    const/4 v5, 0x1

    #@46
    iput v5, p0, Ljava/lang/Thread;->parkState:I

    #@48
    .line 1223
    :cond_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@49
    .line 1209
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parkUntil$(J)V
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1264
    iget-object v3, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1279
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v4

    #@7
    sub-long v0, p1, v4

    #@9
    .line 1281
    .local v0, "delayMillis":J
    const-wide/16 v4, 0x0

    #@b
    cmp-long v2, v0, v4

    #@d
    if-gtz v2, :cond_0

    #@f
    .line 1282
    const/4 v2, 0x1

    #@10
    iput v2, p0, Ljava/lang/Thread;->parkState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v3

    #@13
    .line 1263
    return-void

    #@14
    .line 1284
    :cond_0
    const-wide/32 v4, 0xf4240

    #@17
    mul-long/2addr v4, v0

    #@18
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->parkFor$(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 1264
    .end local v0    # "delayMillis":J
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method public final popInterruptAction$(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 894
    iget-object v2, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@2
    monitor-enter v2

    #@3
    .line 895
    :try_start_0
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@5
    iget-object v3, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Runnable;

    #@13
    .line 896
    .local v0, "removed":Ljava/lang/Runnable;
    if-eq p1, v0, :cond_0

    #@15
    .line 897
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Expected "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " but was "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 894
    .end local v0    # "removed":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1

    #@3d
    .restart local v0    # "removed":Ljava/lang/Runnable;
    :cond_0
    monitor-exit v2

    #@3e
    .line 893
    return-void
.end method

.method public final pushInterruptAction$(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "interruptAction"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 876
    iget-object v1, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 877
    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->interruptActions:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 880
    if-eqz p1, :cond_0

    #@b
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 881
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@14
    .line 875
    :cond_0
    return-void

    #@15
    .line 876
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 818
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    #@6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@9
    .line 816
    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 829
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    #@2
    .line 828
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 4
    .param p1, "isDaemon"    # Z

    #@0
    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    #@3
    .line 842
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    .line 843
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    #@d
    .line 839
    :cond_0
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 909
    if-nez p1, :cond_0

    #@2
    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "threadName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 914
    :cond_0
    monitor-enter p0

    #@c
    .line 915
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@e
    .line 917
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 918
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 908
    return-void

    #@19
    .line 914
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public final setPriority(I)V
    .locals 3
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 938
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/16 v0, 0xa

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Priority out of range: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 942
    :cond_1
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@23
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@26
    move-result v0

    #@27
    if-le p1, v0, :cond_2

    #@29
    .line 943
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@2b
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@2e
    move-result p1

    #@2f
    .line 948
    :cond_2
    monitor-enter p0

    #@30
    .line 949
    :try_start_0
    iput p1, p0, Ljava/lang/Thread;->priority:I

    #@32
    .line 951
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 952
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :cond_3
    monitor-exit p0

    #@3c
    .line 937
    return-void

    #@3d
    .line 948
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit p0

    #@3f
    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    #@0
    .prologue
    .line 969
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    .line 968
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1059
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Thread;->checkNotStarted()V

    #@4
    .line 1061
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    #@7
    .line 1063
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    #@9
    iget-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    #@b
    invoke-static {p0, v0, v1, v2}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 1058
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1078
    new-instance v0, Ljava/lang/ThreadDeath;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    #@8
    .line 1077
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1088
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1097
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Thread["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ","

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Ljava/lang/Thread;->priority:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ","

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    #@28
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, "]"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public final unpark$()V
    .locals 2

    #@0
    .prologue
    .line 1162
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1163
    :try_start_0
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1178
    const/4 v0, 0x1

    #@9
    iput v0, p0, Ljava/lang/Thread;->parkState:I

    #@b
    .line 1179
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :goto_0
    :pswitch_0
    monitor-exit v1

    #@11
    .line 1161
    return-void

    #@12
    .line 1174
    :pswitch_1
    const/4 v0, 0x2

    #@13
    :try_start_1
    iput v0, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 1162
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0

    #@19
    .line 1163
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
