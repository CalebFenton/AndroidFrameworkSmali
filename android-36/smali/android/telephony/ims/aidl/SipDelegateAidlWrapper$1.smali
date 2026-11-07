.class Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegate$Stub;
.source "SipDelegateAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$cleanupSession$3(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .registers 2
    .param p0, "d"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p1, "callId"    # Ljava/lang/String;

    .line 100
    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->cleanupSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyMessageReceiveError$2(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 3
    .param p0, "d"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 85
    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyMessageReceived$1(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .registers 2
    .param p0, "d"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 70
    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessage$0(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V
    .registers 4
    .param p0, "d"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 56
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/stub/SipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method


# virtual methods
.method public blacklist cleanupSession(Ljava/lang/String;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    .line 95
    .local v0, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-nez v0, :cond_9

    .line 96
    return-void

    .line 98
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 100
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 102
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    nop

    .line 104
    return-void

    .line 102
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw v3
.end method

.method public blacklist notifyMessageReceiveError(Ljava/lang/String;I)V
    .registers 8
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 79
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    .line 80
    .local v0, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-nez v0, :cond_9

    .line 81
    return-void

    .line 83
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 85
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 87
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    nop

    .line 90
    return-void

    .line 87
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw v3
.end method

.method public blacklist notifyMessageReceived(Ljava/lang/String;)V
    .registers 7
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    .line 65
    .local v0, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-nez v0, :cond_9

    .line 66
    return-void

    .line 68
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 70
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    nop

    .line 75
    return-void

    .line 72
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw v3
.end method

.method public blacklist sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .registers 9
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 50
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    .line 51
    .local v0, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-nez v0, :cond_9

    .line 52
    return-void

    .line 54
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 56
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1, p2, p3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    .line 58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw v3
.end method
