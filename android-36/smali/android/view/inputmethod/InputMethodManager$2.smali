.class Landroid/view/inputmethod/InputMethodManager$2;
.super Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1511
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1516
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1517
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1518
    .local v2, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1519
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1520
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1521
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1522
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 1524
    :try_start_21
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1525
    const-string v1, "Timeout waiting for dump"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_30} :catch_31

    .line 1529
    :cond_30
    goto :goto_37

    .line 1527
    :catch_31
    move-exception v1

    .line 1528
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_37
    return-void
.end method

.method public blacklist onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .registers 6
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "id"    # I

    .line 1545
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1546
    return-void
.end method

.method public blacklist onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    .registers 4
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;

    .line 1534
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1535
    return-void
.end method

.method public blacklist onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .registers 6
    .param p1, "res"    # Lcom/android/internal/inputmethod/InputBindResult;
    .param p2, "startInputSeq"    # I

    .line 1539
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0x28

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1541
    return-void
.end method

.method public blacklist onUnbindAccessibilityService(II)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "id"    # I

    .line 1555
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    return-void
.end method

.method public blacklist onUnbindMethod(II)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "unbindReason"    # I

    .line 1550
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1551
    return-void
.end method

.method public blacklist reportFullscreenMode(Z)V
    .registers 5
    .param p1, "fullscreen"    # Z

    .line 1588
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1590
    return-void
.end method

.method public blacklist scheduleStartInputIfNecessary(Z)V
    .registers 5
    .param p1, "fullscreen"    # Z

    .line 1582
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1583
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1584
    return-void
.end method

.method public blacklist setActive(ZZ)V
    .registers 5
    .param p1, "active"    # Z
    .param p2, "fullscreen"    # Z

    .line 1560
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1561
    return-void
.end method

.method public blacklist setImeTraceEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1594
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->setEnabled(Z)V

    .line 1595
    return-void
.end method

.method public blacklist setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1571
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1572
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1573
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1574
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-interface {v1, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1576
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1577
    return-void
.end method

.method public blacklist setInteractive(ZZ)V
    .registers 5
    .param p1, "interactive"    # Z
    .param p2, "fullscreen"    # Z

    .line 1565
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1567
    return-void
.end method

.method public blacklist throwExceptionFromSystem(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1599
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
