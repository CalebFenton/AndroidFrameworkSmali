.class public abstract Lcom/android/internal/util/AsyncService;
.super Landroid/app/Service;
.source "AsyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
    }
.end annotation


# static fields
.field public static final CMD_ASYNC_SERVICE_DESTROY:I = 0x1000000

.field public static final CMD_ASYNC_SERVICE_ON_START_INTENT:I = 0xffffff

.field protected static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AsyncService"


# instance fields
.field mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

.field mHandler:Landroid/os/Handler;

.field protected mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    #@2
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    #@0
    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 85
    invoke-virtual {p0}, Lcom/android/internal/util/AsyncService;->createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    #@9
    .line 86
    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    #@b
    iget-object v0, v0, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mHandler:Landroid/os/Handler;

    #@d
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@f
    .line 87
    new-instance v0, Landroid/os/Messenger;

    #@11
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@13
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@16
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    #@18
    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 3

    #@0
    .prologue
    .line 114
    const-string/jumbo v1, "AsyncService"

    #@3
    const-string/jumbo v2, "onDestroy"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 116
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 117
    .local v0, "msg":Landroid/os/Message;
    const/high16 v1, 0x1000000

    #@11
    iput v1, v0, Landroid/os/Message;->what:I

    #@13
    .line 118
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 95
    const-string/jumbo v1, "AsyncService"

    #@3
    const-string/jumbo v2, "onStartCommand"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 97
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 98
    .local v0, "msg":Landroid/os/Message;
    const v1, 0xffffff

    #@12
    iput v1, v0, Landroid/os/Message;->what:I

    #@14
    .line 99
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@16
    .line 100
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@18
    .line 101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    .line 102
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1f
    .line 104
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    #@21
    iget v1, v1, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mRestartFlags:I

    #@23
    return v1
.end method
