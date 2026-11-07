.class Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static blacklist sCount:I

.field private static blacklist sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 764
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 766
    sput v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist obtain()Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;
    .registers 6

    .line 807
    sget-object v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 808
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 809
    new-instance v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;

    invoke-direct {v1}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;-><init>()V

    .line 810
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    .line 811
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 812
    new-instance v2, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    iget-object v3, v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/telephony/AsyncChannel-IA;)V

    iput-object v2, v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    .line 813
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    goto :goto_53

    :catchall_49
    move-exception v1

    goto :goto_55

    .line 815
    :cond_4b
    sget-object v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;

    .line 817
    :goto_53
    monitor-exit v0

    return-object v1

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_49

    throw v1
.end method

.method private blacklist recycle()V
    .registers 3

    .line 825
    sget-object v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    .line 826
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private static blacklist sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 7

    .line 837
    invoke-static {}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5d

    if-eqz p1, :cond_5d

    .line 841
    :try_start_9
    iget-object v2, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 842
    iget-object v2, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_4a

    .line 843
    :try_start_14
    iget-object v3, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 844
    const-string v3, "AsyncChannel"

    const-string v4, "mResultMsg should be null here"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v3, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_48

    .line 847
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 848
    iget-object p0, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 849
    iget-object p0, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_29

    .line 850
    :try_start_3d
    iget-object p1, v0, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/telephony/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    .line 851
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_45

    move-object v1, p0

    goto :goto_5d

    :catchall_45
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_29

    :try_start_49
    throw p0
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4a} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    goto :goto_4e

    :catch_4c
    move-exception p0

    goto :goto_56

    .line 856
    :goto_4e
    const-string p1, "AsyncChannel"

    const-string v2, "error in sendMessageSynchronously"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 854
    :goto_56
    const-string p1, "AsyncChannel"

    const-string v2, "error in sendMessageSynchronously"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    :cond_5d
    :goto_5d
    invoke-direct {v0}, Lcom/android/internal/telephony/AsyncChannel$SyncMessenger;->recycle()V

    return-object v1
.end method
