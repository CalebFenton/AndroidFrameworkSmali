.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# static fields
.field private static final MAX_REASON_SIZE:I = 0x200


# instance fields
.field private mDecoder:Ljava/nio/charset/CharsetDecoder;

.field private mUtf16Buffer:Ljava/nio/CharBuffer;

.field private mUtf8Buffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;

    #@0
    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2
    .line 920
    const-string/jumbo v0, "BatteryStats_wakeupReason"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 919
    return-void
.end method

.method private waitWakeup()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@5
    .line 949
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    #@7
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@a
    .line 950
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    #@c
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@f
    .line 952
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    #@11
    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-wrap0(Ljava/nio/ByteBuffer;)I

    #@14
    move-result v0

    #@15
    .line 953
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    #@17
    .line 954
    const/4 v1, 0x0

    #@18
    return-object v1

    #@19
    .line 955
    :cond_0
    if-nez v0, :cond_1

    #@1b
    .line 956
    const-string/jumbo v1, "unknown"

    #@1e
    return-object v1

    #@1f
    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    #@21
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 964
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    #@26
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    #@28
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    #@2a
    const/4 v4, 0x1

    #@2b
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@2e
    .line 965
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    #@30
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@33
    .line 968
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    #@35
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x200

    #@2
    .line 924
    const/4 v2, -0x2

    #@3
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@6
    .line 926
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@b
    move-result-object v2

    #@c
    .line 928
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@e
    .line 926
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@11
    move-result-object v2

    #@12
    .line 929
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@14
    .line 926
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@17
    move-result-object v2

    #@18
    .line 930
    const-string/jumbo v3, "?"

    #@1b
    .line 926
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    #@21
    .line 932
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    #@27
    .line 933
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    #@2d
    .line 937
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->waitWakeup()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@33
    .line 938
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@35
    iget-object v3, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@37
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 939
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@3a
    iget-object v2, v2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@3c
    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@40
    goto :goto_0

    #@41
    .line 942
    .end local v1    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@42
    .line 943
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "BatteryStatsService"

    #@45
    const-string/jumbo v3, "Failure reading wakeup reasons"

    #@48
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    .line 923
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void

    #@4c
    .line 938
    .restart local v1    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@4d
    :try_start_3
    monitor-exit v3

    #@4e
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
.end method
