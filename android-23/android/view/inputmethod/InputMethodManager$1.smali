.class Landroid/view/inputmethod/InputMethodManager$1;
.super Lcom/android/internal/view/IInputMethodClient$Stub;
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
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 554
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodClient$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 559
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    #@3
    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 560
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@9
    move-result-object v2

    #@a
    .line 561
    .local v2, "sargs":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    .line 562
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@e
    .line 563
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@10
    .line 564
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@12
    .line 565
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@14
    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@16
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@18
    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@1a
    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    #@21
    .line 567
    const-wide/16 v4, 0x5

    #@23
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@25
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 568
    const-string/jumbo v3, "Timeout waiting for dump"

    #@2e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 556
    :cond_0
    :goto_0
    return-void

    #@32
    .line 570
    :catch_0
    move-exception v0

    #@33
    .line 571
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Interrupted waiting for dump"

    #@36
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    goto :goto_0
.end method

.method public onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    .locals 3
    .param p1, "res"    # Lcom/android/internal/view/InputBindResult;

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@6
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 580
    return-void
.end method

.method public onUnbindMethod(I)V
    .locals 4
    .param p1, "sequence"    # I

    #@0
    .prologue
    .line 586
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@6
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@8
    const/4 v2, 0x3

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 585
    return-void
.end method

.method public setActive(Z)V
    .locals 5
    .param p1, "active"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 591
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@3
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@7
    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@9
    if-eqz p1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    const/4 v4, 0x4

    #@d
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 590
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 591
    goto :goto_0
.end method

.method public setUserActionNotificationSequenceNumber(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@2
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    #@6
    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    #@8
    const/16 v2, 0x9

    #@a
    .line 597
    const/4 v3, 0x0

    #@b
    .line 596
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    #@12
    .line 595
    return-void
.end method

.method public setUsingInputMethod(Z)V
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 576
    return-void
.end method
