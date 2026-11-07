.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$Daemon;,
        Ljava/lang/Daemons$HeapTaskDaemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    }
.end annotation


# static fields
.field private static final blacklist DAEMONS:[Ljava/lang/Daemons$Daemon;

.field public static final blacklist FD_OOM_MESSAGE:Ljava/lang/String; = "Ignoring unexpected OOME in FinalizerDaemon"

.field private static greylist MAX_FINALIZE_NANOS:J = 0x0L

.field private static final greylist-max-o NANOS_PER_MILLI:I = 0xf4240

.field public static final blacklist RQD_OOM_MESSAGE:Ljava/lang/String; = "Ignoring unexpected OOME in ReferenceQueueDaemon"

.field private static blacklist postZygoteFork:Z

.field private static blacklist zygoteStartLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetpostZygoteFork()Z
    .registers 1

    sget-boolean v0, Ljava/lang/Daemons;->postZygoteFork:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetzygoteStartLatch()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    sget-object v0, Ljava/lang/Daemons;->zygoteStartLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputMAX_FINALIZE_NANOS(J)V
    .registers 2

    sput-wide p0, Ljava/lang/Daemons;->MAX_FINALIZE_NANOS:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 57
    const-wide v0, 0x2540be400L

    sput-wide v0, Ljava/lang/Daemons;->MAX_FINALIZE_NANOS:J

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Daemons$Daemon;

    invoke-static {}, Ljava/lang/Daemons$HeapTaskDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$HeapTaskDaemon;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v3

    aput-object v3, v0, v1

    sput-object v0, Ljava/lang/Daemons;->DAEMONS:[Ljava/lang/Daemons$Daemon;

    .line 67
    sput-boolean v2, Ljava/lang/Daemons;->postZygoteFork:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o requestGC()V
    .registers 1

    .line 738
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 739
    return-void
.end method

.method public static greylist requestHeapTrim()V
    .registers 1

    .line 732
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestHeapTrim()V

    .line 733
    return-void
.end method

.method public static greylist start()V
    .registers 4

    .line 71
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/lang/Daemons;->DAEMONS:[Ljava/lang/Daemons$Daemon;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Ljava/lang/Daemons;->zygoteStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 72
    sget-object v0, Ljava/lang/Daemons;->DAEMONS:[Ljava/lang/Daemons$Daemon;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 73
    .local v3, "daemon":Ljava/lang/Daemons$Daemon;
    invoke-virtual {v3}, Ljava/lang/Daemons$Daemon;->start()V

    .line 72
    .end local v3    # "daemon":Ljava/lang/Daemons$Daemon;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 75
    :cond_18
    return-void
.end method

.method public static greylist-max-o startPostZygoteFork()V
    .registers 1

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Ljava/lang/Daemons;->postZygoteFork:Z

    .line 79
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 80
    return-void
.end method

.method public static greylist stop()V
    .registers 4

    .line 84
    sget-object v0, Ljava/lang/Daemons;->DAEMONS:[Ljava/lang/Daemons$Daemon;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 85
    .local v3, "daemon":Ljava/lang/Daemons$Daemon;
    invoke-virtual {v3}, Ljava/lang/Daemons$Daemon;->stop()V

    .line 84
    .end local v3    # "daemon":Ljava/lang/Daemons$Daemon;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 87
    :cond_e
    return-void
.end method

.method private static blacklist waitForDaemonStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    sget-object v0, Ljava/lang/Daemons;->zygoteStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 91
    return-void
.end method
