.class public abstract Landroid/app/IntentService;
.super Landroid/app/Service;
.source "IntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IntentService$ServiceHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mRedelivery:Z

.field private volatile greylist mServiceHandler:Landroid/app/IntentService$ServiceHandler;

.field private volatile greylist-max-o mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 4

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/IntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    .line 123
    new-instance v1, Landroid/app/IntentService$ServiceHandler;

    iget-object v2, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Landroid/app/IntentService$ServiceHandler;-><init>(Landroid/app/IntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    .line 124
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 149
    return-void
.end method

.method protected abstract whitelist onHandleIntent(Landroid/content/Intent;)V
.end method

.method public whitelist onStart(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 128
    iget-object v0, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    invoke-virtual {v0}, Landroid/app/IntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 130
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Landroid/app/IntentService;->mServiceHandler:Landroid/app/IntentService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/app/IntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 142
    invoke-virtual {p0, p1, p3}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 143
    iget-boolean v0, p0, Landroid/app/IntentService;->mRedelivery:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_a

    :cond_9
    const/4 v0, 0x2

    :goto_a
    return v0
.end method

.method public whitelist setIntentRedelivery(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 109
    iput-boolean p1, p0, Landroid/app/IntentService;->mRedelivery:Z

    .line 110
    return-void
.end method
