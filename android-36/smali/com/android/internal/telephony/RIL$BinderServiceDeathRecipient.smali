.class final Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderServiceDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private blacklist mLinkedFlags:J

.field private final blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;I)V
    .registers 3
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

    .line 463
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    const-wide/16 p1, 0x0

    .line 465
    iput-wide p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mLinkedFlags:J

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    iget-wide v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mLinkedFlags:J

    .line 492
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 490
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->unlinkToDeath()V

    return-void
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3b

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Linked to death for service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 471
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 472
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mLinkedFlags:J

    .line 473
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void

    .line 475
    :cond_3b
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to link to death for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mService:I

    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .registers 4

    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_15

    .line 481
    iget-wide v1, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mLinkedFlags:J

    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    .line 483
    iput-wide v0, p0, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->mLinkedFlags:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 485
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_13

    throw v0
.end method
