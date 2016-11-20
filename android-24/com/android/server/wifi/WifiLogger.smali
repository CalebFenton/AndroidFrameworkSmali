.class Lcom/android/server/wifi/WifiLogger;
.super Lcom/android/server/wifi/BaseWifiLogger;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLogger$1;,
        Lcom/android/server/wifi/WifiLogger$BugReport;,
        Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DRIVER_DUMP_SECTION_HEADER:Ljava/lang/String; = "Driver state dump"

.field public static final FIRMWARE_DUMP_SECTION_HEADER:Ljava/lang/String; = "FW Memory dump"

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final RING_BUFFER_BYTE_LIMIT_LARGE:I = 0x100000

.field public static final RING_BUFFER_BYTE_LIMIT_SMALL:I = 0x8000

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiLogger"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private mIsLoggingEventHandlerRegistered:Z

.field private final mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:I

.field private mMaxRingBufferSizeBytes:I

.field private mPacketFatesForLastFailure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation
.end field

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/util/ByteArrayRingBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x4000

    #@2
    const/4 v3, 0x0

    #@3
    .line 88
    const/16 v0, 0xe10

    #@5
    const/16 v1, 0x3c

    #@7
    const/16 v2, 0xa

    #@9
    filled-new-array {v3, v0, v1, v2}, [I

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    #@f
    .line 90
    const/high16 v0, 0x10000

    #@11
    filled-new-array {v3, v4, v4, v0}, [I

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    #@17
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;)V
    .locals 3
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 108
    invoke-direct {p0}, Lcom/android/server/wifi/BaseWifiLogger;-><init>()V

    #@4
    .line 99
    iput v2, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@6
    .line 106
    const v0, 0x8000

    #@9
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    #@b
    .line 352
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    #@11
    .line 351
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@13
    .line 354
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@15
    const/4 v1, 0x4

    #@16
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    #@19
    .line 353
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@1b
    .line 355
    new-instance v0, Ljava/util/HashMap;

    #@1d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@22
    .line 358
    new-instance v0, Lcom/android/server/wifi/WifiLogger$1;

    #@24
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiLogger$1;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    #@27
    .line 357
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@29
    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    .line 112
    iput-object p2, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2d
    .line 113
    iput-object p3, p0, Lcom/android/server/wifi/WifiLogger;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@2f
    .line 114
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    #@31
    .line 110
    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;
    .locals 11
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    #@0
    .prologue
    const/16 v10, 0x7f

    #@2
    .line 502
    new-instance v4, Lcom/android/server/wifi/WifiLogger$BugReport;

    #@4
    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    #@7
    .line 503
    .local v4, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput p1, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    #@9
    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v6

    #@d
    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    #@f
    .line 505
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@12
    move-result-wide v6

    #@13
    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    #@15
    .line 507
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 508
    iget-object v7, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@1b
    const/4 v5, 0x0

    #@1c
    array-length v8, v7

    #@1d
    move v6, v5

    #@1e
    :goto_0
    if-ge v6, v8, :cond_1

    #@20
    aget-object v0, v7, v6

    #@22
    .line 510
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@24
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@26
    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    #@29
    .line 511
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@2b
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@2d
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    #@33
    .line 512
    .local v2, "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    #@36
    move-result v5

    #@37
    new-array v1, v5, [[B

    #@39
    .line 513
    .local v1, "buffers":[[B
    const/4 v3, 0x0

    #@3a
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    #@3d
    move-result v5

    #@3e
    if-ge v3, v5, :cond_0

    #@40
    .line 514
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getBuffer(I)[B

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, [B

    #@4a
    aput-object v5, v1, v3

    #@4c
    .line 513
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 516
    :cond_0
    iget-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@51
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@53
    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 508
    add-int/lit8 v5, v6, 0x1

    #@58
    move v6, v5

    #@59
    goto :goto_0

    #@5a
    .line 520
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffers":[[B
    .end local v2    # "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiLogger;->getLogcat(I)Ljava/util/ArrayList;

    #@5d
    move-result-object v5

    #@5e
    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->logcatLines:Ljava/util/ArrayList;

    #@60
    .line 521
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiLogger;->getKernelLog(I)Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@63
    move-result-object v5

    #@64
    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@66
    .line 523
    if-eqz p2, :cond_2

    #@68
    .line 524
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6a
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    #@6d
    move-result-object v5

    #@6e
    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@70
    .line 525
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@72
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getDriverStateDump()[B

    #@75
    move-result-object v5

    #@76
    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@78
    .line 527
    :cond_2
    return-object v4
.end method

.method private clearVerboseLogs()V
    .locals 2

    #@0
    .prologue
    .line 389
    const/4 v1, 0x0

    #@1
    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    #@3
    .line 391
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 392
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/wifi/WifiLogger$BugReport;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$BugReport;->clearVerboseLogs()V

    #@17
    .line 391
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 395
    :cond_0
    const/4 v0, 0x0

    #@1b
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@20
    move-result v1

    #@21
    if-ge v0, v1, :cond_1

    #@23
    .line 396
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@25
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/wifi/WifiLogger$BugReport;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$BugReport;->clearVerboseLogs()V

    #@2e
    .line 395
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 388
    :cond_1
    return-void
.end method

.method private static compressToBase64([B)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # [B

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 538
    new-instance v3, Ljava/util/zip/Deflater;

    #@3
    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    #@6
    .line 539
    .local v3, "compressor":Ljava/util/zip/Deflater;
    const/16 v7, 0x9

    #@8
    invoke-virtual {v3, v7}, Ljava/util/zip/Deflater;->setLevel(I)V

    #@b
    .line 540
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    #@e
    .line 541
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    #@11
    .line 542
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@13
    array-length v7, p0

    #@14
    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@17
    .line 543
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    #@19
    new-array v1, v7, [B

    #@1b
    .line 545
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    #@1e
    move-result v7

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 546
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    #@24
    move-result v4

    #@25
    .line 547
    .local v4, "count":I
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@28
    goto :goto_0

    #@29
    .line 551
    .end local v4    # "count":I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    #@2c
    .line 552
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 559
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@32
    move-result-object v2

    #@33
    .line 566
    .local v2, "compressed":[B
    array-length v7, v2

    #@34
    array-length v8, p0

    #@35
    if-ge v7, v8, :cond_1

    #@37
    .line 565
    .end local v2    # "compressed":[B
    :goto_1
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 572
    .local v6, "result":Ljava/lang/String;
    return-object v6

    #@3c
    .line 553
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@3d
    .line 554
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiLogger"

    #@40
    const-string/jumbo v8, "ByteArrayOutputStream close error"

    #@43
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 555
    invoke-static {p0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 556
    .restart local v6    # "result":Ljava/lang/String;
    return-object v6

    #@4b
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "compressed":[B
    :cond_1
    move-object v2, p0

    #@4c
    .line 566
    goto :goto_1
.end method

.method private dumpPacketFates(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 641
    const-string/jumbo v0, "Last failed connection fates"

    #@3
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    #@5
    .line 642
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    #@8
    move-result v2

    #@9
    .line 641
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    #@c
    .line 643
    const-string/jumbo v0, "Latest fates"

    #@f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchPacketFates()Ljava/util/ArrayList;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    #@16
    move-result v2

    #@17
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    #@1a
    .line 640
    return-void
.end method

.method private static dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "description"    # Ljava/lang/String;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 648
    if-nez p2, :cond_0

    #@4
    .line 649
    const-string/jumbo v3, "No fates fetched for \"%s\"\n"

    #@7
    new-array v4, v4, [Ljava/lang/Object;

    #@9
    aput-object p1, v4, v5

    #@b
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@e
    .line 650
    return-void

    #@f
    .line 653
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 654
    const-string/jumbo v3, "HAL provided zero fates for \"%s\"\n"

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    aput-object p1, v4, v5

    #@1c
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1f
    .line 655
    return-void

    #@20
    .line 658
    :cond_1
    const-string/jumbo v3, "--------------------- %s ----------------------\n"

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    aput-object p1, v4, v5

    #@27
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@2a
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    .line 661
    .local v2, "verboseOutput":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/wifi/WifiNative$FateReport;->getTableHeader()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 662
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    .local v1, "fate$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_3

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/android/server/wifi/WifiNative$FateReport;

    #@46
    .line 663
    .local v0, "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 664
    if-eqz p3, :cond_2

    #@4f
    .line 667
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 668
    const-string/jumbo v3, "\n"

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_0

    #@5d
    .line 672
    .end local v0    # "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    :cond_3
    if-eqz p3, :cond_4

    #@5f
    .line 673
    const-string/jumbo v3, "\n>>> VERBOSE PACKET FATE DUMP <<<\n\n"

    #@62
    new-array v4, v5, [Ljava/lang/Object;

    #@64
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@67
    .line 674
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 677
    :cond_4
    const-string/jumbo v3, "--------------------------------------------------------------------"

    #@71
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 647
    return-void
.end method

.method private enableVerboseLoggingForDogfood()Z
    .locals 1

    #@0
    .prologue
    .line 498
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private fetchPacketFates()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 613
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 615
    .local v1, "mergedFates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    new-array v3, v5, [Lcom/android/server/wifi/WifiNative$TxFateReport;

    #@9
    .line 616
    .local v3, "txFates":[Lcom/android/server/wifi/WifiNative$TxFateReport;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@b
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNative;->getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 617
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@13
    if-ge v0, v4, :cond_0

    #@15
    aget-object v4, v3, v0

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 618
    aget-object v4, v3, v0

    #@1b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 617
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 623
    .end local v0    # "i":I
    :cond_0
    new-array v2, v5, [Lcom/android/server/wifi/WifiNative$RxFateReport;

    #@23
    .line 624
    .local v2, "rxFates":[Lcom/android/server/wifi/WifiNative$RxFateReport;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@25
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiNative;->getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 625
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "i":I
    :goto_1
    array-length v4, v2

    #@2d
    if-ge v0, v4, :cond_1

    #@2f
    aget-object v4, v2, v0

    #@31
    if-eqz v4, :cond_1

    #@33
    .line 626
    aget-object v4, v2, v0

    #@35
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 625
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 630
    .end local v0    # "i":I
    :cond_1
    new-instance v4, Lcom/android/server/wifi/WifiLogger$2;

    #@3d
    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiLogger$2;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    #@40
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@43
    .line 637
    return-object v1
.end method

.method private fetchRingBuffers()Z
    .locals 10

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 401
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@4
    if-eqz v3, :cond_0

    #@6
    return v1

    #@7
    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@9
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@f
    .line 404
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@11
    if-eqz v3, :cond_3

    #@13
    .line 405
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@15
    array-length v5, v4

    #@16
    move v3, v2

    #@17
    :goto_0
    if-ge v3, v5, :cond_4

    #@19
    aget-object v0, v4, v3

    #@1b
    .line 407
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@1d
    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_1

    #@25
    .line 408
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@27
    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@29
    .line 409
    new-instance v8, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    #@2b
    iget v9, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    #@2d
    invoke-direct {v8, v9}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;-><init>(I)V

    #@30
    .line 408
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 411
    :cond_1
    iget v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    #@35
    and-int/lit8 v6, v6, 0x4

    #@37
    if-eqz v6, :cond_2

    #@39
    .line 412
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3b
    .line 405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 416
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_3
    const-string/jumbo v3, "WifiLogger"

    #@41
    const-string/jumbo v4, "no ring buffers found"

    #@44
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 419
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@49
    if-eqz v3, :cond_5

    #@4b
    :goto_1
    return v1

    #@4c
    :cond_5
    move v1, v2

    #@4d
    goto :goto_1
.end method

.method private getAllRingBufferData()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 480
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 481
    const-string/jumbo v2, "WifiLogger"

    #@8
    const-string/jumbo v4, "Not ring buffers available to collect data!"

    #@b
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 482
    return v3

    #@f
    .line 485
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@11
    array-length v5, v4

    #@12
    move v2, v3

    #@13
    :goto_0
    if-ge v2, v5, :cond_2

    #@15
    aget-object v0, v4, v2

    #@17
    .line 486
    .local v0, "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@19
    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@1b
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    .line 487
    .local v1, "result":Z
    if-nez v1, :cond_1

    #@21
    .line 488
    const-string/jumbo v2, "WifiLogger"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Fail to get ring buffer data of: "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 489
    return v3

    #@3e
    .line 485
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 493
    .end local v0    # "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, "WifiLogger"

    #@44
    const-string/jumbo v3, "getAllRingBufferData Successfully!"

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 494
    const/4 v2, 0x1

    #@4b
    return v2
.end method

.method private getKernelLog(I)Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .locals 5
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 599
    new-instance v1, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiLogger;I)V

    #@5
    .line 600
    .local v1, "lines":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->readKernelLog()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 601
    .local v2, "log":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    #@e
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 602
    .local v3, "logLines":[Ljava/lang/String;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@14
    if-ge v0, v4, :cond_0

    #@16
    .line 603
    aget-object v4, v3, v0

    #@18
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    #@1b
    .line 602
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 606
    :cond_0
    return-object v1
.end method

.method private getLogcat(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 576
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@5
    .line 578
    .local v2, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@8
    move-result-object v5

    #@9
    const-string/jumbo v6, "logcat -t %d"

    #@c
    const/4 v7, 0x1

    #@d
    new-array v7, v7, [Ljava/lang/Object;

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v8

    #@13
    const/4 v9, 0x0

    #@14
    aput-object v8, v7, v9

    #@16
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@1d
    move-result-object v3

    #@1e
    .line 579
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    #@20
    .line 580
    new-instance v5, Ljava/io/InputStreamReader;

    #@22
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@25
    move-result-object v6

    #@26
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@29
    .line 579
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@2c
    .line 582
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@32
    .line 583
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 591
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    #@37
    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WifiLogger"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Exception while capturing logcat"

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    #@52
    .line 585
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "process":Ljava/lang/Process;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    #@54
    .line 586
    .end local v4    # "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    #@56
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    #@59
    move-result-object v6

    #@5a
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@5d
    .line 585
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@60
    .line 587
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    if-eqz v1, :cond_1

    #@66
    .line 588
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@69
    goto :goto_2

    #@6a
    .line 590
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6d
    goto :goto_1
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 385
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@3
    if-le v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private resizeRingBuffers()V
    .locals 3

    #@0
    .prologue
    .line 423
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "byteArrayRingBuffer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    #@16
    .line 424
    .local v0, "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    #@18
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->resize(I)V

    #@1b
    goto :goto_0

    #@1c
    .line 422
    .end local v0    # "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    :cond_0
    return-void
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 430
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 432
    return v1

    #@6
    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@8
    array-length v3, v2

    #@9
    :goto_0
    if-ge v1, v3, :cond_2

    #@b
    aget-object v0, v2, v1

    #@d
    .line 437
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    #@f
    and-int/lit8 v4, v4, 0x4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 435
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 443
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    #@19
    goto :goto_1

    #@1a
    .line 446
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 451
    sget-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    #@3
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@5
    aget v3, v0, v1

    #@7
    .line 452
    .local v3, "minInterval":I
    sget-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    #@9
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@b
    aget v4, v0, v1

    #@d
    .line 454
    .local v4, "minDataSize":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@f
    .line 455
    iget v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@11
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@13
    .line 454
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 457
    return v2

    #@1a
    .line 460
    :cond_0
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    #@0
    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 472
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@6
    const/4 v1, 0x0

    #@7
    array-length v3, v2

    #@8
    :goto_0
    if-ge v1, v3, :cond_0

    #@a
    aget-object v0, v2, v1

    #@c
    .line 473
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    #@f
    .line 472
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 476
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@5
    move v2, v1

    #@6
    move v3, v1

    #@7
    move v4, v1

    #@8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 467
    :cond_0
    const/4 v0, 0x1

    #@f
    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    #@4
    move-result v1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    #@8
    move-result-object v0

    #@9
    .line 204
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@b
    .line 205
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 202
    return-void

    #@12
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->isVerboseLoggingEnabled()Z

    #@4
    move-result v1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    #@8
    move-result-object v0

    #@9
    .line 198
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@b
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 196
    return-void

    #@10
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 210
    :try_start_0
    invoke-super {p0, p2}, Lcom/android/server/wifi/BaseWifiLogger;->dump(Ljava/io/PrintWriter;)V

    #@4
    .line 212
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@7
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 213
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@10
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Alert dump "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 215
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@2c
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@33
    .line 216
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@36
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 219
    :cond_0
    const/4 v0, 0x0

    #@3d
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@42
    move-result v1

    #@43
    if-ge v0, v1, :cond_1

    #@45
    .line 220
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@48
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, "Bug dump "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 222
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@64
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@6b
    .line 223
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@6e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 219
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_1

    #@74
    .line 226
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiLogger;->dumpPacketFates(Ljava/io/PrintWriter;)V

    #@77
    .line 228
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@7a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    monitor-exit p0

    #@7e
    .line 209
    return-void

    #@7f
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@80
    monitor-exit p0

    #@81
    throw v1
.end method

.method getBugReports()Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@2
    return-object v0
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@3
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    #@b
    .line 372
    .local v0, "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    if-eqz v0, :cond_0

    #@d
    .line 373
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->appendBuffer([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 370
    return-void

    #@12
    .end local v0    # "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    .line 380
    const v1, 0x20064

    #@a
    const/4 v2, 0x0

    #@b
    .line 379
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 377
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized reportConnectionFailure()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchPacketFates()Ljava/util/ArrayList;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPacketFatesForLastFailure:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 191
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 3
    .param p1, "verboseEnabled"    # Z

    #@0
    .prologue
    const/high16 v0, 0x100000

    #@2
    monitor-enter p0

    #@3
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    #@b
    .line 120
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    #@13
    .line 121
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@15
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    #@1b
    .line 123
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 124
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@21
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@23
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    #@26
    move-result v1

    #@27
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    #@29
    .line 127
    :cond_0
    if-eqz p1, :cond_4

    #@2b
    .line 128
    const/4 v0, 0x2

    #@2c
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@2e
    .line 129
    const/high16 v0, 0x100000

    #@30
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    #@32
    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@34
    if-nez v0, :cond_1

    #@36
    .line 138
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchRingBuffers()Z

    #@39
    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    #@40
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->resizeRingBuffers()V

    #@43
    .line 145
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->startLoggingAllExceptPerPacketBuffers()Z

    #@46
    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@48
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoring()Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_3

    #@4e
    .line 149
    const-string/jumbo v0, "WifiLogger"

    #@51
    const-string/jumbo v1, "Failed to start packet fate monitoring"

    #@54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    :cond_3
    monitor-exit p0

    #@58
    .line 118
    return-void

    #@59
    .line 131
    :cond_4
    const/4 v1, 0x1

    #@5a
    :try_start_1
    iput v1, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@5c
    .line 132
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->enableVerboseLoggingForDogfood()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_5

    #@62
    :goto_1
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mMaxRingBufferSizeBytes:I

    #@64
    .line 134
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->clearVerboseLogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    goto :goto_0

    #@68
    :catchall_0
    move-exception v0

    #@69
    monitor-exit p0

    #@6a
    throw v0

    #@6b
    .line 133
    :cond_5
    const v0, 0x8000

    #@6e
    goto :goto_1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 154
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 174
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 175
    const-string/jumbo v0, "WifiLogger"

    #@10
    const-string/jumbo v1, "Fail to reset log handler"

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 181
    :cond_0
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLogger;->mIsLoggingEventHandlerRegistered:Z

    #@19
    .line 183
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 184
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    #@20
    .line 185
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@23
    .line 186
    const/4 v0, 0x0

    #@24
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_2
    monitor-exit p0

    #@27
    .line 172
    return-void

    #@28
    :catchall_0
    move-exception v0

    #@29
    monitor-exit p0

    #@2a
    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 163
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
