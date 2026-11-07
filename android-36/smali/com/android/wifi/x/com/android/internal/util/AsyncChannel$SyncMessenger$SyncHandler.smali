.class Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field private blacklist mLockObject:Ljava/lang/Object;

.field private blacklist mResultMsg:Landroid/os/Message;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLockObject(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResultMsg(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 787
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 781
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    .line 788
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/wifi/x/com/android/internal/util/AsyncChannel-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msgCopy":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 795
    iget-object v1, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_a
    iput-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    .line 797
    iget-object v2, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v2
.end method
