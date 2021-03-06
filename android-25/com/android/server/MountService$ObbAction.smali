.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;

    #@0
    .prologue
    .line 3356
    iput-object p1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3357
    iput-object p2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@7
    .line 3356
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .locals 5
    .param p1, "handler"    # Lcom/android/server/MountService$ObbActionHandler;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 3364
    :try_start_0
    iget v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    #@7
    .line 3365
    iget v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    #@9
    if-le v2, v4, :cond_0

    #@b
    .line 3366
    const-string/jumbo v2, "MountService"

    #@e
    const-string/jumbo v3, "Failed to invoke remote methods on default container service. Giving up"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 3367
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@16
    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x3

    #@1b
    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    #@1e
    .line 3368
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    #@21
    .line 3360
    :goto_0
    return-void

    #@22
    .line 3370
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleExecute()V

    #@25
    .line 3373
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@27
    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@2a
    move-result-object v2

    #@2b
    const/4 v3, 0x3

    #@2c
    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@2f
    goto :goto_0

    #@30
    .line 3375
    :catch_0
    move-exception v0

    #@31
    .line 3378
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@33
    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x4

    #@38
    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    #@3b
    goto :goto_0

    #@3c
    .line 3379
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@3d
    .line 3382
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    #@40
    .line 3383
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@42
    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, v4}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    #@49
    goto :goto_0
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3393
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-static {v2}, Lcom/android/server/MountService;->-get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@8
    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@a
    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    .line 3399
    :goto_0
    if-nez v1, :cond_0

    #@10
    .line 3400
    new-instance v2, Ljava/io/IOException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Couldn\'t read OBB file: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@20
    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 3394
    :catch_0
    move-exception v0

    #@2f
    .line 3395
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MountService"

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 3396
    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@40
    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@42
    .line 3395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 3397
    const/4 v1, 0x0

    #@4e
    .local v1, "obbInfo":Landroid/content/res/ObbInfo;
    goto :goto_0

    #@4f
    .line 3402
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    :cond_0
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .locals 4
    .param p1, "status"    # I

    #@0
    .prologue
    .line 3406
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@6
    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 3407
    :cond_0
    return-void

    #@b
    .line 3411
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@d
    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@f
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@11
    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@13
    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@15
    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    #@17
    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 3405
    :goto_0
    return-void

    #@1b
    .line 3412
    :catch_0
    move-exception v0

    #@1c
    .line 3413
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MountService"

    #@1f
    const-string/jumbo v2, "MountServiceListener went away while calling onObbStateChanged"

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method
