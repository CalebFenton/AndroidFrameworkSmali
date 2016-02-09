.class Lcom/android/server/wifi/WifiLogger;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLogger$BugReport;,
        Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;,
        Lcom/android/server/wifi/WifiLogger$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field public static final MAX_RING_BUFFERS:I = 0xa

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

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiLogger"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private mDriverVersion:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

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

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mSupportedFeatureSet:I

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
    .line 79
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
    .line 81
    const/high16 v0, 0x10000

    #@11
    filled-new-array {v3, v4, v4, v0}, [I

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    #@17
    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 2
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@6
    .line 263
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    #@c
    .line 262
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@e
    .line 265
    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@10
    const/4 v1, 0x4

    #@11
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    #@14
    .line 264
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@16
    .line 266
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@1d
    .line 269
    new-instance v0, Lcom/android/server/wifi/WifiLogger$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiLogger$1;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    #@22
    .line 268
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@24
    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    .line 91
    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 387
    new-instance v4, Lcom/android/server/wifi/WifiLogger$BugReport;

    #@3
    invoke-direct {v4, v5}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>(Lcom/android/server/wifi/WifiLogger$BugReport;)V

    #@6
    .line 388
    .local v4, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput p1, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    #@8
    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v6

    #@c
    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    #@e
    .line 390
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v6

    #@12
    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    #@14
    .line 392
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 393
    iget-object v7, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@1a
    const/4 v5, 0x0

    #@1b
    array-length v8, v7

    #@1c
    move v6, v5

    #@1d
    :goto_0
    if-ge v6, v8, :cond_1

    #@1f
    aget-object v0, v7, v6

    #@21
    .line 395
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@23
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    #@26
    .line 396
    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@28
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@2a
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@30
    .line 397
    .local v2, "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@33
    move-result v5

    #@34
    new-array v1, v5, [[B

    #@36
    .line 398
    .local v1, "buffers":[[B
    const/4 v3, 0x0

    #@37
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@3a
    move-result v5

    #@3b
    if-ge v3, v5, :cond_0

    #@3d
    .line 399
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    check-cast v5, [B

    #@43
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    check-cast v5, [B

    #@49
    aput-object v5, v1, v3

    #@4b
    .line 398
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 401
    :cond_0
    iget-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@50
    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@52
    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 393
    add-int/lit8 v5, v6, 0x1

    #@57
    move v6, v5

    #@58
    goto :goto_0

    #@59
    .line 405
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffers":[[B
    .end local v2    # "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    .end local v3    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    #@5b
    .line 406
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    #@5e
    move-result-object v5

    #@5f
    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@61
    .line 408
    :cond_2
    return-object v4
.end method

.method private static compressToBase64([B)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # [B

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 414
    new-instance v3, Ljava/util/zip/Deflater;

    #@3
    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    #@6
    .line 415
    .local v3, "compressor":Ljava/util/zip/Deflater;
    const/16 v7, 0x9

    #@8
    invoke-virtual {v3, v7}, Ljava/util/zip/Deflater;->setLevel(I)V

    #@b
    .line 416
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    #@e
    .line 417
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    #@11
    .line 418
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@13
    array-length v7, p0

    #@14
    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@17
    .line 419
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    #@19
    new-array v1, v7, [B

    #@1b
    .line 421
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    #@1e
    move-result v7

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 422
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    #@24
    move-result v4

    #@25
    .line 423
    .local v4, "count":I
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@28
    goto :goto_0

    #@29
    .line 427
    .end local v4    # "count":I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    #@2c
    .line 428
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 435
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@32
    move-result-object v2

    #@33
    .line 442
    .local v2, "compressed":[B
    array-length v7, v2

    #@34
    array-length v8, p0

    #@35
    if-ge v7, v8, :cond_1

    #@37
    .line 441
    .end local v2    # "compressed":[B
    :goto_1
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    .line 448
    .local v6, "result":Ljava/lang/String;
    return-object v6

    #@3c
    .line 429
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@3d
    .line 430
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiLogger"

    #@40
    const-string/jumbo v8, "ByteArrayOutputStream close error"

    #@43
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 431
    invoke-static {p0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 432
    .restart local v6    # "result":Ljava/lang/String;
    return-object v6

    #@4b
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "compressed":[B
    :cond_1
    move-object v2, p0

    #@4c
    .line 442
    goto :goto_1
.end method

.method private fetchRingBuffers()Z
    .locals 10

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 296
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@4
    if-eqz v3, :cond_0

    #@6
    return v1

    #@7
    .line 298
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@d
    .line 299
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@f
    if-eqz v3, :cond_3

    #@11
    .line 300
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@13
    array-length v5, v4

    #@14
    move v3, v2

    #@15
    :goto_0
    if-ge v3, v5, :cond_4

    #@17
    aget-object v0, v4, v3

    #@19
    .line 302
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@1b
    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@1d
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_1

    #@23
    .line 303
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@25
    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@27
    .line 304
    new-instance v8, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@29
    const/16 v9, 0xa

    #@2b
    invoke-direct {v8, v9}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    #@2e
    .line 303
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 306
    :cond_1
    iget v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    #@33
    and-int/lit8 v6, v6, 0x4

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 307
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@39
    .line 300
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 311
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_3
    const-string/jumbo v3, "WifiLogger"

    #@3f
    const-string/jumbo v4, "no ring buffers found"

    #@42
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 314
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@47
    if-eqz v3, :cond_5

    #@49
    :goto_1
    return v1

    #@4a
    :cond_5
    move v1, v2

    #@4b
    goto :goto_1
.end method

.method private getAllRingBufferData()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 370
    const-string/jumbo v2, "WifiLogger"

    #@8
    const-string/jumbo v4, "Not ring buffers available to collect data!"

    #@b
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 371
    return v3

    #@f
    .line 374
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
    .line 375
    .local v0, "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@19
    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    .line 376
    .local v1, "result":Z
    if-nez v1, :cond_1

    #@1f
    .line 377
    const-string/jumbo v2, "WifiLogger"

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Fail to get ring buffer data of: "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 378
    return v3

    #@3c
    .line 374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 382
    .end local v0    # "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, "WifiLogger"

    #@42
    const-string/jumbo v3, "getAllRingBufferData Successfully!"

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 383
    const/4 v2, 0x1

    #@49
    return v2
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 319
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 321
    return v1

    #@6
    .line 324
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
    .line 326
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    #@f
    and-int/lit8 v4, v4, 0x4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 324
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 332
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    #@19
    goto :goto_1

    #@1a
    .line 335
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 5
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    sget-object v2, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    #@3
    iget v3, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@5
    aget v1, v2, v3

    #@7
    .line 341
    .local v1, "minInterval":I
    sget-object v2, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    #@9
    iget v3, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@b
    aget v0, v2, v3

    #@d
    .line 344
    .local v0, "minDataSize":I
    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@f
    iget-object v3, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@11
    .line 343
    invoke-static {v2, v4, v1, v0, v3}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 346
    return v4

    #@18
    .line 349
    :cond_0
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    #@0
    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 361
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
    .line 362
    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    #@f
    .line 361
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 365
    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 2
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 353
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@3
    invoke-static {v1, v1, v1, v1, v0}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 356
    :cond_0
    const/4 v0, 0x1

    #@a
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
    .line 152
    const/4 v1, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    #@5
    move-result-object v0

    #@6
    .line 153
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@8
    .line 154
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 151
    return-void

    #@f
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 147
    const/4 v1, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    #@5
    move-result-object v0

    #@6
    .line 148
    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@8
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 146
    return-void

    #@d
    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
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
    .line 158
    :try_start_0
    const-string/jumbo v1, "Chipset information :-----------------------------------------------"

    #@4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "FW Version is: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Driver Version is: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Supported Feature set: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 163
    const/4 v0, 0x0

    #@53
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@55
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@58
    move-result v1

    #@59
    if-ge v0, v1, :cond_0

    #@5b
    .line 164
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@5e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "Alert dump "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 166
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@7a
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@81
    .line 167
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@84
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@87
    .line 163
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 170
    :cond_0
    const/4 v0, 0x0

    #@8b
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@8d
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@90
    move-result v1

    #@91
    if-ge v0, v1, :cond_1

    #@93
    .line 171
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@96
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v2, "Bug dump "

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0
    .line 173
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@b2
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@b9
    .line 174
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@bc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf
    .line 170
    add-int/lit8 v0, v0, 0x1

    #@c1
    goto :goto_1

    #@c2
    .line 177
    :cond_1
    const-string/jumbo v1, "--------------------------------------------------------------------"

    #@c5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c8
    monitor-exit p0

    #@c9
    .line 157
    return-void

    #@ca
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@cb
    monitor-exit p0

    #@cc
    throw v1
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    #@3
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@b
    .line 283
    .local v0, "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    if-eqz v0, :cond_0

    #@d
    .line 284
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 281
    return-void

    #@12
    .end local v0    # "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
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
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    .line 291
    const v1, 0x20064

    #@a
    const/4 v2, 0x0

    #@b
    .line 290
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 288
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 1
    .param p1, "verboseEnabled"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    #@7
    .line 97
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    #@d
    .line 98
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    #@13
    .line 100
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@15
    if-nez v0, :cond_0

    #@17
    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    #@19
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    #@1c
    .line 103
    :cond_0
    if-eqz p1, :cond_2

    #@1e
    .line 104
    const/4 v0, 0x2

    #@1f
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@21
    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@23
    if-nez v0, :cond_1

    #@25
    .line 109
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchRingBuffers()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->startLoggingAllExceptPerPacketBuffers()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_1
    monitor-exit p0

    #@2f
    .line 95
    return-void

    #@30
    .line 106
    :cond_2
    const/4 v0, 0x1

    #@31
    :try_start_1
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    :catchall_0
    move-exception v0

    #@35
    monitor-exit p0

    #@36
    throw v0
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 115
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
    .line 132
    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 135
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 136
    const-string/jumbo v0, "WifiLogger"

    #@e
    const-string/jumbo v1, "Fail to reset log handler"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    #@17
    .line 141
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@1a
    .line 142
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 131
    return-void

    #@1f
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 123
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
