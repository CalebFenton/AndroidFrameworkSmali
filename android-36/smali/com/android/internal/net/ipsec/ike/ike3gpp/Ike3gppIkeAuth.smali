.class Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;
.super Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;
.source "Ike3gppIkeAuth.java"


# static fields
.field private static final blacklist SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mIsDeviceIdentityRequestedByNetwork:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    const-class v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;

    .line 52
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;

    const v1, 0xc7ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;

    const v1, 0xa051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;

    const v1, 0xa08d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .param p2, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;-><init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V

    .line 60
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 164
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method blacklist extract3gppResponsePayloads(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 88
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 91
    .local v2, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v3, :pswitch_data_38

    goto :goto_35

    .line 93
    :pswitch_1b
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 94
    .local v3, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    sget-object v4, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->SUPPORTED_RESPONSE_NOTIFY_TYPES:Ljava/util/Set;

    iget v5, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 95
    invoke-static {v3}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->isValidErrorNotifyCause(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 96
    :cond_32
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .end local v3    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_35
    :goto_35
    goto :goto_9

    .line 105
    :cond_36
    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x29
        :pswitch_1b
    .end packed-switch
.end method

.method blacklist getRequestPayloads()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->hasPduSessionId()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 79
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 81
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->getPduSessionId()B

    move-result v1

    .line 80
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppN1ModeUtils;->generateN1ModeCapabilityPayload(B)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_22
    return-object v0
.end method

.method blacklist getRequestPayloadsInEap(Z)Ljava/util/List;
    .registers 5
    .param p1, "serverAuthenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIsDeviceIdentityRequestedByNetwork:Z

    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    .line 67
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->getMobileDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "deviceIdentity":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 69
    nop

    .line 70
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;->generateDeviceIdentityPayload(Ljava/lang/String;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v2

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v1    # "deviceIdentity":Ljava/lang/String;
    :cond_1f
    return-object v0
.end method

.method blacklist handleAuthResp(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 109
    .local p1, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "ike3gppDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;>;"
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 111
    const/16 v2, 0x29

    invoke-static {v2, v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    const/4 v2, 0x0

    .line 115
    .local v2, "backoffTimerPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const/4 v3, 0x0

    .line 116
    .local v3, "backoffTimerCause":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 117
    .local v5, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    sparse-switch v6, :sswitch_data_92

    .line 136
    invoke-static {v5}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->isValidErrorNotifyCause(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 137
    if-nez v3, :cond_6f

    .line 138
    move-object v3, v5

    goto :goto_6f

    .line 120
    :sswitch_2e
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    invoke-virtual {v6}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->hasPduSessionId()Z

    move-result v6

    if-nez v6, :cond_40

    .line 121
    const-string v6, "Received N1_MODE_INFORMATION when N1 Mode is not enabled"

    invoke-direct {p0, v6}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->logw(Ljava/lang/String;)V

    .line 122
    goto :goto_13

    .line 125
    :cond_40
    iget-object v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    .line 126
    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppN1ModeUtils;->getSnssaiFromNotifyData([B)[B

    move-result-object v6

    .line 127
    .local v6, "snssai":[B
    new-instance v7, Landroid/net/ipsec/ike/ike3gpp/Ike3gppN1ModeInformation;

    invoke-direct {v7, v6}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppN1ModeInformation;-><init>([B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_6f

    .line 133
    .end local v6    # "snssai":[B
    :sswitch_4f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->mIsDeviceIdentityRequestedByNetwork:Z

    .line 134
    goto :goto_6f

    .line 130
    :sswitch_53
    move-object v2, v5

    .line 131
    goto :goto_6f

    .line 142
    :cond_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-3GPP payload processed as 3GPP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 144
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-direct {p0, v6}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->logd(Ljava/lang/String;)V

    .line 148
    .end local v5    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_6f
    :goto_6f
    goto :goto_13

    .line 150
    :cond_70
    if-eqz v2, :cond_85

    if-eqz v3, :cond_85

    .line 151
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    .line 152
    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimerUtils;->getBackoffTimerfromNotifyData([B)B

    move-result v4

    .line 154
    .local v4, "backoffTimer":B
    new-instance v5, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;

    iget v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-direct {v5, v4, v6}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;-><init>(BI)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "backoffTimer":B
    goto :goto_8d

    .line 156
    :cond_85
    if-eqz v2, :cond_8d

    .line 157
    const-string v4, "Received BACKOFF_TIMER payload without an Error-Notify"

    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->logw(Ljava/lang/String;)V

    goto :goto_8e

    .line 156
    :cond_8d
    :goto_8d
    nop

    .line 160
    :goto_8e
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->maybeInvokeUserCallback(Ljava/util/List;)V

    .line 161
    return-void

    :sswitch_data_92
    .sparse-switch
        0xa051 -> :sswitch_53
        0xa08d -> :sswitch_4f
        0xc7ab -> :sswitch_2e
    .end sparse-switch
.end method
