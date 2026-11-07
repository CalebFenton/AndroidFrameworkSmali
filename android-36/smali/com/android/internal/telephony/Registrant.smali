.class public Lcom/android/internal/telephony/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field blacklist refH:Ljava/lang/ref/WeakReference;

.field blacklist userObj:Ljava/lang/Object;

.field blacklist what:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 31
    iput p2, p0, Lcom/android/internal/telephony/Registrant;->what:I

    .line 32
    iput-object p3, p0, Lcom/android/internal/telephony/Registrant;->userObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/Registrant;->userObj:Ljava/lang/Object;

    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_6
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method blacklist internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void

    .line 81
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 83
    iget v2, p0, Lcom/android/internal/telephony/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 84
    new-instance v2, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist messageForRegistrant()Landroid/os/Message;
    .registers 3

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_b

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_b
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    iget v1, p0, Lcom/android/internal/telephony/Registrant;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/Registrant;->userObj:Ljava/lang/Object;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist notifyException(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyRegistrant()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyRegistrant(Landroid/os/AsyncResult;)V
    .registers 3

    .line 70
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist notifyResult(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
