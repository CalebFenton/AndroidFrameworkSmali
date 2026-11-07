.class public Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.super Landroid/os/Handler;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;,
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;
    }
.end annotation


# static fields
.field public static final blacklist MAX_BUFFERED_CHARACTER_COUNT:I = 0x5

.field public static final blacklist MAX_BUFFERING_DELAY_MILLIS:I = 0xc8

.field public static final blacklist MAX_CODEPOINTS_PER_SECOND:I = 0x1e


# instance fields
.field private blacklist mBufferedTextToIncall:Ljava/lang/StringBuffer;

.field private blacklist mBufferedTextToNetwork:Ljava/lang/StringBuffer;

.field private blacklist mCodepointsAvailableForTransmission:I

.field private final blacklist mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

.field private blacklist mReadNotifier:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

.field private blacklist mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReadNotifier(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V
    .registers 3

    .line 206
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x1e

    .line 110
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 111
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 115
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    .line 207
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    return-void
.end method


# virtual methods
.method public blacklist getBufferedTextToIncall()Ljava/lang/StringBuffer;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public blacklist getNetworkBufferText()Ljava/lang/String;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSendToIncall()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ImsRttTextHandler"

    if-eq v0, v1, :cond_cb

    const/4 v1, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v1, :cond_a8

    const/4 v1, 0x3

    const/16 v6, 0x270f

    if-eq v0, v1, :cond_76

    const-wide/16 v1, 0x3e8

    if-eq v0, v4, :cond_40

    if-eq v0, v3, :cond_2f

    if-eq v0, v6, :cond_1c

    goto/16 :goto_a7

    .line 192
    :cond_1c
    :try_start_1c
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz p1, :cond_28

    .line 193
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 194
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_28} :catch_28

    :catch_28
    :cond_28
    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    goto/16 :goto_a7

    .line 185
    :cond_2f
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    if-lez v0, :cond_a7

    .line 187
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 165
    :cond_40
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 165
    invoke-virtual {p1, v5, v0}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result p1

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_53

    goto :goto_a7

    .line 172
    :cond_53
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuffer;->offsetByCodePoints(II)I

    move-result v0

    .line 175
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 177
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;->write(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 181
    invoke-virtual {p0, v3, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 131
    :cond_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_80

    .line 132
    const-string p0, "RTT msg.obj is null. Ignoring."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_80
    check-cast p1, Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_91

    .line 137
    const-string v0, "RTT text stream is null. Writing to in-call buffer."

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 142
    :cond_91
    :try_start_91
    invoke-virtual {v0, p1}, Landroid/telecom/Connection$RttTextStream;->write(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception v0

    .line 144
    const-string v1, "IOException encountered writing to in-call: %s"

    invoke-static {v2, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a7
    :goto_a7
    return-void

    .line 151
    :cond_a8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result p1

    if-lt p1, v3, :cond_c5

    .line 157
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_c5
    const-wide/16 v0, 0xc8

    .line 159
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 122
    :cond_cb
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz v0, :cond_d4

    goto :goto_e7

    .line 126
    :cond_d4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection$RttTextStream;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 127
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;-><init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 123
    :cond_e7
    :goto_e7
    const-string p0, "RTT text stream already initialized. Ignoring."

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist initialize(Landroid/telecom/Connection$RttTextStream;)V
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRttTextHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendToInCall(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    .line 211
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setReadNotifier(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public blacklist setRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-void
.end method

.method public blacklist tearDown()V
    .registers 2

    const/16 v0, 0x270f

    .line 220
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
