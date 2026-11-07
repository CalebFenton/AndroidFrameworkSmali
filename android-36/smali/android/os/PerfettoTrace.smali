.class public final Landroid/os/PerfettoTrace;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerfettoTrace$Category;,
        Landroid/os/PerfettoTrace$Session;
    }
.end annotation


# static fields
.field private static final blacklist IS_FLAG_ENABLED:Z

.field public static final blacklist MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

.field private static final blacklist PERFETTO_TE_TYPE_COUNTER:I = 0x4

.field private static final blacklist PERFETTO_TE_TYPE_INSTANT:I = 0x3

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_BEGIN:I = 0x1

.field private static final blacklist PERFETTO_TE_TYPE_SLICE_END:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrace"

.field private static final blacklist sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetIS_FLAG_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_start_session(Z[B)J
    .registers 2

    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_start_session(Z[B)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_stop_session(J)[B
    .registers 2

    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_stop_session(J)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->perfettoSdkTracingV2()Z

    move-result v0

    sput-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/os/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Landroid/os/PerfettoTrace$Category;

    const-string/jumbo v1, "mq"

    invoke-direct {v0, v1}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist activateTrigger(Ljava/lang/String;I)V
    .registers 3
    .param p0, "triggerName"    # Ljava/lang/String;
    .param p1, "ttlMs"    # I

    .line 348
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_5

    .line 349
    return-void

    .line 351
    :cond_5
    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_activate_trigger(Ljava/lang/String;I)V

    .line 352
    return-void
.end method

.method public static blacklist begin(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 247
    return-object v0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "value"    # D

    .line 293
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 294
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;DLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "value"    # D
    .param p3, "trackName"    # Ljava/lang/String;

    .line 307
    invoke-static {p0, p1, p2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;D)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "value"    # J

    .line 269
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 270
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public static blacklist counter(Landroid/os/PerfettoTrace$Category;JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "value"    # J
    .param p3, "trackName"    # Ljava/lang/String;

    .line 283
    invoke-static {p0, p1, p2}, Landroid/os/PerfettoTrace;->counter(Landroid/os/PerfettoTrace$Category;J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist end(Landroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;

    .line 258
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 259
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method public static blacklist getFlowId()I
    .registers 1

    .line 314
    sget-object v0, Landroid/os/PerfettoTrace;->sFlowEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static blacklist getGlobalTrackUuid()J
    .registers 2

    .line 321
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static blacklist getProcessTrackUuid()J
    .registers 2

    .line 328
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_7

    .line 329
    const-wide/16 v0, 0x0

    return-wide v0

    .line 331
    :cond_7
    invoke-static {}, Landroid/os/PerfettoTrace;->native_get_process_track_uuid()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getThreadTrackUuid(J)J
    .registers 4
    .param p0, "tid"    # J

    .line 338
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_FLAG_ENABLED:Z

    if-nez v0, :cond_7

    .line 339
    const-wide/16 v0, 0x0

    return-wide v0

    .line 341
    :cond_7
    invoke-static {p0, p1}, Landroid/os/PerfettoTrace;->native_get_thread_track_uuid(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist instant(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4
    .param p0, "category"    # Landroid/os/PerfettoTrace$Category;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Landroid/os/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/os/PerfettoTrackEventExtra;->builder(Z)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 236
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method private static native blacklist native_activate_trigger(Ljava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get_process_track_uuid()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_thread_track_uuid(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_start_session(Z[B)J
.end method

.method private static native blacklist native_stop_session(J)[B
.end method

.method public static blacklist register(Z)V
    .registers 1
    .param p0, "isBackendInProcess"    # Z

    .line 358
    invoke-static {p0}, Landroid/os/PerfettoTrace;->native_register(Z)V

    .line 359
    return-void
.end method

.method public static blacklist registerCategories()V
    .registers 1

    .line 365
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->register()Landroid/os/PerfettoTrace$Category;

    .line 366
    return-void
.end method
