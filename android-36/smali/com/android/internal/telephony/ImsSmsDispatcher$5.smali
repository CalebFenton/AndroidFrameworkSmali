.class Lcom/android/internal/telephony/ImsSmsDispatcher$5;
.super Ljava/lang/Object;
.source "ImsSmsDispatcher.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 370
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public blacklist connectionReady(Lcom/android/ims/ImsManager;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 372
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v0, "ImsManager: connection ready."

    invoke-static {p2, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 373
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 374
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V

    .line 375
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$msetListeners(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    .line 376
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsManager(Lcom/android/ims/ImsManager;)Z

    .line 380
    monitor-exit p2

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public blacklist connectionUnavailable(I)V
    .registers 5

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsManager: connection unavailable, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_34

    .line 387
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v0, "connectionUnavailable: unexpected, received server error"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    :cond_34
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 392
    :try_start_3b
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$5;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsManager(Lcom/android/ims/ImsManager;)Z

    .line 397
    monitor-exit p1

    return-void

    :catchall_50
    move-exception p0

    monitor-exit p1
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_50

    throw p0
.end method
