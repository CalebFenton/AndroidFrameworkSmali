.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 106
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 107
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    .line 108
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@c
    .line 110
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@e
    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    #@10
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    #@13
    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 65
    iget v3, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 62
    :goto_0
    return-void

    #@8
    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/os/AsyncResult;

    #@c
    .line 68
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@e
    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v2

    #@11
    .line 69
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    if-nez v1, :cond_0

    #@15
    .line 70
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@17
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@19
    check-cast v1, [I

    #@1b
    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    #@1d
    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "GET_RECORD_SIZE Size "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@2d
    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    #@2f
    const/4 v5, 0x0

    #@30
    aget v4, v4, v5

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 75
    const-string/jumbo v4, " total "

    #@39
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@3f
    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    #@41
    const/4 v5, 0x1

    #@42
    aget v4, v4, v5

    #@44
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 76
    const-string/jumbo v4, " #record "

    #@4b
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 76
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@51
    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    #@53
    const/4 v5, 0x2

    #@54
    aget v4, v4, v5

    #@56
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    #@61
    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    :goto_1
    monitor-exit v2

    #@65
    goto :goto_0

    #@66
    .line 68
    :catchall_0
    move-exception v1

    #@67
    monitor-exit v2

    #@68
    throw v1

    #@69
    .line 82
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6b
    check-cast v0, Landroid/os/AsyncResult;

    #@6d
    .line 83
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@6f
    iget-object v3, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    #@71
    monitor-enter v3

    #@72
    .line 84
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@74
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@76
    if-nez v5, :cond_1

    #@78
    :goto_2
    iput-boolean v1, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    #@7a
    .line 85
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@7d
    monitor-exit v3

    #@7e
    goto :goto_0

    #@7f
    :cond_1
    move v1, v2

    #@80
    .line 84
    goto :goto_2

    #@81
    .line 83
    :catchall_1
    move-exception v1

    #@82
    monitor-exit v3

    #@83
    throw v1

    #@84
    .line 89
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@86
    check-cast v0, Landroid/os/AsyncResult;

    #@88
    .line 90
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@8a
    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    #@8c
    monitor-enter v2

    #@8d
    .line 91
    :try_start_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8f
    if-nez v1, :cond_3

    #@91
    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@93
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@95
    check-cast v1, Ljava/util/List;

    #@97
    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    #@99
    .line 99
    :cond_2
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@9c
    goto :goto_1

    #@9d
    .line 90
    :catchall_2
    move-exception v1

    #@9e
    monitor-exit v2

    #@9f
    throw v1

    #@a0
    .line 94
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@a2
    const-string/jumbo v3, "Cannot load ADN records"

    #@a5
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    #@a8
    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@aa
    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    #@ac
    if-eqz v1, :cond_2

    #@ae
    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@b0
    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    #@b2
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@b5
    goto :goto_3

    #@b6
    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
