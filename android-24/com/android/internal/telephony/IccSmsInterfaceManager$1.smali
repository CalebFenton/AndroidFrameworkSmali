.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
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
    .line 91
    iget v3, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 88
    :goto_0
    return-void

    #@8
    .line 93
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/os/AsyncResult;

    #@c
    .line 94
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@e
    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v3

    #@11
    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@13
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@15
    if-nez v5, :cond_0

    #@17
    :goto_1
    iput-boolean v1, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@19
    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@1b
    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :goto_2
    monitor-exit v3

    #@21
    goto :goto_0

    #@22
    :cond_0
    move v1, v2

    #@23
    .line 95
    goto :goto_1

    #@24
    .line 94
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v3

    #@26
    throw v1

    #@27
    .line 100
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v0, Landroid/os/AsyncResult;

    #@2b
    .line 101
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2d
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@2f
    monitor-enter v2

    #@30
    .line 102
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@32
    if-nez v1, :cond_1

    #@34
    .line 103
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@36
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@38
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3a
    check-cast v1, Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    #@43
    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@45
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@47
    check-cast v1, Ljava/util/ArrayList;

    #@49
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    #@4c
    .line 112
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@4e
    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@50
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    monitor-exit v2

    #@54
    goto :goto_0

    #@55
    .line 107
    :cond_1
    :try_start_2
    const-string/jumbo v1, "SMS"

    #@58
    const/4 v3, 0x3

    #@59
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_2

    #@5f
    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@61
    const-string/jumbo v3, "Cannot load Sms records"

    #@64
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@67
    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@69
    const/4 v3, 0x0

    #@6a
    invoke-static {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6d
    goto :goto_3

    #@6e
    .line 101
    :catchall_1
    move-exception v1

    #@6f
    monitor-exit v2

    #@70
    throw v1

    #@71
    .line 117
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73
    check-cast v0, Landroid/os/AsyncResult;

    #@75
    .line 118
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@77
    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@79
    monitor-enter v3

    #@7a
    .line 119
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@7c
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7e
    if-nez v5, :cond_3

    #@80
    :goto_4
    iput-boolean v1, v4, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@82
    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@84
    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@86
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@89
    goto :goto_2

    #@8a
    .line 118
    :catchall_2
    move-exception v1

    #@8b
    monitor-exit v3

    #@8c
    throw v1

    #@8d
    :cond_3
    move v1, v2

    #@8e
    .line 119
    goto :goto_4

    #@8f
    .line 91
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
