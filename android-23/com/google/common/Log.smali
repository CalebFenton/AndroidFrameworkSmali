.class public Landroid_maps_conflict_avoidance/com/google/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;,
        Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;
    }
.end annotation


# static fields
.field private static final START_TIME:J

.field private static entryBuffer:Ljava/lang/StringBuffer;

.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static final logEntries:Ljava/util/Vector;

.field private static logMemory:Z

.field private static logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

.field private static printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v0

    #@5
    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->START_TIME:J

    #@7
    .line 123
    new-instance v0, Ljava/util/Vector;

    #@9
    const/16 v1, 0x96

    #@b
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@e
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logEntries:Ljava/util/Vector;

    #@10
    .line 127
    new-instance v0, Ljava/util/Hashtable;

    #@12
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@15
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->timers:Ljava/util/Hashtable;

    #@17
    .line 131
    new-instance v0, Ljava/lang/Object;

    #@19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 134
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@21
    .line 149
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableCount:I

    #@23
    const-wide/16 v0, 0x0

    #@25
    .line 158
    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    #@27
    .line 163
    const/4 v0, 0x1

    #@28
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logTime:Z

    #@2a
    .line 168
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThread:Z

    #@2c
    .line 174
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logMemory:Z

    #@2e
    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    #@30
    const/16 v1, 0x100

    #@32
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@35
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    #@37
    .line 188
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;

    #@39
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$StandardErrorPrinter;-><init>()V

    #@3c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->printer:Landroid_maps_conflict_avoidance/com/google/common/Log$Printer;

    #@3e
    .line 194
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isExplicitClearForTest:Z

    #@40
    .line 197
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->isEventLoggingEnabledForTest:Z

    #@42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    return-void
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "type"    # S
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v10

    #@4
    .line 616
    .local v10, "timestamp":J
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@7
    move-result-object v9

    #@8
    .local v9, "store":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string/jumbo v12, "EVENT_LOG"

    #@b
    .line 617
    invoke-interface {v9, v12}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@e
    move-result-object v8

    #@f
    .line 619
    .local v8, "oldEvents":[B
    if-nez v8, :cond_2

    #@11
    .line 621
    :cond_0
    :goto_0
    if-eqz v8, :cond_4

    #@13
    .line 626
    sget-object v12, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    #@15
    if-nez v12, :cond_5

    #@17
    :goto_1
    const-string/jumbo v12, "EVENT_LOG"

    #@1a
    .line 633
    invoke-interface {v9, v12}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@1d
    move-result-object v8

    #@1e
    .line 635
    :cond_1
    const/4 v7, 0x0

    #@1f
    .line 636
    .local v7, "numEvents":S
    array-length v12, v8

    #@20
    const/4 v13, 0x2

    #@21
    if-gt v12, v13, :cond_6

    #@23
    .line 644
    .end local v7    # "numEvents":S
    :goto_2
    add-int/lit8 v12, v7, 0x1

    #@25
    int-to-short v12, v12

    #@26
    int-to-short v7, v12

    #@27
    .line 645
    .local v7, "numEvents":S
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@29
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@2c
    .line 646
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@2e
    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@31
    .line 649
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@34
    const/4 v12, 0x2

    #@35
    .line 651
    array-length v13, v8

    #@36
    add-int/lit8 v13, v13, -0x2

    #@38
    invoke-virtual {v3, v8, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    #@3b
    .line 653
    move/from16 v0, p0

    #@3d
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@40
    .line 657
    sget-wide v12, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    #@42
    sub-long v12, v10, v12

    #@44
    const-wide/32 v14, 0x63ff9c

    #@47
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    #@4a
    move-result-wide v12

    #@4b
    const-wide/16 v14, 0x64

    #@4d
    div-long v4, v12, v14

    #@4f
    .line 659
    .local v4, "delta":J
    long-to-int v12, v4

    #@50
    invoke-virtual {v3, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@53
    .line 660
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@58
    .line 661
    move-object/from16 v0, p2

    #@5a
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5d
    .line 663
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@60
    move-result-object v12

    #@61
    const-string/jumbo v13, "EVENT_LOG"

    #@64
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@67
    move-result-object v14

    #@68
    invoke-interface {v12, v13, v14}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@6b
    .line 665
    sput-wide v10, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 667
    const/4 v12, 0x1

    #@6e
    return v12

    #@6f
    .line 619
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "delta":J
    .end local v7    # "numEvents":S
    :cond_2
    array-length v12, v8

    #@70
    const/16 v13, 0x258

    #@72
    if-gt v12, v13, :cond_0

    #@74
    sget-wide v12, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J

    #@76
    sub-long v12, v10, v12

    #@78
    const-wide/32 v14, 0x63ff9c

    #@7b
    cmp-long v12, v12, v14

    #@7d
    if-gtz v12, :cond_3

    #@7f
    const/4 v12, 0x1

    #@80
    :goto_3
    if-nez v12, :cond_1

    #@82
    goto :goto_0

    #@83
    :cond_3
    const/4 v12, 0x0

    #@84
    goto :goto_3

    #@85
    .line 622
    :cond_4
    invoke-static {v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    #@88
    goto :goto_1

    #@89
    :cond_5
    const/4 v12, 0x0

    #@8a
    .line 630
    const/4 v13, 0x0

    #@8b
    invoke-static {v13, v12, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    #@8e
    goto :goto_1

    #@8f
    .local v7, "numEvents":S
    :cond_6
    const/4 v12, 0x0

    #@90
    .line 641
    aget-byte v12, v8, v12

    #@92
    and-int/lit16 v12, v12, 0xff

    #@94
    shl-int/lit8 v12, v12, 0x8

    #@96
    const/4 v13, 0x1

    #@97
    aget-byte v13, v8, v13

    #@99
    and-int/lit16 v13, v13, 0xff

    #@9b
    or-int/2addr v12, v13

    #@9c
    int-to-short v12, v12

    #@9d
    int-to-short v7, v12

    #@9e
    .local v7, "numEvents":S
    goto :goto_2

    #@9f
    .line 667
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v6

    #@a0
    .line 670
    .local v6, "e":Ljava/io/IOException;
    const/4 v12, 0x0

    #@a1
    return v12
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x12c

    #@2
    .line 544
    if-eqz p0, :cond_0

    #@4
    .line 548
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 549
    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v2, "\n"

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@27
    .line 554
    :goto_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2c
    move-result v0

    #@2d
    if-gt v0, v3, :cond_2

    #@2f
    .line 558
    :goto_1
    monitor-exit v1

    #@30
    .line 559
    return-void

    #@31
    .line 545
    :cond_0
    return-void

    #@32
    .line 550
    :cond_1
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@34
    goto :goto_0

    #@35
    .line 558
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    throw v0

    #@38
    .line 555
    :cond_2
    :try_start_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;

    #@3a
    const/4 v2, 0x0

    #@3b
    const/16 v3, 0x12c

    #@3d
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1
.end method

.method public static createEventTuple([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "elements"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 730
    array-length v3, p0

    #@1
    if-eqz v3, :cond_0

    #@3
    .line 734
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "|"

    #@b
    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    const/4 v2, 0x0

    #@f
    .line 736
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    #@10
    if-lt v2, v3, :cond_1

    #@12
    .line 746
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, ""

    #@1a
    .line 731
    return-object v3

    #@1b
    .line 737
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, p0, v2

    #@1d
    if-nez v3, :cond_2

    #@1f
    .line 736
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 739
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    #@24
    aget-object v3, p0, v2

    #@26
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@29
    .local v1, "element":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "|"

    #@2c
    const-string/jumbo v4, ""

    #@2f
    .line 740
    invoke-static {v3, v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    #@32
    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@35
    const-string/jumbo v3, "|"

    #@38
    .line 743
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    goto :goto_1
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    #@0
    .prologue
    .line 947
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 534
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    #@3
    .line 535
    const/4 v0, 0x1

    #@4
    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    #@7
    .line 536
    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    #@3
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ": "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addThrowableString(Ljava/lang/String;)V

    #@22
    .line 518
    const/4 v0, 0x0

    #@23
    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    #@26
    .line 519
    return-void
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .locals 1
    .param p0, "logString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1001
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1004
    :goto_0
    return-void

    #@5
    .line 1002
    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->onScreenPrinter:Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;

    #@7
    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Log$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    #@a
    goto :goto_0
.end method

.method private static resetPersistentEventLog(J)V
    .locals 8
    .param p0, "timestamp"    # J

    #@0
    .prologue
    .line 932
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 933
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    #@b
    .line 935
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@e
    .line 936
    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@11
    .line 937
    sput-wide p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->lastEventTimeMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 941
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "EVENT_LOG"

    #@1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@21
    .line 944
    :goto_0
    return-void

    #@22
    .line 943
    :catch_0
    move-exception v2

    #@23
    .line 941
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "EVENT_LOG"

    #@2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@31
    goto :goto_0

    #@32
    .line 943
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@33
    .line 941
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "EVENT_LOG"

    #@3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3d
    move-result-object v6

    #@3e
    invoke-interface {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@41
    throw v3
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "isQuiet"    # Z

    #@0
    .prologue
    .line 963
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 977
    :goto_0
    return-void

    #@5
    .line 964
    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Log;->throwableListener:Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;

    #@7
    invoke-interface {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    #@a
    goto :goto_0
.end method

.method public static setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V
    .locals 0
    .param p0, "logSaver"    # Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    #@0
    .prologue
    .line 751
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    #@2
    .line 752
    return-void
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p0, "immediate"    # Z
    .param p1, "waitObject"    # Ljava/lang/Object;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 793
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Log;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "EVENT_LOG"

    #@7
    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    .line 795
    .local v0, "logBytes":[B
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Log;->logSaver:Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;

    #@d
    invoke-interface {v2, p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .line 797
    .local v1, "uploadTracker":Ljava/lang/Object;
    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->resetPersistentEventLog(J)V

    #@14
    .line 800
    return-object v1
.end method
