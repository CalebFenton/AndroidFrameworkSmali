.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .locals 1
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 16395
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 16390
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@5
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@a
    .line 16392
    new-instance v0, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    #@11
    .line 16394
    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 16423
    packed-switch p2, :pswitch_data_0

    #@3
    .line 16422
    :goto_0
    return-void

    #@4
    .line 16425
    :pswitch_0
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/os/Bundle;

    #@a
    invoke-interface {p1, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    #@d
    goto :goto_0

    #@e
    .line 16429
    :pswitch_1
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@10
    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@12
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@14
    check-cast v0, Ljava/lang/Long;

    #@16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v4

    #@1a
    invoke-interface {p1, v1, v2, v4, v5}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    #@1d
    goto :goto_0

    #@1e
    .line 16423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 16436
    const-string/jumbo v1, "PackageManager"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Move "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " created "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 16438
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@2c
    move-result-object v0

    #@2d
    .line 16439
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@2f
    .line 16440
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@31
    .line 16441
    const/4 v1, 0x1

    #@32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@39
    .line 16435
    return-void
.end method

.method private notifyStatusChanged(II)V
    .locals 2
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    #@0
    .prologue
    .line 16445
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    #@5
    .line 16444
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .locals 5
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    #@0
    .prologue
    .line 16449
    const-string/jumbo v1, "PackageManager"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Move "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " status "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 16451
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@28
    move-result-object v0

    #@29
    .line 16452
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@2b
    .line 16453
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@2d
    .line 16454
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v1

    #@31
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@33
    .line 16455
    const/4 v1, 0x2

    #@34
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3b
    .line 16457
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    #@3d
    monitor-enter v2

    #@3e
    .line 16458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    #@40
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit v2

    #@44
    .line 16448
    return-void

    #@45
    .line 16457
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 16408
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4
    .line 16409
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@6
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@9
    move-result v4

    #@a
    .line 16410
    .local v4, "n":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@d
    .line 16411
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@f
    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/pm/IPackageMoveObserver;

    #@15
    .line 16413
    .local v1, "callback":Landroid/content/pm/IPackageMoveObserver;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    #@17
    invoke-direct {p0, v1, v5, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 16410
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 16417
    .end local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@1f
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@22
    .line 16418
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@25
    .line 16407
    return-void

    #@26
    .line 16414
    .restart local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catch_0
    move-exception v3

    #@27
    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    #@0
    .prologue
    .line 16399
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 16398
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    #@0
    .prologue
    .line 16403
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 16402
    return-void
.end method
