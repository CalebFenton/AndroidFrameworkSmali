.class public Lcom/android/internal/telephony/test/ModelInterpreter;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final LOG_TAG:Ljava/lang/String; = "ModelInterpreter"

.field static final MAX_CALLS:I = 0x6

.field static final PROGRESS_CALL_STATE:I = 0x1

.field static final sDefaultResponses:[[Ljava/lang/String;


# instance fields
.field private mFinalResponse:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mIn:Ljava/io/InputStream;

.field mLineReader:Lcom/android/internal/telephony/test/LineReader;

.field mOut:Ljava/io/OutputStream;

.field mPausedResponseCount:I

.field mPausedResponseMonitor:Ljava/lang/Object;

.field mSS:Ljava/net/ServerSocket;

.field mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 657
    const/16 v0, 0x1f

    #@6
    new-array v0, v0, [[Ljava/lang/String;

    #@8
    .line 658
    new-array v1, v5, [Ljava/lang/String;

    #@a
    const-string/jumbo v2, "E0Q0V1"

    #@d
    aput-object v2, v1, v3

    #@f
    aput-object v6, v1, v4

    #@11
    aput-object v1, v0, v3

    #@13
    .line 659
    new-array v1, v5, [Ljava/lang/String;

    #@15
    const-string/jumbo v2, "+CMEE=2"

    #@18
    aput-object v2, v1, v3

    #@1a
    aput-object v6, v1, v4

    #@1c
    aput-object v1, v0, v4

    #@1e
    .line 660
    new-array v1, v5, [Ljava/lang/String;

    #@20
    const-string/jumbo v2, "+CREG=2"

    #@23
    aput-object v2, v1, v3

    #@25
    aput-object v6, v1, v4

    #@27
    aput-object v1, v0, v5

    #@29
    .line 661
    new-array v1, v5, [Ljava/lang/String;

    #@2b
    const-string/jumbo v2, "+CGREG=2"

    #@2e
    aput-object v2, v1, v3

    #@30
    aput-object v6, v1, v4

    #@32
    const/4 v2, 0x3

    #@33
    aput-object v1, v0, v2

    #@35
    .line 662
    new-array v1, v5, [Ljava/lang/String;

    #@37
    const-string/jumbo v2, "+CCWA=1"

    #@3a
    aput-object v2, v1, v3

    #@3c
    aput-object v6, v1, v4

    #@3e
    const/4 v2, 0x4

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 663
    new-array v1, v5, [Ljava/lang/String;

    #@43
    const-string/jumbo v2, "+COPS=0"

    #@46
    aput-object v2, v1, v3

    #@48
    aput-object v6, v1, v4

    #@4a
    const/4 v2, 0x5

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 664
    new-array v1, v5, [Ljava/lang/String;

    #@4f
    const-string/jumbo v2, "+CFUN=1"

    #@52
    aput-object v2, v1, v3

    #@54
    aput-object v6, v1, v4

    #@56
    const/4 v2, 0x6

    #@57
    aput-object v1, v0, v2

    #@59
    .line 665
    new-array v1, v5, [Ljava/lang/String;

    #@5b
    const-string/jumbo v2, "+CGMI"

    #@5e
    aput-object v2, v1, v3

    #@60
    const-string/jumbo v2, "+CGMI: Android Model AT Interpreter\r"

    #@63
    aput-object v2, v1, v4

    #@65
    const/4 v2, 0x7

    #@66
    aput-object v1, v0, v2

    #@68
    .line 666
    new-array v1, v5, [Ljava/lang/String;

    #@6a
    const-string/jumbo v2, "+CGMM"

    #@6d
    aput-object v2, v1, v3

    #@6f
    const-string/jumbo v2, "+CGMM: Android Model AT Interpreter\r"

    #@72
    aput-object v2, v1, v4

    #@74
    const/16 v2, 0x8

    #@76
    aput-object v1, v0, v2

    #@78
    .line 667
    new-array v1, v5, [Ljava/lang/String;

    #@7a
    const-string/jumbo v2, "+CGMR"

    #@7d
    aput-object v2, v1, v3

    #@7f
    const-string/jumbo v2, "+CGMR: 1.0\r"

    #@82
    aput-object v2, v1, v4

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 668
    new-array v1, v5, [Ljava/lang/String;

    #@8a
    const-string/jumbo v2, "+CGSN"

    #@8d
    aput-object v2, v1, v3

    #@8f
    const-string/jumbo v2, "000000000000000\r"

    #@92
    aput-object v2, v1, v4

    #@94
    const/16 v2, 0xa

    #@96
    aput-object v1, v0, v2

    #@98
    .line 669
    new-array v1, v5, [Ljava/lang/String;

    #@9a
    const-string/jumbo v2, "+CIMI"

    #@9d
    aput-object v2, v1, v3

    #@9f
    const-string/jumbo v2, "320720000000000\r"

    #@a2
    aput-object v2, v1, v4

    #@a4
    const/16 v2, 0xb

    #@a6
    aput-object v1, v0, v2

    #@a8
    .line 670
    new-array v1, v5, [Ljava/lang/String;

    #@aa
    const-string/jumbo v2, "+CSCS=?"

    #@ad
    aput-object v2, v1, v3

    #@af
    const-string/jumbo v2, "+CSCS: (\"HEX\",\"UCS2\")\r"

    #@b2
    aput-object v2, v1, v4

    #@b4
    const/16 v2, 0xc

    #@b6
    aput-object v1, v0, v2

    #@b8
    .line 671
    new-array v1, v5, [Ljava/lang/String;

    #@ba
    const-string/jumbo v2, "+CFUN?"

    #@bd
    aput-object v2, v1, v3

    #@bf
    const-string/jumbo v2, "+CFUN: 1\r"

    #@c2
    aput-object v2, v1, v4

    #@c4
    const/16 v2, 0xd

    #@c6
    aput-object v1, v0, v2

    #@c8
    .line 672
    new-array v1, v5, [Ljava/lang/String;

    #@ca
    const-string/jumbo v2, "+COPS=3,0;+COPS?;+COPS=3,1;+COPS?;+COPS=3,2;+COPS?"

    #@cd
    aput-object v2, v1, v3

    #@cf
    .line 673
    const-string/jumbo v2, "+COPS: 0,0,\"Android\"\r+COPS: 0,1,\"Android\"\r+COPS: 0,2,\"310995\"\r"

    #@d2
    aput-object v2, v1, v4

    #@d4
    .line 672
    const/16 v2, 0xe

    #@d6
    aput-object v1, v0, v2

    #@d8
    .line 676
    new-array v1, v5, [Ljava/lang/String;

    #@da
    const-string/jumbo v2, "+CREG?"

    #@dd
    aput-object v2, v1, v3

    #@df
    const-string/jumbo v2, "+CREG: 2,5, \"0113\", \"6614\"\r"

    #@e2
    aput-object v2, v1, v4

    #@e4
    const/16 v2, 0xf

    #@e6
    aput-object v1, v0, v2

    #@e8
    .line 677
    new-array v1, v5, [Ljava/lang/String;

    #@ea
    const-string/jumbo v2, "+CGREG?"

    #@ed
    aput-object v2, v1, v3

    #@ef
    const-string/jumbo v2, "+CGREG: 2,0\r"

    #@f2
    aput-object v2, v1, v4

    #@f4
    const/16 v2, 0x10

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 678
    new-array v1, v5, [Ljava/lang/String;

    #@fa
    const-string/jumbo v2, "+CSQ"

    #@fd
    aput-object v2, v1, v3

    #@ff
    const-string/jumbo v2, "+CSQ: 16,99\r"

    #@102
    aput-object v2, v1, v4

    #@104
    const/16 v2, 0x11

    #@106
    aput-object v1, v0, v2

    #@108
    .line 679
    new-array v1, v5, [Ljava/lang/String;

    #@10a
    const-string/jumbo v2, "+CNMI?"

    #@10d
    aput-object v2, v1, v3

    #@10f
    const-string/jumbo v2, "+CNMI: 1,2,2,1,1\r"

    #@112
    aput-object v2, v1, v4

    #@114
    const/16 v2, 0x12

    #@116
    aput-object v1, v0, v2

    #@118
    .line 680
    new-array v1, v5, [Ljava/lang/String;

    #@11a
    const-string/jumbo v2, "+CLIR?"

    #@11d
    aput-object v2, v1, v3

    #@11f
    const-string/jumbo v2, "+CLIR: 1,3\r"

    #@122
    aput-object v2, v1, v4

    #@124
    const/16 v2, 0x13

    #@126
    aput-object v1, v0, v2

    #@128
    .line 681
    new-array v1, v5, [Ljava/lang/String;

    #@12a
    const-string/jumbo v2, "%CPVWI=2"

    #@12d
    aput-object v2, v1, v3

    #@12f
    const-string/jumbo v2, "%CPVWI: 0\r"

    #@132
    aput-object v2, v1, v4

    #@134
    const/16 v2, 0x14

    #@136
    aput-object v1, v0, v2

    #@138
    .line 682
    new-array v1, v5, [Ljava/lang/String;

    #@13a
    const-string/jumbo v2, "+CUSD=1,\"#646#\""

    #@13d
    aput-object v2, v1, v3

    #@13f
    const-string/jumbo v2, "+CUSD=0,\"You have used 23 minutes\"\r"

    #@142
    aput-object v2, v1, v4

    #@144
    const/16 v2, 0x15

    #@146
    aput-object v1, v0, v2

    #@148
    .line 683
    new-array v1, v5, [Ljava/lang/String;

    #@14a
    const-string/jumbo v2, "+CRSM=176,12258,0,0,10"

    #@14d
    aput-object v2, v1, v3

    #@14f
    const-string/jumbo v2, "+CRSM: 144,0,981062200050259429F6\r"

    #@152
    aput-object v2, v1, v4

    #@154
    const/16 v2, 0x16

    #@156
    aput-object v1, v0, v2

    #@158
    .line 684
    new-array v1, v5, [Ljava/lang/String;

    #@15a
    const-string/jumbo v2, "+CRSM=192,12258,0,0,15"

    #@15d
    aput-object v2, v1, v3

    #@15f
    const-string/jumbo v2, "+CRSM: 144,0,0000000A2FE204000FF55501020000\r"

    #@162
    aput-object v2, v1, v4

    #@164
    const/16 v2, 0x17

    #@166
    aput-object v1, v0, v2

    #@168
    .line 687
    new-array v1, v5, [Ljava/lang/String;

    #@16a
    const-string/jumbo v2, "+CRSM=192,28474,0,0,15"

    #@16d
    aput-object v2, v1, v3

    #@16f
    const-string/jumbo v2, "+CRSM: 144,0,0000005a6f3a040011f5220102011e\r"

    #@172
    aput-object v2, v1, v4

    #@174
    const/16 v2, 0x18

    #@176
    aput-object v1, v0, v2

    #@178
    .line 688
    new-array v1, v5, [Ljava/lang/String;

    #@17a
    const-string/jumbo v2, "+CRSM=178,28474,1,4,30"

    #@17d
    aput-object v2, v1, v3

    #@17f
    const-string/jumbo v2, "+CRSM: 144,0,437573746f6d65722043617265ffffff07818100398799f7ffffffffffff\r"

    #@182
    aput-object v2, v1, v4

    #@184
    const/16 v2, 0x19

    #@186
    aput-object v1, v0, v2

    #@188
    .line 689
    new-array v1, v5, [Ljava/lang/String;

    #@18a
    const-string/jumbo v2, "+CRSM=178,28474,2,4,30"

    #@18d
    aput-object v2, v1, v3

    #@18f
    const-string/jumbo v2, "+CRSM: 144,0,566f696365204d61696cffffffffffff07918150367742f3ffffffffffff\r"

    #@192
    aput-object v2, v1, v4

    #@194
    const/16 v2, 0x1a

    #@196
    aput-object v1, v0, v2

    #@198
    .line 690
    new-array v1, v5, [Ljava/lang/String;

    #@19a
    const-string/jumbo v2, "+CRSM=178,28474,3,4,30"

    #@19d
    aput-object v2, v1, v3

    #@19f
    const-string/jumbo v2, "+CRSM: 144,0,4164676a6dffffffffffffffffffffff0b918188551512c221436587ff01\r"

    #@1a2
    aput-object v2, v1, v4

    #@1a4
    const/16 v2, 0x1b

    #@1a6
    aput-object v1, v0, v2

    #@1a8
    .line 691
    new-array v1, v5, [Ljava/lang/String;

    #@1aa
    const-string/jumbo v2, "+CRSM=178,28474,4,4,30"

    #@1ad
    aput-object v2, v1, v3

    #@1af
    const-string/jumbo v2, "+CRSM: 144,0,810101c1ffffffffffffffffffffffff068114455245f8ffffffffffffff\r"

    #@1b2
    aput-object v2, v1, v4

    #@1b4
    const/16 v2, 0x1c

    #@1b6
    aput-object v1, v0, v2

    #@1b8
    .line 693
    new-array v1, v5, [Ljava/lang/String;

    #@1ba
    const-string/jumbo v2, "+CRSM=192,28490,0,0,15"

    #@1bd
    aput-object v2, v1, v3

    #@1bf
    const-string/jumbo v2, "+CRSM: 144,0,000000416f4a040011f5550102010d\r"

    #@1c2
    aput-object v2, v1, v4

    #@1c4
    const/16 v2, 0x1d

    #@1c6
    aput-object v1, v0, v2

    #@1c8
    .line 694
    new-array v1, v5, [Ljava/lang/String;

    #@1ca
    const-string/jumbo v2, "+CRSM=178,28490,1,4,13"

    #@1cd
    aput-object v2, v1, v3

    #@1cf
    const-string/jumbo v2, "+CRSM: 144,0,0206092143658709ffffffffff\r"

    #@1d2
    aput-object v2, v1, v4

    #@1d4
    const/16 v2, 0x1e

    #@1d6
    aput-object v1, v0, v2

    #@1d8
    .line 657
    sput-object v0, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    #@1da
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@a
    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    #@c
    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    #@e
    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    #@11
    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "sa"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@a
    .line 177
    new-instance v0, Ljava/net/ServerSocket;

    #@c
    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@11
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    #@17
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@19
    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    #@1c
    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    #@1f
    .line 175
    return-void
.end method

.method private init()V
    .locals 3

    #@0
    .prologue
    .line 188
    new-instance v1, Ljava/lang/Thread;

    #@2
    const-string/jumbo v2, "ModelInterpreter"

    #@5
    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@b
    .line 189
    new-instance v1, Landroid/os/HandlerThread;

    #@d
    const-string/jumbo v2, "ModelInterpreter"

    #@10
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    #@15
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    #@17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@1a
    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    #@1c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v0

    #@20
    .line 192
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@22
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    #@25
    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@27
    .line 186
    return-void
.end method

.method private onAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    #@5
    move-result v0

    #@6
    .line 449
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@8
    .line 450
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    #@a
    const-string/jumbo v2, "ERROR"

    #@d
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 443
    :cond_0
    return-void
.end method

.method private onCHLD(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    const/4 v1, 0x0

    #@1
    .line 476
    .local v1, "c1":C
    const/4 v3, 0x6

    #@2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 478
    .local v0, "c0":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x8

    #@c
    if-lt v3, v4, :cond_0

    #@e
    .line 479
    const/4 v3, 0x7

    #@f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .line 482
    .end local v1    # "c1":C
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@15
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    #@18
    move-result v2

    #@19
    .line 484
    .local v2, "success":Z
    if-nez v2, :cond_1

    #@1b
    .line 485
    new-instance v3, Lcom/android/internal/telephony/test/InterpreterEx;

    #@1d
    const-string/jumbo v4, "ERROR"

    #@20
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 469
    :cond_1
    return-void
.end method

.method private onCLCC()V
    .locals 4

    #@0
    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getClccLines()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 508
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@d
    .line 509
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/String;

    #@13
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@16
    .line 508
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 502
    :cond_0
    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    .line 496
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@d
    .line 497
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    #@f
    const-string/jumbo v2, "ERROR"

    #@12
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 490
    :cond_0
    return-void
.end method

.method private onHangup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    const/4 v0, 0x0

    #@1
    .line 459
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    #@6
    move-result v0

    #@7
    .line 461
    .local v0, "success":Z
    if-nez v0, :cond_0

    #@9
    .line 462
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    #@b
    const-string/jumbo v2, "ERROR"

    #@e
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 465
    :cond_0
    const-string/jumbo v1, "NO CARRIER"

    #@15
    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    #@17
    .line 455
    return-void
.end method

.method private onSMSSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    const-string/jumbo v1, "> "

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->print(Ljava/lang/String;)V

    #@6
    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/LineReader;->getNextLineCtrlZ()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 521
    .local v0, "pdu":Ljava/lang/String;
    const-string/jumbo v1, "+CMGS: 1"

    #@f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@12
    .line 514
    return-void
.end method


# virtual methods
.method public pauseResponses()V
    .locals 2

    #@0
    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 423
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 420
    return-void

    #@b
    .line 422
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 623
    monitor-enter p0

    #@1
    .line 625
    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 629
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .end local v0    # "bytes":[B
    :goto_0
    monitor-exit p0

    #@e
    .line 621
    return-void

    #@f
    .line 630
    :catch_0
    move-exception v1

    #@10
    .line 631
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 623
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2
.end method

.method println(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    monitor-enter p0

    #@1
    .line 608
    :try_start_0
    const-string/jumbo v2, "US-ASCII"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 612
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    #@f
    const/16 v3, 0xd

    #@11
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .end local v0    # "bytes":[B
    :goto_0
    monitor-exit p0

    #@15
    .line 604
    return-void

    #@16
    .line 614
    :catch_0
    move-exception v1

    #@17
    .line 615
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 606
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method processLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->splitCommands(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 531
    .local v1, "commands":[Ljava/lang/String;
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    array-length v6, v1

    #@6
    if-ge v3, v6, :cond_a

    #@8
    .line 532
    aget-object v0, v1, v3

    #@a
    .line 534
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v6, "A"

    #@d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_1

    #@13
    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onAnswer()V

    #@16
    .line 531
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 536
    :cond_1
    const-string/jumbo v6, "H"

    #@1c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onHangup()V

    #@25
    goto :goto_1

    #@26
    .line 538
    :cond_2
    const-string/jumbo v6, "+CHLD="

    #@29
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_3

    #@2f
    .line 539
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCHLD(Ljava/lang/String;)V

    #@32
    goto :goto_1

    #@33
    .line 540
    :cond_3
    const-string/jumbo v6, "+CLCC"

    #@36
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_4

    #@3c
    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCLCC()V

    #@3f
    goto :goto_1

    #@40
    .line 542
    :cond_4
    const-string/jumbo v6, "D"

    #@43
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_5

    #@49
    .line 543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onDial(Ljava/lang/String;)V

    #@4c
    goto :goto_1

    #@4d
    .line 544
    :cond_5
    const-string/jumbo v6, "+CMGS="

    #@50
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_6

    #@56
    .line 545
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onSMSSend(Ljava/lang/String;)V

    #@59
    goto :goto_1

    #@5a
    .line 547
    :cond_6
    const/4 v2, 0x0

    #@5b
    .line 549
    .local v2, "found":Z
    const/4 v4, 0x0

    #@5c
    .local v4, "j":I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    #@5e
    array-length v6, v6

    #@5f
    if-ge v4, v6, :cond_8

    #@61
    .line 550
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    #@63
    aget-object v6, v6, v4

    #@65
    const/4 v7, 0x0

    #@66
    aget-object v6, v6, v7

    #@68
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_9

    #@6e
    .line 551
    sget-object v6, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    #@70
    aget-object v6, v6, v4

    #@72
    const/4 v7, 0x1

    #@73
    aget-object v5, v6, v7

    #@75
    .line 552
    .local v5, "r":Ljava/lang/String;
    if-eqz v5, :cond_7

    #@77
    .line 553
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@7a
    .line 555
    :cond_7
    const/4 v2, 0x1

    #@7b
    .line 560
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_0

    #@7d
    .line 561
    new-instance v6, Lcom/android/internal/telephony/test/InterpreterEx;

    #@7f
    const-string/jumbo v7, "ERROR"

    #@82
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@85
    throw v6

    #@86
    .line 549
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@88
    goto :goto_2

    #@89
    .line 525
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "found":Z
    .end local v4    # "j":I
    :cond_a
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    #@5
    .line 294
    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    #@5
    .line 303
    return-void
.end method

.method public resumeResponses()V
    .locals 2

    #@0
    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 432
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    iput v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    #@9
    .line 434
    iget v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    #@b
    if-nez v0, :cond_0

    #@d
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 429
    return-void

    #@14
    .line 431
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 201
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@2
    if-eqz v6, :cond_1

    #@4
    .line 205
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@6
    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v5

    #@a
    .line 213
    .local v5, "s":Ljava/net/Socket;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@d
    move-result-object v6

    #@e
    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    #@10
    .line 214
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@13
    move-result-object v6

    #@14
    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    .line 221
    const-string/jumbo v6, "ModelInterpreter"

    #@19
    const-string/jumbo v7, "New connection accepted"

    #@1c
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 225
    .end local v5    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/test/LineReader;

    #@21
    iget-object v7, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    #@23
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/test/LineReader;-><init>(Ljava/io/InputStream;)V

    #@26
    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    #@28
    .line 227
    const-string/jumbo v6, "Welcome"

    #@2b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@2e
    .line 232
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    #@30
    invoke-virtual {v6}, Lcom/android/internal/telephony/test/LineReader;->getNextLine()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 236
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    #@36
    .line 263
    const-string/jumbo v6, "ModelInterpreter"

    #@39
    const-string/jumbo v7, "Disconnected"

    #@3c
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 265
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    #@41
    if-nez v6, :cond_0

    #@43
    .line 198
    return-void

    #@44
    .line 206
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@45
    .line 207
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "ModelInterpreter"

    #@48
    .line 208
    const-string/jumbo v7, "IOException on socket.accept(); stopping"

    #@4b
    .line 207
    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 209
    return-void

    #@4f
    .line 215
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v5    # "s":Ljava/net/Socket;
    :catch_1
    move-exception v1

    #@50
    .line 216
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string/jumbo v6, "ModelInterpreter"

    #@53
    .line 217
    const-string/jumbo v7, "IOException on accepted socket(); re-listening"

    #@56
    .line 216
    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    goto :goto_0

    #@5a
    .line 240
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "s":Ljava/net/Socket;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@5c
    monitor-enter v7

    #@5d
    .line 241
    :goto_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    if-lez v6, :cond_3

    #@61
    .line 243
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    #@63
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    goto :goto_2

    #@67
    .line 244
    :catch_2
    move-exception v2

    #@68
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    #@69
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit v7

    #@6a
    .line 249
    monitor-enter p0

    #@6b
    .line 251
    :try_start_4
    const-string/jumbo v6, "OK"

    #@6e
    iput-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    #@70
    .line 252
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/test/ModelInterpreter;->processLine(Ljava/lang/String;)V

    #@73
    .line 253
    iget-object v6, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    #@75
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/test/InterpreterEx; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@78
    :goto_3
    monitor-exit p0

    #@79
    goto :goto_1

    #@7a
    .line 240
    :catchall_0
    move-exception v6

    #@7b
    monitor-exit v7

    #@7c
    throw v6

    #@7d
    .line 256
    :catch_3
    move-exception v3

    #@7e
    .line 257
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    #@81
    .line 258
    const-string/jumbo v6, "ERROR"

    #@84
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@87
    goto :goto_3

    #@88
    .line 249
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v6

    #@89
    monitor-exit p0

    #@8a
    throw v6

    #@8b
    .line 254
    :catch_4
    move-exception v0

    #@8c
    .line 255
    .local v0, "ex":Lcom/android/internal/telephony/test/InterpreterEx;
    :try_start_6
    iget-object v6, v0, Lcom/android/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    #@8e
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@91
    goto :goto_3
.end method

.method public sendUnsolicited(Ljava/lang/String;)V
    .locals 1
    .param p1, "unsol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    monitor-enter p0

    #@1
    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 376
    return-void

    #@6
    .line 378
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    #@5
    .line 313
    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0
    .param p1, "gsmCause"    # I

    #@0
    .prologue
    .line 326
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    #@5
    .line 320
    return-void
.end method

.method public shutdown()V
    .locals 3

    #@0
    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    .line 642
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    #@8
    .line 643
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    #@b
    .line 647
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    #@d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 651
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    #@12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 639
    :goto_1
    return-void

    #@16
    .line 652
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_1

    #@18
    .line 648
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@19
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method splitCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 571
    const-string/jumbo v1, "AT"

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 572
    new-instance v1, Lcom/android/internal/telephony/test/InterpreterEx;

    #@d
    const-string/jumbo v2, "ERROR"

    #@10
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 575
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-ne v1, v3, :cond_1

    #@1a
    .line 577
    new-array v1, v2, [Ljava/lang/String;

    #@1c
    return-object v1

    #@1d
    .line 580
    :cond_1
    const/4 v1, 0x1

    #@1e
    new-array v0, v1, [Ljava/lang/String;

    #@20
    .line 583
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    aput-object v1, v0, v2

    #@26
    .line 585
    return-object v0
.end method

.method public triggerHangupAll()V
    .locals 2

    #@0
    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    #@5
    move-result v0

    #@6
    .line 370
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@8
    .line 371
    const-string/jumbo v1, "NO CARRIER"

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@e
    .line 364
    :cond_0
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 2

    #@0
    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    #@5
    move-result v0

    #@6
    .line 355
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@8
    .line 356
    const-string/jumbo v1, "NO CARRIER"

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@e
    .line 349
    :cond_0
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    #@5
    move-result v0

    #@6
    .line 341
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@8
    .line 342
    const-string/jumbo v1, "NO CARRIER"

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    #@e
    .line 335
    :cond_0
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 386
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    monitor-enter p0

    #@1
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    .line 285
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@9
    .line 286
    const-string/jumbo v1, "RING"

    #@c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 278
    return-void

    #@11
    .line 280
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public triggerSsn(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 384
    return-void
.end method
