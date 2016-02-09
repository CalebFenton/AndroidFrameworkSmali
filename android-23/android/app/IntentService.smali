.class public abstract Landroid/app/IntentService;
.super Landroid/app/Service;
.source "IntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IntentService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Landroid/app/IntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    #@5
    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 147
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()V
    .locals 3

    #@0
    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "IntentService["

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "]"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@25
    .line 109
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@28
    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    #@2e
    .line 112
    new-instance v1, Landroid/app/IntentService$ServiceHandler;

    #@30
    iget-object v2, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    #@32
    invoke-direct {v1, p0, v2}, Landroid/app/IntentService$ServiceHandler;-><init>(Landroid/app/IntentService;Landroid/os/Looper;)V

    #@35
    iput-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    #@37
    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    #@2
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@5
    .line 136
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    #@2
    invoke-virtual {v1}, Landroid/app/IntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    .line 118
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 119
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 120
    iget-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    #@c
    invoke-virtual {v1, v0}, Landroid/app/IntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 116
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 131
    invoke-virtual {p0, p1, p3}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    #@3
    .line 132
    iget-boolean v0, p0, Landroid/app/IntentService;->mRedelivery:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x3

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x2

    #@a
    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/app/IntentService;->mRedelivery:Z

    #@2
    .line 97
    return-void
.end method
