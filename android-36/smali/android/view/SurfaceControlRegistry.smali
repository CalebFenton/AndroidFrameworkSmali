.class public Landroid/view/SurfaceControlRegistry;
.super Ljava/lang/Object;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlRegistry$DefaultReporter;,
        Landroid/view/SurfaceControlRegistry$Reporter;,
        Landroid/view/SurfaceControlRegistry$NoOpRegistry;
    }
.end annotation


# static fields
.field static final blacklist APPLY:Ljava/lang/String; = "apply"

.field private static final blacklist DUMP_LIMIT:I = 0x100

.field private static final blacklist MAX_LAYERS_REPORTING_THRESHOLD:I = 0x400

.field private static final blacklist NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

.field private static final blacklist RESET_REPORTING_THRESHOLD:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlRegistry"

.field static blacklist sCallStackDebuggingEnabled:Z

.field static blacklist sCallStackDebuggingInitialized:Z

.field private static blacklist sCallStackDebuggingMatchCall:Ljava/lang/String;

.field private static blacklist sCallStackDebuggingMatchName:Ljava/lang/String;

.field private static final blacklist sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

.field private static final blacklist sLock:Ljava/lang/Object;

.field static blacklist sLogAllTxCallsOnApply:Z

.field private static volatile blacklist sProcessRegistry:Landroid/view/SurfaceControlRegistry;


# instance fields
.field private blacklist mHasReportedExceedingMaxThreshold:Z

.field private blacklist mMaxLayersReportingThreshold:I

.field private blacklist mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

.field private blacklist mResetReportingThreshold:I

.field private final blacklist mSurfaceControls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 112
    new-instance v0, Landroid/view/SurfaceControlRegistry$NoOpRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/view/SurfaceControlRegistry$DefaultReporter;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControlRegistry$DefaultReporter;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/16 v0, 0x400

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 151
    const/16 v0, 0x100

    iput v0, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 158
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 161
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 162
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry;-><init>()V

    return-void
.end method

.method public static blacklist createProcessInstance(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 208
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_b
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_16

    .line 210
    new-instance v1, Landroid/view/SurfaceControlRegistry;

    invoke-direct {v1}, Landroid/view/SurfaceControlRegistry;-><init>()V

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 212
    :cond_16
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 206
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Expected caller to hold READ_FRAME_BUFFER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist destroyProcessInstance()V
    .registers 2

    .line 220
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-nez v1, :cond_9

    .line 222
    monitor-exit v0

    return-void

    .line 224
    :cond_9
    const/4 v1, 0x0

    sput-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static blacklist dump(IZLjava/io/PrintWriter;)V
    .registers 6
    .param p0, "limit"    # I
    .param p1, "runGc"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 421
    if-eqz p1, :cond_5

    .line 423
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->runGcAndFinalizers()V

    .line 425
    :cond_5
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_8
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_92

    .line 427
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sDefaultReporter:Landroid/view/SurfaceControlRegistry$DefaultReporter;

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    iget-object v2, v2, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, p0, p2}, Landroid/view/SurfaceControlRegistry$DefaultReporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingMatchName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCallStackDebuggingMatchCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sLogAllTxCallsOnApply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_92
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public static blacklist getProcessInstance()Landroid/view/SurfaceControlRegistry;
    .registers 2

    .line 234
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    if-eqz v1, :cond_a

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sProcessRegistry:Landroid/view/SurfaceControlRegistry;

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/view/SurfaceControlRegistry;->NO_OP_REGISTRY:Landroid/view/SurfaceControlRegistry;

    :goto_c
    monitor-exit v0

    return-object v1

    .line 236
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method static final blacklist initializeCallStackDebugging()V
    .registers 2

    .line 292
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_46

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_9

    goto :goto_46

    .line 297
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    .line 298
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    .line 299
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_45

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling transaction call stack debugging: matchCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " logCallsWithApply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_45
    return-void

    .line 294
    :cond_46
    :goto_46
    return-void
.end method

.method static final blacklist isCallStackDebuggingEnabled()Z
    .registers 1

    .line 400
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    return v0
.end method

.method private static blacklist runGcAndFinalizers()V
    .registers 5

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 409
    .local v0, "t":J
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran gc and finalizers ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControlRegistry"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private static blacklist updateCallStackDebuggingParams()V
    .registers 2

    .line 362
    nop

    .line 363
    const-string v0, "persist.wm.debug.sc.tx.log_match_call"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    .line 365
    nop

    .line 366
    const-string v0, "persist.wm.debug.sc.tx.log_match_name"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 368
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    .line 370
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, 0x1

    :goto_39
    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    .line 372
    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 243
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-nez v1, :cond_31

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 246
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    if-lt v1, v2, :cond_31

    .line 249
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 250
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    iget-object v4, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    const/16 v5, 0x100

    invoke-interface {v2, v4, v5, v1}, Landroid/view/SurfaceControlRegistry$Reporter;->onMaxLayersExceeded(Ljava/util/WeakHashMap;ILjava/io/PrintWriter;)V

    .line 251
    iput-boolean v3, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 253
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_31
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method final blacklist checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 12
    .param p1, "call"    # Ljava/lang/String;
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "sc"    # Landroid/view/SurfaceControl;
    .param p4, "details"    # Ljava/lang/String;

    .line 320
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_b

    .line 321
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->updateCallStackDebuggingParams()V

    .line 324
    :cond_b
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-nez v0, :cond_10

    .line 325
    return-void

    .line 328
    :cond_10
    const-string v0, ""

    if-eqz p2, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v0

    .line 329
    .local v1, "txMsg":Ljava/lang/String;
    :goto_34
    if-eqz p3, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "scMsg":Ljava/lang/String;
    :cond_51
    const-string v2, " ("

    if-eqz p4, :cond_79

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_98

    .line 332
    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_98
    nop

    .line 333
    .local v2, "msg":Ljava/lang/String;
    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    const/4 v4, 0x0

    const-string v5, "SurfaceControlRegistry"

    if-eqz v3, :cond_fb

    if-eqz p2, :cond_fb

    .line 334
    const-string v3, "apply"

    if-ne p1, v3, :cond_dd

    .line 336
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    iget-object v3, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v3, :cond_110

    .line 338
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b3
    iget-object v4, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_dc

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .end local v3    # "i":I
    :cond_dc
    goto :goto_110

    .line 342
    :cond_dd
    if-eqz p3, :cond_e3

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_e3
    invoke-virtual {p0, v4, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 344
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object v3, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v3, :cond_110

    .line 346
    iget-object v3, p2, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 351
    :cond_fb
    if-eqz p3, :cond_101

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_101
    invoke-virtual {p0, v4, p1}, Landroid/view/SurfaceControlRegistry;->matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 352
    return-void

    .line 354
    :cond_108
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_110
    :goto_110
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 276
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 279
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final blacklist matchesForCallStackDebugging(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "call"    # Ljava/lang/String;

    .line 380
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 381
    .local v0, "matchCall":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_18

    sget-object v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 383
    return v2

    .line 385
    :cond_18
    sget-object v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 386
    .local v3, "matchName":Z
    if-nez v3, :cond_22

    .line 387
    return v1

    .line 389
    :cond_22
    if-nez p1, :cond_25

    .line 390
    return v2

    .line 392
    :cond_25
    sget-object v4, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v2

    goto :goto_41

    :cond_40
    :goto_40
    nop

    .line 392
    :goto_41
    return v1
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 260
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/SurfaceControlRegistry;->mSurfaceControls:Ljava/util/WeakHashMap;

    .line 263
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    if-gt v1, v2, :cond_19

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 266
    :cond_19
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist setCallStackDebuggingParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "matchName"    # Ljava/lang/String;
    .param p2, "matchCall"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchName:Ljava/lang/String;

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    .line 194
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingMatchCall:Ljava/lang/String;

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    .line 195
    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .registers 8
    .param p1, "maxLayersReportingThreshold"    # I
    .param p2, "resetReportingThreshold"    # I
    .param p3, "reporter"    # Landroid/view/SurfaceControlRegistry$Reporter;

    .line 173
    sget-object v0, Landroid/view/SurfaceControlRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    if-lez p1, :cond_1c

    if-ge p2, p1, :cond_1c

    .line 180
    if-eqz p3, :cond_14

    .line 183
    :try_start_9
    iput p1, p0, Landroid/view/SurfaceControlRegistry;->mMaxLayersReportingThreshold:I

    .line 184
    iput p2, p0, Landroid/view/SurfaceControlRegistry;->mResetReportingThreshold:I

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceControlRegistry;->mHasReportedExceedingMaxThreshold:Z

    .line 186
    iput-object p3, p0, Landroid/view/SurfaceControlRegistry;->mReporter:Landroid/view/SurfaceControlRegistry$Reporter;

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 181
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected non-null reporter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .end local p1    # "maxLayersReportingThreshold":I
    .end local p2    # "resetReportingThreshold":I
    .end local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    throw v1

    .line 176
    .restart local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .restart local p1    # "maxLayersReportingThreshold":I
    .restart local p2    # "resetReportingThreshold":I
    .restart local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected maxLayersReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be > 0 and resetReportingThreshold ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to be < maxLayersReportingThreshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .end local p1    # "maxLayersReportingThreshold":I
    .end local p2    # "resetReportingThreshold":I
    .end local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    throw v1

    .line 187
    .restart local p0    # "this":Landroid/view/SurfaceControlRegistry;
    .restart local p1    # "maxLayersReportingThreshold":I
    .restart local p2    # "resetReportingThreshold":I
    .restart local p3    # "reporter":Landroid/view/SurfaceControlRegistry$Reporter;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v1
.end method
