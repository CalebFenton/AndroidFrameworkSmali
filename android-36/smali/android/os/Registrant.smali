.class public Landroid/os/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field greylist-max-o refH:Ljava/lang/ref/WeakReference;

.field greylist-max-o userObj:Ljava/lang/Object;

.field greylist-max-o what:I


# direct methods
.method public constructor greylist <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 31
    iput p2, p0, Landroid/os/Registrant;->what:I

    .line 32
    iput-object p3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public greylist clear()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object v0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public greylist-max-p getHandler()Landroid/os/Handler;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_6
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method greylist-max-o internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 76
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 78
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_a

    .line 79
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    goto :goto_1e

    .line 81
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 83
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 84
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1e
    return-void
.end method

.method public greylist messageForRegistrant()Landroid/os/Message;
    .registers 4

    .line 97
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 99
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 100
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    .line 102
    const/4 v1, 0x0

    return-object v1

    .line 104
    :cond_b
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 106
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 107
    iget-object v2, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    return-object v1
.end method

.method public greylist-max-o notifyException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public greylist notifyRegistrant()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public greylist notifyRegistrant(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 70
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public greylist notifyResult(Ljava/lang/Object;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method
