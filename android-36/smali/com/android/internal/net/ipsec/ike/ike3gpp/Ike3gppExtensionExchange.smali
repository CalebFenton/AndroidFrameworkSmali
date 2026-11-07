.class public Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;
.super Ljava/lang/Object;
.source "Ike3gppExtensionExchange.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist NOTIFY_TYPE_BACKOFF_TIMER:I = 0xa051

.field public static final blacklist NOTIFY_TYPE_DEVICE_IDENTITY:I = 0xa08d

.field public static final blacklist NOTIFY_TYPE_N1_MODE_CAPABILITY:I = 0xc747

.field public static final blacklist NOTIFY_TYPE_N1_MODE_INFORMATION:I = 0xc7ab

.field private static final blacklist REGISTERED_LISTENERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

.field private final blacklist mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

.field private final blacklist mIke3gppIkeInfo:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

.field private final blacklist mUserCbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->REGISTERED_LISTENERS:Ljava/util/Set;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .param p2, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 111
    const-string v0, "userCbExecutor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-eqz v0, :cond_5a

    .line 114
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;-><init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    .line 115
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mUserCbExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;-><init>(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeInfo:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

    .line 117
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->REGISTERED_LISTENERS:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppDataListener()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IKE 3GPP Extension enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->logd(Ljava/lang/String;)V

    goto :goto_5f

    .line 118
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ike3gppDataListener must be unique for each IkeSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    .line 125
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeInfo:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

    .line 127
    :goto_5f
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 224
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 220
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    sget-object v0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->REGISTERED_LISTENERS:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppDataListener()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public blacklist extract3gppResponsePayloads(ILjava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "exchangeSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 183
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 185
    :cond_7
    packed-switch p1, :pswitch_data_30

    .line 190
    nop

    .line 191
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getIkeExchangeSubTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "exchangeSubtypeString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No 3GPP response payloads expected for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->logw(Ljava/lang/String;)V

    .line 193
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 187
    .end local v0    # "exchangeSubtypeString":Ljava/lang/String;
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->extract3gppResponsePayloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist getRequestPayloads(I)Ljava/util/List;
    .registers 5
    .param p1, "exchangeSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 156
    :cond_7
    packed-switch p1, :pswitch_data_30

    .line 161
    nop

    .line 162
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getIkeExchangeSubTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "exchangeSubtypeString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No 3GPP request payloads added for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->logw(Ljava/lang/String;)V

    .line 164
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 158
    .end local v0    # "exchangeSubtypeString":Ljava/lang/String;
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->getRequestPayloads()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist getRequestPayloadsInEap(Z)Ljava/util/List;
    .registers 3
    .param p1, "serverAuthenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->getRequestPayloadsInEap(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponsePayloads(ILjava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "exchangeSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .line 141
    .local p2, "ike3gppRequestPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 143
    :cond_7
    packed-switch p1, :pswitch_data_14

    .line 148
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 145
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeInfo:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeInfo;->getResponsePayloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_14
    .packed-switch 0x8
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist handle3gppResponsePayloads(ILjava/util/List;)V
    .registers 6
    .param p1, "exchangeSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 205
    .local p2, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    .line 207
    :cond_b
    packed-switch p1, :pswitch_data_32

    .line 213
    nop

    .line 214
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getIkeExchangeSubTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "exchangeSubtypeString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected 3GPP payloads in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->logw(Ljava/lang/String;)V

    goto :goto_30

    .line 209
    .end local v0    # "exchangeSubtypeString":Ljava/lang/String;
    :pswitch_2a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->mIke3gppIkeAuth:Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppIkeAuth;->handleAuthResp(Ljava/util/List;)V

    .line 210
    nop

    .line 217
    :goto_30
    return-void

    .line 205
    :cond_31
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2a
    .end packed-switch
.end method
