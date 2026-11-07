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
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 151
    monitor-enter p1

    .line 152
    :try_start_3
    iput-object p2, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 153
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 115
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    .line 117
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_60

    return-void

    .line 139
    :pswitch_f
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_19

    .line 140
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_20

    .line 142
    :cond_19
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot read SMSC"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 144
    :goto_20
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    .line 122
    :pswitch_24
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    .line 126
    :pswitch_33
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4b

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    goto :goto_5b

    .line 131
    :cond_4b
    const-string p1, "SMS"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot load Sms records"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 135
    :cond_5b
    :goto_5b
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_33
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_f
        :pswitch_24
    .end packed-switch
.end method
