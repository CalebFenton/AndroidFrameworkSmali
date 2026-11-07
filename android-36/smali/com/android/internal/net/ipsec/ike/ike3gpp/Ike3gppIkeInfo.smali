.class public Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;
.super Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;
.source "Ike3gppIkeInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .param p2, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExchangeBase;-><init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V

    .line 39
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method blacklist getResponsePayloads(Ljava/util/List;)Ljava/util/List;
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

    .line 46
    .local p1, "ike3gppRequestPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 48
    const/16 v2, 0x29

    invoke-static {v2, v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 53
    .local v3, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    packed-switch v4, :pswitch_data_54

    goto :goto_37

    .line 55
    :pswitch_23
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 56
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->getMobileDeviceIdentity()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "deviceIdentity":Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 58
    nop

    .line 59
    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;->generateDeviceIdentityPayload(Ljava/lang/String;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v5

    .line 58
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v4    # "deviceIdentity":Ljava/lang/String;
    :cond_37
    :goto_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Payload ignored in Ike3gppIkeInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->getTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;->logd(Ljava/lang/String;)V

    .line 67
    .end local v3    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    goto :goto_11

    .line 68
    :cond_52
    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0xa08d
        :pswitch_23
    .end packed-switch
.end method
