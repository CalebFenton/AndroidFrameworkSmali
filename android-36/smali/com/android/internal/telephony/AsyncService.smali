.class public abstract Lcom/android/internal/telephony/AsyncService;
.super Landroid/app/Service;
.source "AsyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;
    }
.end annotation


# static fields
.field public static final blacklist CMD_ASYNC_SERVICE_DESTROY:I = 0x1000000

.field public static final blacklist CMD_ASYNC_SERVICE_ON_START_INTENT:I = 0xffffff

.field protected static final blacklist DBG:Z = true


# instance fields
.field blacklist mAsyncServiceInfo:Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;

.field blacklist mHandler:Landroid/os/Handler;

.field protected blacklist mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist createHandler()Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/AsyncService;->createHandler()Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;

    .line 86
    iget-object v0, v0, Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AsyncService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 114
    const-string v0, "AsyncService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x1000000

    .line 117
    iput v1, v0, Landroid/os/Message;->what:I

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 95
    const-string v0, "AsyncService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const v1, 0xffffff

    .line 98
    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 100
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/android/internal/telephony/AsyncService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;

    iget p0, p0, Lcom/android/internal/telephony/AsyncService$AsyncServiceInfo;->mRestartFlags:I

    return p0
.end method
