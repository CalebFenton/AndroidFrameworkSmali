.class Lcom/android/internal/telephony/ImsSmsDispatcher$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(I)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 114
    :try_start_1d
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 115
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p0
.end method

.method public whitelist onRegistering(I)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 123
    :try_start_1d
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 124
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p0
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 131
    :try_start_1d
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 132
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p0
.end method
