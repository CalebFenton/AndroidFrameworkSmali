.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$TerribleFailure;,
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$ImmediateLogWriter;,
        Landroid/util/Log$PreloadHolder;,
        Landroid/util/Log$Level;
    }
.end annotation


# static fields
.field public static final whitelist ASSERT:I = 0x7

.field public static final whitelist DEBUG:I = 0x3

.field public static final whitelist ERROR:I = 0x6

.field public static final whitelist INFO:I = 0x4

.field public static final greylist-max-o LOG_ID_CRASH:I = 0x4

.field public static final greylist-max-o LOG_ID_EVENTS:I = 0x2

.field public static final greylist-max-o LOG_ID_MAIN:I = 0x0

.field public static final greylist-max-o LOG_ID_RADIO:I = 0x1

.field public static final greylist-max-o LOG_ID_SYSTEM:I = 0x3

.field public static final whitelist VERBOSE:I = 0x2

.field public static final whitelist WARN:I = 0x5

.field private static greylist-max-o sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogger_entry_max_payload_native()I
    .registers 1

    invoke-static {}, Landroid/util/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 378
    const-string v0, ""

    if-nez p0, :cond_5

    .line 379
    return-object v0

    .line 384
    :cond_5
    move-object v1, p0

    .line 385
    .local v1, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v1, :cond_12

    .line 386
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    .line 387
    return-object v0

    .line 389
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 392
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 393
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 394
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 395
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static native whitelist isLoggable(Ljava/lang/String;I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist logToRadioBuffer(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 449
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native greylist-max-o logger_entry_max_payload_native()I
.end method

.method public static whitelist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native greylist println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static greylist-max-o printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 10
    .param p0, "bufID"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 468
    new-instance v0, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 473
    .local v0, "logWriter":Landroid/util/Log$ImmediateLogWriter;
    sget v1, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v1, v1, -0x2

    .line 475
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x20

    .line 478
    .local v1, "bufferSize":I
    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 480
    new-instance v2, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 482
    .local v2, "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    invoke-virtual {v2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 484
    if-eqz p4, :cond_40

    .line 487
    move-object v3, p4

    .line 488
    .local v3, "t":Ljava/lang/Throwable;
    :goto_25
    if-eqz v3, :cond_3b

    .line 489
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_2c

    .line 490
    goto :goto_3b

    .line 492
    :cond_2c
    instance-of v4, v3, Landroid/os/DeadSystemException;

    if-eqz v4, :cond_36

    .line 493
    const-string v4, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 495
    goto :goto_3b

    .line 497
    :cond_36
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_25

    .line 499
    :cond_3b
    :goto_3b
    if-nez v3, :cond_40

    .line 500
    invoke-virtual {p4, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 504
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_40
    invoke-virtual {v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 506
    invoke-virtual {v0}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result v3

    return v3
.end method

.method public static greylist-max-o setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .registers 3
    .param p0, "handler"    # Landroid/util/Log$TerribleFailureHandler;

    .line 361
    if-eqz p0, :cond_7

    .line 364
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 365
    .local v0, "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 366
    return-object v0

    .line 362
    .end local v0    # "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 263
    const/4 v0, 0x5

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, p1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static greylist wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .registers 9
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    .line 338
    new-instance v0, Landroid/util/Log$TerribleFailure;

    invoke-direct {v0, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    if-eqz p4, :cond_9

    move-object v1, v0

    goto :goto_a

    :cond_9
    move-object v1, p3

    :goto_a
    const/4 v2, 0x6

    invoke-static {p0, v2, p1, p2, v1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 343
    .local v1, "bytes":I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p1, v0, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 344
    return v1
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 300
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "msg":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 332
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "tr":Ljava/lang/Throwable;
    .local v1, "tag":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method public static whitelist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "tr":Ljava/lang/Throwable;
    .local v1, "tag":Ljava/lang/String;
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method

.method static greylist-max-o wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    .line 348
    new-instance v0, Landroid/util/Log$TerribleFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    sget-object v1, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v1, p1, v0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 350
    return-void
.end method

.method public static greylist-max-o wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 309
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "msg":Ljava/lang/String;
    .local v1, "tag":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result p0

    return p0
.end method
