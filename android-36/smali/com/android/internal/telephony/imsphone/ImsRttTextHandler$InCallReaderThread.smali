.class Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;
.super Ljava/lang/Thread;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallReaderThread"
.end annotation


# instance fields
.field private final blacklist mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 82
    const-string v0, "ImsRttTextHandler"

    :cond_2
    :goto_2
    const/16 v1, 0x270f

    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v2}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_3e

    if-nez v2, :cond_1b

    .line 93
    const-string v2, "RttReaderThread - Stream closed unexpectedly. Attempt to reinitialize."

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 98
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_2

    .line 101
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->-$$Nest$fgetmReadNotifier(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->-$$Nest$fgetmReadNotifier(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catch_3e
    move-exception v2

    .line 87
    const-string v3, "RttReaderThread - IOException encountered reading from in-call: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_53

    .line 84
    :catch_4e
    const-string p0, "RttReaderThread - Thread interrupted. Finishing."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void
.end method
