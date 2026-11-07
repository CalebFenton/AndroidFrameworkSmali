.class Lcom/android/internal/telephony/euicc/EuiccController$10;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DumpEuiccServiceCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1822
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDumpEuiccServiceComplete(Ljava/lang/String;)V
    .registers 4

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$pw:Ljava/io/PrintWriter;

    const-string v1, "===== EUICC SERVICE ====="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist onEuiccServiceUnavailable()V
    .registers 3

    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$pw:Ljava/io/PrintWriter;

    const-string v1, "===== EUICC SERVICE UNAVAILABLE ====="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
