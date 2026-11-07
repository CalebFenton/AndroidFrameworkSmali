.class Lcom/android/internal/telephony/euicc/EuiccController$12;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetAvailableMemoryInBytesCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetAvailableMemoryInBytesFromEuiccService(I)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$memoryRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1922
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$memoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 1

    .line 1937
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist onGetAvailableMemoryInBytesComplete(J)V
    .registers 4

    .line 1925
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$memoryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1926
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public blacklist onUnsupportedOperationExceptionComplete(Ljava/lang/String;)V
    .registers 4

    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1932
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$12;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
