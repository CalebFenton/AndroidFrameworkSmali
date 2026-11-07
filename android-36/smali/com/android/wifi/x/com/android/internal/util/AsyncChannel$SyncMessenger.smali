.class Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static blacklist sCount:I

.field private static blacklist sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 764
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    .line 766
    const/4 v0, 0x0

    sput v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method

.method private static blacklist obtain()Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    .registers 6

    .line 807
    sget-object v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 808
    :try_start_3
    sget-object v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 809
    new-instance v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    .line 810
    .local v1, "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    .line 811
    iget-object v2, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 812
    new-instance v2, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/wifi/x/com/android/internal/util/AsyncChannel-IA;)V

    iput-object v2, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    .line 813
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    goto :goto_58

    .line 815
    .end local v1    # "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    :cond_50
    sget-object v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;

    .line 817
    .restart local v1    # "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    :goto_58
    monitor-exit v0

    .line 818
    return-object v1

    .line 817
    .end local v1    # "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private blacklist recycle()V
    .registers 3

    .line 825
    sget-object v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 826
    :try_start_3
    sget-object v1, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static blacklist sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 8
    .param p0, "dstMessenger"    # Landroid/os/Messenger;
    .param p1, "msg"    # Landroid/os/Message;

    .line 837
    invoke-static {}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;

    move-result-object v0

    .line 838
    .local v0, "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    const/4 v1, 0x0

    .line 840
    .local v1, "resultMsg":Landroid/os/Message;
    if-eqz p0, :cond_57

    if-eqz p1, :cond_57

    .line 841
    :try_start_9
    iget-object v2, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 842
    iget-object v2, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_46

    .line 843
    :try_start_14
    iget-object v3, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 844
    const-string v3, "AsyncChannel"

    const-string v5, "mResultMsg should be null here"

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v3, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v4}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    .line 847
    :cond_29
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 848
    iget-object v3, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 849
    iget-object v3, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    move-object v1, v3

    .line 850
    iget-object v3, v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v4}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    .line 851
    monitor-exit v2

    goto :goto_57

    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_43

    .end local v0    # "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    .end local v1    # "resultMsg":Landroid/os/Message;
    .end local p0    # "dstMessenger":Landroid/os/Messenger;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_45
    throw v3
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_46} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46

    .line 855
    .restart local v0    # "sm":Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
    .restart local v1    # "resultMsg":Landroid/os/Message;
    .restart local p0    # "dstMessenger":Landroid/os/Messenger;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_46
    move-exception v2

    .line 856
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 853
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_4f
    move-exception v2

    .line 854
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_57
    :goto_57
    nop

    .line 858
    :goto_58
    invoke-direct {v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    .line 859
    return-object v1
.end method
