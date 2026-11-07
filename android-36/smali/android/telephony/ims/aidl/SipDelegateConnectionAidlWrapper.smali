.class public Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
.super Ljava/lang/Object;
.source "SipDelegateConnectionAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/SipDelegateConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SipDelegateCAW"


# instance fields
.field private final blacklist mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

.field private final blacklist mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

.field private final blacklist mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

.field private final blacklist mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$4Qk2_ss72pV9Og8GV5kIhlI3Ouk(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->lambda$notifyLocalMessageFailedToSend$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xYco_2WVwGS6tuwyEtb5ztv5zF4(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->lambda$binderDied$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$massociateSipDelegate(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->associateSipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minvalidateSipDelegateBinder(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->invalidateSipDelegateBinder()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "stateCallback"    # Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .param p3, "messageCallback"    # Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

    .line 117
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 168
    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    .line 169
    iput-object p3, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    .line 170
    return-void
.end method

.method private blacklist associateSipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/ISipDelegate;

    .line 257
    if-eqz p1, :cond_d

    .line 259
    :try_start_2
    invoke-interface {p1}, Landroid/telephony/ims/aidl/ISipDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 263
    goto :goto_d

    .line 260
    :catch_b
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method private blacklist invalidateSipDelegateBinder()V
    .registers 5

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    .line 270
    .local v0, "oldVal":Landroid/telephony/ims/aidl/ISipDelegate;
    if-eqz v0, :cond_31

    .line 272
    :try_start_f
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_17} :catch_18

    .line 275
    goto :goto_31

    .line 273
    :catch_18
    move-exception v1

    .line 274
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateSipDelegateBinder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SipDelegateCAW"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_31
    :goto_31
    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .registers 3

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onDestroyed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$invalidateSipDelegateBinder$1(Landroid/telephony/ims/aidl/ISipDelegate;)Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2
    .param p0, "unused"    # Landroid/telephony/ims/aidl/ISipDelegate;

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$notifyLocalMessageFailedToSend$2(Ljava/lang/String;I)V
    .registers 4
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 281
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V
    .registers 6
    .param p1, "m"    # Landroid/telephony/ims/SipMessage;
    .param p2, "reason"    # I

    .line 280
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "transactionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 230
    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->invalidateSipDelegateBinder()V

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public whitelist cleanupSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 217
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    .line 218
    .local v0, "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    if-nez v0, :cond_7

    .line 219
    return-void

    .line 221
    :cond_7
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegate;->cleanupSession(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 224
    .end local v0    # "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    goto :goto_c

    .line 222
    :catch_b
    move-exception v0

    .line 225
    :goto_c
    return-void
.end method

.method public blacklist getMessageCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    return-object v0
.end method

.method public blacklist getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    return-object v0
.end method

.method public blacklist getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

    return-object v0
.end method

.method public whitelist notifyMessageReceiveError(Ljava/lang/String;I)V
    .registers 4
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    .line 205
    .local v0, "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    if-nez v0, :cond_7

    .line 206
    return-void

    .line 208
    :cond_7
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/ISipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 211
    .end local v0    # "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    goto :goto_c

    .line 209
    :catch_b
    move-exception v0

    .line 212
    :goto_c
    return-void
.end method

.method public whitelist notifyMessageReceived(Ljava/lang/String;)V
    .registers 3
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    .line 192
    .local v0, "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    if-nez v0, :cond_7

    .line 193
    return-void

    .line 195
    :cond_7
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegate;->notifyMessageReceived(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 198
    .end local v0    # "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    goto :goto_c

    .line 196
    :catch_b
    move-exception v0

    .line 199
    :goto_c
    return-void
.end method

.method public whitelist sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .registers 6
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    .line 176
    .local v0, "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    if-nez v0, :cond_b

    .line 177
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V

    .line 179
    return-void

    .line 181
    :cond_b
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/ISipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 185
    .end local v0    # "conn":Landroid/telephony/ims/aidl/ISipDelegate;
    goto :goto_14

    .line 182
    :catch_f
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method
