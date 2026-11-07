.class public Landroid/telephony/ims/stub/SipTransportImplBase;
.super Ljava/lang/Object;
.source "SipTransportImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SipTransportIB"


# instance fields
.field private blacklist mBinderExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbinderDiedInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;->binderDiedInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroySipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    .line 110
    if-eqz p1, :cond_1d

    .line 114
    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    .line 115
    return-void

    .line 111
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist binderDiedInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "who"    # Landroid/os/IBinder;

    .line 204
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SipTransportIB"

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 206
    .local v1, "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    if-eqz p1, :cond_26

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    .line 214
    .end local v1    # "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    :cond_25
    goto :goto_6

    .line 207
    .restart local v1    # "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder death detected for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", calling destroy and removing."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    .line 212
    return-void

    .line 215
    .end local v1    # "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder death detected for IBinder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but couldn\'t find matching SipDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private blacklist createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "r"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    .line 161
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 162
    .local v0, "wrapper":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    .line 164
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 165
    return-void
.end method

.method private blacklist destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 7
    .param p1, "d"    # Landroid/telephony/ims/aidl/ISipDelegate;
    .param p2, "reason"    # I

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "result":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 170
    .local v2, "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    invoke-virtual {v2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 171
    move-object v0, v2

    .line 172
    goto :goto_20

    .line 174
    .end local v2    # "w":Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
    :cond_1f
    goto :goto_7

    .line 176
    :cond_20
    :goto_20
    if-eqz v0, :cond_32

    .line 177
    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    .line 178
    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    goto :goto_4a

    .line 181
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySipDelegateInternal, could not findSipDelegate corresponding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SipTransportIB"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_4a
    return-void
.end method

.method private blacklist linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 5
    .param p1, "w"    # Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 188
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 192
    goto :goto_24

    .line 189
    :catch_f
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SipTransportIB"

    const-string v2, "linkDeathRecipient, remote process already died, cleaning up."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method private blacklist unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 5
    .param p1, "w"    # Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_f

    .line 200
    goto :goto_10

    .line 198
    :catch_f
    move-exception v0

    .line 201
    :goto_10
    return-void
.end method


# virtual methods
.method public whitelist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .registers 7
    .param p1, "subscriptionId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "dc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createSipDelegate not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .registers 5
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "destroySipDelegate not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBinder()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    return-object v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 235
    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    .line 237
    :cond_6
    return-void
.end method
