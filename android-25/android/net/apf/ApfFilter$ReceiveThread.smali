.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# static fields
.field private static final synthetic -android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$apf$ApfFilter$ProcessRaResult:[I

.field private mDroppedRas:I

.field private mMatchingRas:I

.field private final mPacket:[B

.field private mParseErrors:I

.field private mProgramUpdates:I

.field private mReceivedRas:I

.field private final mSocket:Ljava/io/FileDescriptor;

.field private final mStart:J

.field private volatile mStopped:Z

.field private mZeroLifetimeRas:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method private static synthetic -getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/apf/ApfFilter$ProcessRaResult;->values()[Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@10
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@19
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@22
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@2b
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@34
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@3d
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "socket"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 94
    const/16 v0, 0x5ea

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@b
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    #@11
    .line 109
    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@13
    .line 108
    return-void
.end method

.method private logStats()V
    .locals 11

    #@0
    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    #@6
    sub-long v2, v0, v4

    #@8
    .line 163
    .local v2, "durationMs":J
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@a
    invoke-static {v0}, Landroid/net/apf/ApfFilter;->-get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;

    #@d
    move-result-object v0

    #@e
    iget v10, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    #@10
    .line 164
    .local v10, "maxSize":I
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@12
    invoke-static {v0}, Landroid/net/apf/ApfFilter;->-get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    #@15
    move-result-object v0

    #@16
    new-instance v1, Landroid/net/metrics/ApfStats;

    #@18
    iget v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    #@1a
    iget v5, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    #@1c
    iget v6, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    #@1e
    .line 165
    iget v7, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    #@20
    iget v8, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    #@22
    iget v9, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    #@24
    .line 164
    invoke-direct/range {v1 .. v10}, Landroid/net/metrics/ApfStats;-><init>(JIIIIIII)V

    #@27
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@2a
    .line 161
    return-void
.end method

.method private updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    #@6
    .line 138
    invoke-static {}, Landroid/net/apf/ApfFilter$ReceiveThread;->-getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    #@d
    move-result v1

    #@e
    aget v0, v0, v1

    #@10
    packed-switch v0, :pswitch_data_0

    #@13
    .line 136
    return-void

    #@14
    .line 140
    :pswitch_0
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    #@1a
    .line 141
    return-void

    #@1b
    .line 143
    :pswitch_1
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    #@21
    .line 144
    return-void

    #@22
    .line 146
    :pswitch_2
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    #@28
    .line 147
    return-void

    #@29
    .line 149
    :pswitch_3
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    #@2f
    .line 150
    return-void

    #@30
    .line 152
    :pswitch_4
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    #@32
    add-int/lit8 v0, v0, 0x1

    #@34
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    #@36
    .line 153
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    #@3c
    .line 154
    return-void

    #@3d
    .line 156
    :pswitch_5
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    #@43
    .line 157
    return-void

    #@44
    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public halt()V
    .locals 2

    #@0
    .prologue
    .line 113
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@3
    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@5
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 112
    :goto_0
    return-void

    #@9
    .line 117
    :catch_0
    move-exception v0

    #@a
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 6

    #@0
    .prologue
    .line 122
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@2
    const-string/jumbo v3, "begin monitoring"

    #@5
    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->-wrap8(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    #@8
    .line 123
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@a
    if-nez v2, :cond_1

    #@c
    .line 125
    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@e
    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@10
    iget-object v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@12
    array-length v4, v4

    #@13
    const/4 v5, 0x0

    #@14
    invoke-static {v2, v3, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@17
    move-result v1

    #@18
    .line 126
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@1a
    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@1c
    invoke-static {v2, v3, v1}, Landroid/net/apf/ApfFilter;->-wrap0(Landroid/net/apf/ApfFilter;[BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;->updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 127
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    #@25
    .line 128
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@27
    if-nez v2, :cond_0

    #@29
    .line 129
    const-string/jumbo v2, "ApfFilter"

    #@2c
    const-string/jumbo v3, "Read error"

    #@2f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_0

    #@33
    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter$ReceiveThread;->logStats()V

    #@36
    .line 121
    return-void
.end method
