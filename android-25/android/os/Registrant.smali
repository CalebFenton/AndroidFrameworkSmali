.class public Landroid/os/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field refH:Ljava/lang/ref/WeakReference;

.field userObj:Ljava/lang/Object;

.field what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    #@a
    .line 31
    iput p2, p0, Landroid/os/Registrant;->what:I

    #@c
    .line 32
    iput-object p3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    #@e
    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    #@3
    .line 39
    iput-object v0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    #@5
    .line 36
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 113
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 114
    return-object v1

    #@6
    .line 116
    :cond_0
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Handler;

    #@e
    return-object v0
.end method

.method internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@6
    .line 75
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    #@9
    .line 70
    :goto_0
    return-void

    #@a
    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    .line 79
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    #@10
    iput v2, v1, Landroid/os/Message;->what:I

    #@12
    .line 81
    new-instance v2, Landroid/os/AsyncResult;

    #@14
    iget-object v3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    #@16
    invoke-direct {v2, v3, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@19
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e
    goto :goto_0
.end method

.method public messageForRegistrant()Landroid/os/Message;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 94
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@4
    move-result-object v0

    #@5
    .line 96
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@7
    .line 97
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    #@a
    .line 99
    return-object v2

    #@b
    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 103
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    #@11
    iput v2, v1, Landroid/os/Message;->what:I

    #@13
    .line 104
    iget-object v2, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    #@15
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    .line 106
    return-object v1
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4
    .line 55
    return-void
.end method

.method public notifyRegistrant()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    invoke-virtual {p0, v0, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4
    .line 43
    return-void
.end method

.method public notifyRegistrant(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 66
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7
    .line 64
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4
    .line 49
    return-void
.end method
