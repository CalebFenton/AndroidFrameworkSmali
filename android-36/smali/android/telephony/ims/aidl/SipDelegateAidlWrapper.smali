.class public Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.super Ljava/lang/Object;
.source "SipDelegateAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/DelegateStateCallback;
.implements Landroid/telephony/ims/DelegateMessageCallback;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SipDelegateAW"


# instance fields
.field private volatile blacklist mDelegate:Landroid/telephony/ims/stub/SipDelegate;

.field private final blacklist mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

.field private final blacklist mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "stateBinder"    # Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .param p3, "messageBinder"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    .line 115
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    .line 117
    iput-object p3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    .line 118
    return-void
.end method

.method static synthetic blacklist lambda$notifyLocalMessageFailedToBeReceived$0(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 3
    .param p0, "d"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 218
    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V
    .registers 7
    .param p1, "m"    # Landroid/telephony/ims/SipMessage;
    .param p2, "reason"    # I

    .line 215
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "transactionId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 217
    .local v1, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-eqz v1, :cond_12

    .line 218
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist getDelegate()Landroid/telephony/ims/stub/SipDelegate;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object v0
.end method

.method public blacklist getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    return-object v0
.end method

.method public blacklist getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    return-object v0
.end method

.method public whitelist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/telephony/ims/SipDelegateConfiguration;

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 189
    goto :goto_7

    .line 187
    :catch_6
    move-exception v0

    .line 190
    :goto_7
    return-void
.end method

.method public whitelist onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V
    .registers 6
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/stub/SipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 157
    if-nez p2, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p2

    .line 159
    .end local p2    # "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    .local v0, "deniedTags":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    :goto_a
    :try_start_a
    iget-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v1, v2}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onCreated(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    .line 162
    goto :goto_18

    .line 160
    :catch_17
    move-exception p2

    .line 163
    :goto_18
    return-void
.end method

.method public whitelist onDestroyed(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 196
    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onDestroyed(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 199
    goto :goto_a

    .line 197
    :catch_9
    move-exception v0

    .line 200
    :goto_a
    return-void
.end method

.method public whitelist onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .registers 3
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 171
    goto :goto_7

    .line 169
    :catch_6
    move-exception v0

    .line 172
    :goto_7
    return-void
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3
    .param p1, "config"    # Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 180
    goto :goto_7

    .line 178
    :catch_6
    move-exception v0

    .line 181
    :goto_7
    return-void
.end method

.method public whitelist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .registers 5
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 132
    goto :goto_f

    .line 124
    :catch_6
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 128
    .local v1, "d":Landroid/telephony/ims/stub/SipDelegate;
    if-eqz v1, :cond_f

    .line 129
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "d":Landroid/telephony/ims/stub/SipDelegate;
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist onMessageSendFailure(Ljava/lang/String;I)V
    .registers 4
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_7

    .line 148
    :catch_6
    move-exception v0

    .line 151
    :goto_7
    return-void
.end method

.method public whitelist onMessageSent(Ljava/lang/String;)V
    .registers 3
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 141
    goto :goto_7

    .line 139
    :catch_6
    move-exception v0

    .line 142
    :goto_7
    return-void
.end method
