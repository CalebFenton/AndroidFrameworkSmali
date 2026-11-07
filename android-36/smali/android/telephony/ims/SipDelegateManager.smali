.class public Landroid/telephony/ims/SipDelegateManager;
.super Ljava/lang/Object;
.source "SipDelegateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateManager$SipDelegateDestroyReason;,
        Landroid/telephony/ims/SipDelegateManager$DeniedReason;,
        Landroid/telephony/ims/SipDelegateManager$MessageFailureReason;
    }
.end annotation


# static fields
.field public static final whitelist DENIED_REASON_INVALID:I = 0x4

.field public static final whitelist DENIED_REASON_IN_USE_BY_ANOTHER_DELEGATE:I = 0x1

.field public static final whitelist DENIED_REASON_NOT_ALLOWED:I = 0x2

.field public static final whitelist DENIED_REASON_SINGLE_REGISTRATION_NOT_ALLOWED:I = 0x3

.field public static final whitelist DENIED_REASON_UNKNOWN:I = 0x0

.field public static final whitelist MESSAGE_FAILURE_REASON_DELEGATE_CLOSED:I = 0x2

.field public static final whitelist MESSAGE_FAILURE_REASON_DELEGATE_DEAD:I = 0x1

.field public static final whitelist MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION:I = 0xb

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT:I = 0x5

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG:I = 0x6

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS:I = 0x4

.field public static final whitelist MESSAGE_FAILURE_REASON_INVALID_START_LINE:I = 0x3

.field public static final whitelist MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE:I = 0x8

.field public static final whitelist MESSAGE_FAILURE_REASON_NOT_REGISTERED:I = 0x9

.field public static final whitelist MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION:I = 0xa

.field public static final blacklist MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE:I = 0x7

.field public static final whitelist MESSAGE_FAILURE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_REQUESTED_BY_APP:I = 0x2

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_SERVICE_DEAD:I = 0x1

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_SUBSCRIPTION_TORN_DOWN:I = 0x4

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_UNKNOWN:I = 0x0

.field public static final whitelist SIP_DELEGATE_DESTROY_REASON_USER_DISABLED_RCS:I = 0x3


# instance fields
.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private final blacklist mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 179
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_UNKNOWN"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_DEAD"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_CLOSED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 192
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    const-string v3, "MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NOT_REGISTERED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    sget-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 200
    const-string v2, "MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p3, "binderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Landroid/telephony/ims/aidl/IImsRcsController;>;"
    .local p4, "telephonyBinderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Lcom/android/internal/telephony/ITelephony;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    .line 300
    iput p2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    .line 301
    iput-object p3, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 302
    iput-object p4, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    .line 303
    return-void
.end method


# virtual methods
.method public whitelist createSipDelegate(Landroid/telephony/ims/DelegateRequest;Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V
    .registers 14
    .param p1, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "dc"    # Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 367
    const-string v0, "The DelegateRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "The Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    const-string v0, "The DelegateConnectionStateCallback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    const-string v0, "The DelegateConnectionMessageCallback must not be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x1

    :try_start_15
    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {v0, p2, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V

    .line 374
    .local v0, "wrapper":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    iget-object v2, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 375
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    .line 374
    invoke-virtual {v2, v0, v3}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsRcsController;

    move-object v3, v2

    .line 376
    .local v3, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v3, :cond_43

    .line 380
    iget v4, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getMessageCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v8
    :try_end_3d
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_3d} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3d} :catch_52

    .line 380
    move-object v5, p1

    .end local p1    # "request":Landroid/telephony/ims/DelegateRequest;
    .local v5, "request":Landroid/telephony/ims/DelegateRequest;
    :try_start_3e
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsRcsController;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 387
    .end local v0    # "wrapper":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    .end local v3    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    nop

    .line 388
    return-void

    .line 377
    .end local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .restart local v0    # "wrapper":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    .restart local v3    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .restart local p1    # "request":Landroid/telephony/ims/DelegateRequest;
    :cond_43
    move-object v5, p1

    .end local p1    # "request":Landroid/telephony/ims/DelegateRequest;
    .restart local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v2, "Telephony server is down"

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .end local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "dc":Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .end local p4    # "mc":Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;
    throw p1
    :try_end_4c
    .catch Landroid/os/ServiceSpecificException; {:try_start_3e .. :try_end_4c} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4c} :catch_4c

    .line 384
    .end local v0    # "wrapper":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    .end local v3    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .restart local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .restart local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "dc":Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .restart local p4    # "mc":Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;
    :catch_4c
    move-exception v0

    move-object p1, v0

    goto :goto_55

    .line 382
    :catch_4f
    move-exception v0

    move-object p1, v0

    goto :goto_62

    .line 384
    .end local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .restart local p1    # "request":Landroid/telephony/ims/DelegateRequest;
    :catch_52
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 385
    .restart local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_55
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 382
    .end local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .local p1, "request":Landroid/telephony/ims/DelegateRequest;
    :catch_5f
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 383
    .restart local v5    # "request":Landroid/telephony/ims/DelegateRequest;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_62
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist destroySipDelegate(Landroid/telephony/ims/SipDelegateConnection;I)V
    .registers 7
    .param p1, "delegateConnection"    # Landroid/telephony/ims/SipDelegateConnection;
    .param p2, "reason"    # I

    .line 401
    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_2b

    .line 403
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    .line 406
    .local v0, "w":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1, v0}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 407
    .local v1, "c":Landroid/telephony/ims/aidl/IImsRcsController;
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 417
    .end local v1    # "c":Landroid/telephony/ims/aidl/IImsRcsController;
    goto :goto_29

    .line 408
    :catch_1e
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1f
    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onDestroyed(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    .line 416
    goto :goto_29

    .line 414
    :catch_28
    move-exception v2

    .line 418
    .end local v0    # "w":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    nop

    .line 422
    return-void

    .line 419
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 325
    .local v1, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v1, :cond_12

    .line 329
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->isSipDelegateSupported(I)Z

    move-result v0

    return v0

    .line 326
    :cond_12
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    throw v2
    :try_end_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    .line 332
    .end local v1    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .restart local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    :catch_1a
    move-exception v1

    .line 333
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 330
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 477
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 481
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 482
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 488
    :try_start_20
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    .line 490
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 488
    const/4 v5, 0x2

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_30} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_30} :catch_32

    .line 495
    nop

    .line 496
    return-void

    .line 493
    :catch_32
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 491
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v1

    .line 492
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 483
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_4a
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist registerSipDialogStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/SipDialogStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 534
    const-string v0, "Must include a non-null SipDialogStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p2, p1}, Landroid/telephony/ims/SipDialogStateCallback;->attachExecutor(Ljava/util/concurrent/Executor;)V

    .line 539
    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 540
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDialogStateCallback;)V

    .line 539
    invoke-virtual {v1, p2, v2}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 541
    .local v1, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v1, :cond_2b

    .line 545
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/SipDialogStateCallback;->getCallbackBinder()Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->registerSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 552
    .end local v1    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    nop

    .line 553
    return-void

    .line 542
    .restart local v1    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_2b
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/ims/SipDialogStateCallback;
    throw v2
    :try_end_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_33} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_33} :catch_33

    .line 550
    .end local v1    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .restart local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/ims/SipDialogStateCallback;
    :catch_33
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3e
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 546
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_49
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist triggerFullNetworkRegistration(Landroid/telephony/ims/SipDelegateConnection;ILjava/lang/String;)V
    .registers 8
    .param p1, "connection"    # Landroid/telephony/ims/SipDelegateConnection;
    .param p2, "sipCode"    # I
    .param p3, "sipReason"    # Ljava/lang/String;

    .line 439
    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_21

    .line 441
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    .line 443
    .local v0, "w":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 444
    .local v1, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsController;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 449
    .end local v1    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    goto :goto_1f

    .line 446
    :catch_1e
    move-exception v1

    .line 450
    .end local v0    # "w":Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
    :goto_1f
    nop

    .line 454
    return-void

    .line 451
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;

    .line 504
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 509
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_19

    .line 510
    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    .line 512
    :catch_17
    move-exception v1

    goto :goto_1a

    .line 514
    :cond_19
    :goto_19
    nop

    .line 515
    :goto_1a
    return-void
.end method

.method public whitelist unregisterSipDialogStateCallback(Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/telephony/ims/SipDialogStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 569
    const-string v0, "Must include a non-null SipDialogStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 573
    .local v0, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 577
    :try_start_10
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/SipDialogStateCallback;->getCallbackBinder()Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterSipDialogStateCallback(ILcom/android/internal/telephony/ISipDialogStateCallback;)V

    .line 584
    nop

    .line 585
    return-void

    .line 582
    :catch_1b
    move-exception v1

    goto :goto_29

    .line 580
    :catch_1d
    move-exception v2

    goto :goto_33

    .line 578
    :catch_1f
    move-exception v1

    goto :goto_3d

    .line 574
    :cond_21
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .end local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .end local p1    # "callback":Landroid/telephony/ims/SipDialogStateCallback;
    throw v2
    :try_end_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_29} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_29} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_29} :catch_1b

    .line 583
    .restart local v0    # "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/telephony/ims/SipDelegateManager;
    .restart local p1    # "callback":Landroid/telephony/ims/SipDialogStateCallback;
    :goto_29
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 581
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .local v2, "e":Landroid/os/RemoteException;
    :goto_33
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 579
    .end local v2    # "e":Landroid/os/RemoteException;
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :goto_3d
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
