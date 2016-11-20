.class abstract Lcom/android/server/wifi/WifiNative$FateReport;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FateReport"
.end annotation


# static fields
.field static final MAX_DRIVER_TIMESTAMP_MSEC:I = 0x418937

.field static final USEC_PER_MSEC:I = 0x3e8

.field static final dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field final mDriverTimestampUSec:J

.field final mEstimatedWallclockMSec:J

.field final mFate:B

.field final mFrameBytes:[B

.field final mFrameType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 2632
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "HH:mm:ss.SSS"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    #@a
    .line 2627
    return-void
.end method

.method constructor <init>(BJB[B)V
    .locals 2
    .param p1, "fate"    # B
    .param p2, "driverTimestampUSec"    # J
    .param p4, "frameType"    # B
    .param p5, "frameBytes"    # [B

    #@0
    .prologue
    .line 2640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2641
    iput-byte p1, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFate:B

    #@5
    .line 2642
    iput-wide p2, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@7
    .line 2644
    iget-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@9
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNative$FateReport;->convertDriverTimestampUSecToWallclockMSec(J)J

    #@c
    move-result-wide v0

    #@d
    .line 2643
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    #@f
    .line 2645
    iput-byte p4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    #@11
    .line 2646
    iput-object p5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    #@13
    .line 2640
    return-void
.end method

.method private static convertDriverTimestampUSecToWallclockMSec(J)J
    .locals 14
    .param p0, "driverTimestampUSec"    # J

    #@0
    .prologue
    const-wide/32 v12, 0x418937

    #@3
    .line 2713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v8

    #@7
    .line 2714
    .local v8, "wallclockMillisNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    .line 2715
    .local v0, "boottimeMillisNow":J
    const-wide/16 v10, 0x3e8

    #@d
    div-long v4, p0, v10

    #@f
    .line 2717
    .local v4, "driverTimestampMillis":J
    rem-long v2, v0, v12

    #@11
    .line 2718
    .local v2, "boottimeTimestampMillis":J
    cmp-long v10, v2, v4

    #@13
    if-gez v10, :cond_0

    #@15
    .line 2728
    add-long/2addr v2, v12

    #@16
    .line 2731
    :cond_0
    sub-long v6, v2, v4

    #@18
    .line 2732
    .local v6, "millisSincePacketTimestamp":J
    sub-long v10, v8, v6

    #@1a
    return-wide v10
.end method

.method private static frameTypeToString(B)Ljava/lang/String;
    .locals 1
    .param p0, "frameType"    # B

    #@0
    .prologue
    .line 2695
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2703
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 2697
    :pswitch_0
    const-string/jumbo v0, "unknown"

    #@b
    return-object v0

    #@c
    .line 2699
    :pswitch_1
    const-string/jumbo v0, "data"

    #@f
    return-object v0

    #@10
    .line 2701
    :pswitch_2
    const-string/jumbo v0, "802.11 management"

    #@13
    return-object v0

    #@14
    .line 2695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTableHeader()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 2681
    new-instance v1, Ljava/io/StringWriter;

    #@7
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@a
    .line 2682
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    #@c
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@f
    .line 2683
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "\n%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    #@12
    const/4 v3, 0x7

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    .line 2684
    const-string/jumbo v4, "Time usec"

    #@18
    aput-object v4, v3, v6

    #@1a
    const-string/jumbo v4, "Walltime"

    #@1d
    aput-object v4, v3, v7

    #@1f
    const-string/jumbo v4, "Direction"

    #@22
    aput-object v4, v3, v8

    #@24
    const-string/jumbo v4, "Fate"

    #@27
    aput-object v4, v3, v9

    #@29
    const-string/jumbo v4, "Protocol"

    #@2c
    aput-object v4, v3, v10

    #@2e
    const-string/jumbo v4, "Type"

    #@31
    const/4 v5, 0x5

    #@32
    aput-object v4, v3, v5

    #@34
    const-string/jumbo v4, "Result"

    #@37
    const/4 v5, 0x6

    #@38
    aput-object v4, v3, v5

    #@3a
    .line 2683
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@3d
    .line 2685
    const-string/jumbo v2, "%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    #@40
    const/4 v3, 0x7

    #@41
    new-array v3, v3, [Ljava/lang/Object;

    #@43
    .line 2686
    const-string/jumbo v4, "---------"

    #@46
    aput-object v4, v3, v6

    #@48
    const-string/jumbo v4, "--------"

    #@4b
    aput-object v4, v3, v7

    #@4d
    const-string/jumbo v4, "---------"

    #@50
    aput-object v4, v3, v8

    #@52
    const-string/jumbo v4, "----"

    #@55
    aput-object v4, v3, v9

    #@57
    const-string/jumbo v4, "--------"

    #@5a
    aput-object v4, v3, v10

    #@5c
    const-string/jumbo v4, "----"

    #@5f
    const/4 v5, 0x5

    #@60
    aput-object v4, v3, v5

    #@62
    const-string/jumbo v4, "------"

    #@65
    const/4 v5, 0x6

    #@66
    aput-object v4, v3, v5

    #@68
    .line 2685
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@6b
    .line 2687
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    return-object v2
.end method


# virtual methods
.method protected abstract directionToString()Ljava/lang/String;
.end method

.method protected abstract fateToString()Ljava/lang/String;
.end method

.method public toTableRowString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 2650
    new-instance v2, Ljava/io/StringWriter;

    #@2
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 2651
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@a
    .line 2652
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Lcom/android/server/wifi/util/FrameParser;

    #@c
    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    #@e
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    #@10
    invoke-direct {v0, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    #@13
    .line 2653
    .local v0, "parser":Lcom/android/server/wifi/util/FrameParser;
    sget-object v3, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    #@15
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1c
    .line 2654
    const-string/jumbo v3, "%-15s  %12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    #@1f
    const/4 v4, 0x7

    #@20
    new-array v4, v4, [Ljava/lang/Object;

    #@22
    .line 2655
    iget-wide v6, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@24
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x0

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 2656
    sget-object v5, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    #@2d
    new-instance v6, Ljava/util/Date;

    #@2f
    iget-wide v8, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    #@31
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@34
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    const/4 v6, 0x1

    #@39
    aput-object v5, v4, v6

    #@3b
    .line 2657
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    const/4 v6, 0x2

    #@40
    aput-object v5, v4, v6

    #@42
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    const/4 v6, 0x3

    #@47
    aput-object v5, v4, v6

    #@49
    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@4b
    const/4 v6, 0x4

    #@4c
    aput-object v5, v4, v6

    #@4e
    .line 2658
    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@50
    const/4 v6, 0x5

    #@51
    aput-object v5, v4, v6

    #@53
    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    #@55
    const/4 v6, 0x6

    #@56
    aput-object v5, v4, v6

    #@58
    .line 2654
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@5b
    .line 2659
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    return-object v3
.end method

.method public toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2663
    new-instance v2, Ljava/io/StringWriter;

    #@4
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    #@7
    .line 2664
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    #@9
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@c
    .line 2665
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Lcom/android/server/wifi/util/FrameParser;

    #@e
    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    #@10
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    #@12
    invoke-direct {v0, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    #@15
    .line 2666
    .local v0, "parser":Lcom/android/server/wifi/util/FrameParser;
    const-string/jumbo v3, "Frame direction: %s\n"

    #@18
    new-array v4, v9, [Ljava/lang/Object;

    #@1a
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    aput-object v5, v4, v8

    #@20
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@23
    .line 2667
    const-string/jumbo v3, "Frame timestamp: %d\n"

    #@26
    new-array v4, v9, [Ljava/lang/Object;

    #@28
    iget-wide v6, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    #@2a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v5

    #@2e
    aput-object v5, v4, v8

    #@30
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@33
    .line 2668
    const-string/jumbo v3, "Frame fate: %s\n"

    #@36
    new-array v4, v9, [Ljava/lang/Object;

    #@38
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    aput-object v5, v4, v8

    #@3e
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@41
    .line 2669
    const-string/jumbo v3, "Frame type: %s\n"

    #@44
    new-array v4, v9, [Ljava/lang/Object;

    #@46
    iget-byte v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    #@48
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative$FateReport;->frameTypeToString(B)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    aput-object v5, v4, v8

    #@4e
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@51
    .line 2670
    const-string/jumbo v3, "Frame protocol: %s\n"

    #@54
    new-array v4, v9, [Ljava/lang/Object;

    #@56
    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    #@58
    aput-object v5, v4, v8

    #@5a
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@5d
    .line 2671
    const-string/jumbo v3, "Frame protocol type: %s\n"

    #@60
    new-array v4, v9, [Ljava/lang/Object;

    #@62
    iget-object v5, v0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    #@64
    aput-object v5, v4, v8

    #@66
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@69
    .line 2672
    const-string/jumbo v3, "Frame length: %d\n"

    #@6c
    new-array v4, v9, [Ljava/lang/Object;

    #@6e
    iget-object v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    #@70
    array-length v5, v5

    #@71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v5

    #@75
    aput-object v5, v4, v8

    #@77
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@7a
    .line 2673
    const-string/jumbo v3, "Frame bytes"

    #@7d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@80
    .line 2674
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    #@82
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@89
    .line 2675
    const-string/jumbo v3, "\n"

    #@8c
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@8f
    .line 2676
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    return-object v3
.end method
