.class Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static sCount:I

.field private static sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -wrap0(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 1
    .param p0, "dstMessenger"    # Landroid/os/Messenger;
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 742
    new-instance v0, Ljava/util/Stack;

    #@2
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@7
    .line 744
    const/4 v0, 0x0

    #@8
    sput v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    #@a
    .line 740
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .locals 6

    #@0
    .prologue
    .line 784
    sget-object v2, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@2
    monitor-enter v2

    #@3
    .line 785
    :try_start_0
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 786
    new-instance v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    #@d
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    #@10
    .line 787
    .local v0, "sm":Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    new-instance v1, Landroid/os/HandlerThread;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "SyncHandler-"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    sget v4, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    #@20
    add-int/lit8 v5, v4, 0x1

    #@22
    sput v5, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@2f
    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    #@31
    .line 788
    iget-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    #@33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@36
    .line 789
    new-instance v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    #@3d
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v3

    #@41
    const/4 v4, 0x0

    #@42
    invoke-direct {v1, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)V

    #@45
    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@47
    .line 790
    new-instance v1, Landroid/os/Messenger;

    #@49
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@4b
    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@4e
    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    :goto_0
    monitor-exit v2

    #@51
    .line 795
    return-object v0

    #@52
    .line 792
    .end local v0    # "sm":Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@54
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .restart local v0    # "sm":Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    goto :goto_0

    #@5b
    .line 784
    .end local v0    # "sm":Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    :catchall_0
    move-exception v1

    #@5c
    monitor-exit v2

    #@5d
    throw v1
.end method

.method private recycle()V
    .locals 2

    #@0
    .prologue
    .line 802
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@2
    monitor-enter v1

    #@3
    .line 803
    :try_start_0
    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 801
    return-void

    #@a
    .line 802
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private static sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .locals 7
    .param p0, "dstMessenger"    # Landroid/os/Messenger;
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 814
    invoke-static {}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    #@4
    move-result-object v3

    #@5
    .line 816
    .local v3, "sm":Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    if-eqz p0, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    .line 817
    :try_start_0
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    #@b
    iput-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@d
    .line 818
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@f
    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@14
    .line 819
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    #@17
    .line 820
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@19
    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@21
    .line 830
    :goto_0
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@23
    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get1(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    #@26
    move-result-object v2

    #@27
    .line 831
    .local v2, "resultMsg":Landroid/os/Message;
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    #@2a
    .line 832
    return-object v2

    #@2b
    .line 818
    .end local v2    # "resultMsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    #@2c
    :try_start_3
    monitor-exit v5

    #@2d
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@2e
    .line 825
    :catch_0
    move-exception v1

    #@2f
    .line 826
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@31
    invoke-static {v4, v6}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;

    #@34
    goto :goto_0

    #@35
    .line 823
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@37
    const/4 v5, 0x0

    #@38
    invoke-static {v4, v5}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    goto :goto_0

    #@3c
    .line 827
    :catch_1
    move-exception v0

    #@3d
    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    #@3f
    invoke-static {v4, v6}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;

    #@42
    goto :goto_0
.end method
