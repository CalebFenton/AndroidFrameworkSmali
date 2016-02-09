.class final Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/speech/RecognitionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;)V
    .locals 1
    .param p1, "service"    # Landroid/speech/RecognitionService;

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    #@3
    .line 338
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    #@a
    .line 337
    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    .line 365
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/speech/RecognitionService;

    #@8
    .line 366
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 367
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@17
    move-result-object v2

    #@18
    .line 368
    const/4 v3, 0x3

    #@19
    .line 367
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@20
    .line 363
    :cond_0
    return-void
.end method

.method public clearReference()V
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@5
    .line 372
    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .locals 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    .line 344
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/speech/RecognitionService;

    #@8
    .line 345
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0, p2}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 346
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@17
    move-result-object v2

    #@18
    .line 347
    new-instance v3, Landroid/speech/RecognitionService$StartListeningArgs;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@20
    move-result v4

    #@21
    .line 347
    invoke-direct {v3, v0, p1, p2, v4}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    #@24
    const/4 v4, 0x1

    #@25
    .line 346
    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2c
    .line 342
    :cond_0
    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    .line 355
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/speech/RecognitionService;

    #@8
    .line 356
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->-wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 357
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0}, Landroid/speech/RecognitionService;->-get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    #@17
    move-result-object v2

    #@18
    .line 358
    const/4 v3, 0x2

    #@19
    .line 357
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@20
    .line 353
    :cond_0
    return-void
.end method
