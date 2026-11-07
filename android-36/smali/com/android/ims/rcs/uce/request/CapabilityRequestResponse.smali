.class public Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
.super Ljava/lang/Object;
.source "CapabilityRequestResponse.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCachedCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommandError:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContactCapsReceived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkRespSipCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReasonHeaderCause:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReasonHeaderText:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReasonPhrase:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestInternalError:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetryAfterMillis:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipDetails:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTerminatedReason:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTerminatedResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUpdatedCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$MLoNR1lvCogfsT2rUi0elyWcUhI(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->lambda$setRemoteCapabilities$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nvgJ6tna4AjIaHbV_Onm818H3sE(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->lambda$setRequestContacts$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CapabilityRequestResp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRequestInternalError:Ljava/util/Optional;

    .line 96
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCommandError:Ljava/util/Optional;

    .line 97
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    .line 98
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    .line 99
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    .line 100
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedReason:Ljava/util/Optional;

    .line 102
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRetryAfterMillis:Ljava/util/Optional;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedResource:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCachedCapabilityList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mUpdatedCapabilityList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRemoteCaps:Ljava/util/Set;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    .line 108
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mSipDetails:Ljava/util/Optional;

    .line 109
    return-void
.end method

.method public static blacklist getCapabilityErrorFromCommandError(I)I
    .registers 2
    .param p0, "cmdError"    # I

    .line 441
    packed-switch p0, :pswitch_data_16

    .line 466
    const/4 v0, 0x1

    .local v0, "uceError":I
    goto :goto_15

    .line 463
    .end local v0    # "uceError":I
    :pswitch_5
    const/16 v0, 0xc

    .line 464
    .restart local v0    # "uceError":I
    goto :goto_15

    .line 451
    .end local v0    # "uceError":I
    :pswitch_8
    const/4 v0, 0x7

    .line 452
    .restart local v0    # "uceError":I
    goto :goto_15

    .line 460
    .end local v0    # "uceError":I
    :pswitch_a
    const/16 v0, 0xb

    .line 461
    .restart local v0    # "uceError":I
    goto :goto_15

    .line 457
    .end local v0    # "uceError":I
    :pswitch_d
    const/16 v0, 0xa

    .line 458
    .restart local v0    # "uceError":I
    goto :goto_15

    .line 454
    .end local v0    # "uceError":I
    :pswitch_10
    const/16 v0, 0x9

    .line 455
    .restart local v0    # "uceError":I
    goto :goto_15

    .line 448
    .end local v0    # "uceError":I
    :pswitch_13
    const/4 v0, 0x1

    .line 449
    .restart local v0    # "uceError":I
    nop

    .line 469
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_13
        :pswitch_8
        :pswitch_5
        :pswitch_13
    .end packed-switch
.end method

.method public static blacklist getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I
    .registers 4
    .param p0, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 479
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_25

    .line 480
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    .local v0, "sipError":I
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderText()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "respReason":Ljava/lang/String;
    goto :goto_42

    .line 483
    .end local v0    # "sipError":I
    .end local v1    # "respReason":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 484
    .restart local v0    # "sipError":I
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonPhrase()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .restart local v1    # "respReason":Ljava/lang/String;
    :goto_42
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/util/NetworkSipCode;->getCapabilityErrorFromSipCode(ILjava/lang/String;I)I

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$addTerminatedResource$2(Landroid/telephony/ims/RcsContactTerminatedReason;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .param p0, "reason"    # Landroid/telephony/ims/RcsContactTerminatedReason;

    .line 338
    nop

    .line 339
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactTerminatedReason;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactTerminatedReason;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getTerminatedCapability(Landroid/net/Uri;Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getNotReceiveCapabilityUpdatedContact$1(Ljava/util/Map$Entry;)Z
    .registers 3
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 127
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isNetworkResponseOK$4(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 389
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method static synthetic blacklist lambda$isNetworkResponseOK$5(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 391
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$isRequestForbidden$6(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 404
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$isRequestForbidden$7(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$setRemoteCapabilities$3(Ljava/lang/String;)V
    .registers 3
    .param p1, "capability"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRemoteCaps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$setRequestContacts$0(Landroid/net/Uri;)V
    .registers 4
    .param p1, "contact"    # Landroid/net/Uri;

    .line 117
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized blacklist updateCapsReceivedFlag(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .local p1, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    monitor-enter p0

    .line 277
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsContactUceCapability;

    .line 278
    .local v1, "updatedCap":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    .line 279
    .local v2, "updatedUri":Landroid/net/Uri;
    if-nez v2, :cond_18

    goto :goto_5

    .line 280
    :cond_18
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "updatedUriStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 283
    .local v5, "contactCapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/ims/rcs/uce/util/UceUtils;->getContactNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_50

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 286
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_54

    .line 288
    .end local v5    # "contactCapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/Boolean;>;"
    .end local v6    # "number":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :cond_50
    goto :goto_26

    .line 289
    .end local v1    # "updatedCap":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v2    # "updatedUri":Landroid/net/Uri;
    .end local v3    # "updatedUriStr":Ljava/lang/String;
    :cond_51
    goto :goto_5

    .line 290
    :cond_52
    monitor-exit p0

    return-void

    .line 276
    .end local p1    # "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addCachedCapabilities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .local p1, "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    monitor-enter p0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCachedCapabilityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->updateCapsReceivedFlag(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 271
    monitor-exit p0

    return-void

    .line 266
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist addTerminatedResource(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    monitor-enter p0

    .line 336
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda0;-><init>()V

    .line 337
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda1;-><init>()V

    .line 338
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 339
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 342
    .local v0, "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedResource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->updateCapsReceivedFlag(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 346
    monitor-exit p0

    return-void

    .line 335
    .end local v0    # "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "resourceList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized blacklist addUpdatedCapabilities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .local p1, "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mUpdatedCapabilityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->updateCapsReceivedFlag(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 314
    monitor-exit p0

    return-void

    .line 309
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist getCachedContactCapability()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCachedCapabilityList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 303
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist getCommandError()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCommandError:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 165
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getNetworkRespSipCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 197
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getNotReceiveCapabilityUpdatedContact()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda2;-><init>()V

    .line 127
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda3;-><init>()V

    .line 128
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 125
    monitor-exit p0

    return-object v0

    .line 124
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public declared-synchronized blacklist getReasonHeaderCause()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 207
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getReasonHeaderText()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 212
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getReasonPhrase()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 202
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getRemoteCapability()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 377
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRemoteCaps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 377
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist getRequestInternalError()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRequestInternalError:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getResponseReason()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    return-object v0

    .line 227
    :cond_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getResponseSipCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    return-object v0

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    return-object v0
.end method

.method public declared-synchronized blacklist getRetryAfterMillis()J
    .registers 4

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRetryAfterMillis:Ljava/util/Optional;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    .line 253
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist getSipDetails()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mSipDetails:Ljava/util/Optional;

    return-object v0
.end method

.method public declared-synchronized blacklist getTerminatedReason()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedReason:Ljava/util/Optional;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 246
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist getTerminatedResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedResource:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 360
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist getUpdatedContactCapability()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mUpdatedCapabilityList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 328
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist haveAllRequestCapsUpdatedBeenReceived()Z
    .registers 3

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 136
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist isNetworkResponseOK()Z
    .registers 6

    monitor-enter p0

    .line 386
    const/16 v0, 0xc8

    .line 387
    .local v0, "sipCodeOk":I
    const/16 v1, 0xca

    .line 388
    .local v1, "sipCodeAccepted":I
    :try_start_5
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v2

    .line 389
    .local v2, "respSipCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 390
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 391
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_3b

    if-eqz v3, :cond_38

    .line 392
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :cond_35
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 394
    :cond_38
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 385
    .end local v0    # "sipCodeOk":I
    .end local v1    # "sipCodeAccepted":I
    .end local v2    # "respSipCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public declared-synchronized blacklist isNotFound()Z
    .registers 4

    monitor-enter p0

    .line 416
    :try_start_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 417
    .local v0, "respSipCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 418
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v1

    move-object v0, v1

    goto :goto_24

    .line 419
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :cond_15
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 420
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    move-object v0, v1

    .line 423
    :cond_24
    :goto_24
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 424
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_46

    .line 425
    .local v1, "sipCode":I
    const/16 v2, 0x194

    if-eq v1, v2, :cond_40

    const/16 v2, 0x195

    if-eq v1, v2, :cond_40

    const/16 v2, 0x25c

    if-ne v1, v2, :cond_43

    .line 428
    :cond_40
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 431
    .end local v1    # "sipCode":I
    :cond_43
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 415
    .end local v0    # "respSipCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public declared-synchronized blacklist isRequestForbidden()Z
    .registers 4

    monitor-enter p0

    .line 402
    const/16 v0, 0x193

    .line 403
    .local v0, "sipCodeForbidden":I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 404
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_33

    monitor-exit p0

    return v1

    .line 406
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v1

    .line 401
    .end local v0    # "sipCodeForbidden":I
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public declared-synchronized blacklist removeCachedContactCapabilities()V
    .registers 2

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCachedCapabilityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 297
    monitor-exit p0

    return-void

    .line 295
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist removeTerminatedResources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    monitor-enter p0

    .line 353
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedResource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 354
    monitor-exit p0

    return-void

    .line 352
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "resourceList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist removeUpdatedCapabilities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .local p1, "capList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    monitor-enter p0

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mUpdatedCapabilityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 322
    monitor-exit p0

    return-void

    .line 320
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "capList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized blacklist setCommandError(I)V
    .registers 3
    .param p1, "commandError"    # I

    monitor-enter p0

    .line 158
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCommandError:Ljava/util/Optional;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 159
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "commandError":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist setNetworkResponseCode(ILjava/lang/String;)V
    .registers 4
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 172
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    .line 173
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 174
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "sipCode":I
    .end local p2    # "reason":Ljava/lang/String;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist setRemoteCapabilities(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "remoteCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 367
    if-eqz p1, :cond_1c

    .line 368
    :try_start_3
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda10;-><init>(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1c

    .line 366
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "remoteCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1

    .line 371
    .restart local p1    # "remoteCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist setRequestContacts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .local p1, "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 117
    :try_start_1
    new-instance v0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse$$ExternalSyntheticLambda6;-><init>(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    sget-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestContacts: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mContactCapsReceived:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 119
    monitor-exit p0

    return-void

    .line 116
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist setRequestInternalError(I)V
    .registers 3
    .param p1, "errorCode"    # I

    monitor-enter p0

    .line 144
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRequestInternalError:Ljava/util/Optional;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 145
    monitor-exit p0

    return-void

    .line 143
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "errorCode":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist setSipDetails(Landroid/telephony/ims/SipDetails;)V
    .registers 4
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    monitor-enter p0

    .line 180
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponsePhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setNetworkResponseCode(ILjava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    if-eqz v0, :cond_21

    .line 182
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    goto :goto_27

    .line 184
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :cond_21
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    .line 186
    :goto_27
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 187
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    goto :goto_42

    .line 189
    :cond_38
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    .line 192
    :goto_42
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mSipDetails:Ljava/util/Optional;
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 193
    monitor-exit p0

    return-void

    .line 179
    .end local p1    # "details":Landroid/telephony/ims/SipDetails;
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public declared-synchronized blacklist setTerminated(Ljava/lang/String;J)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryAfterMillis"    # J

    monitor-enter p0

    .line 237
    :try_start_1
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedReason:Ljava/util/Optional;

    .line 238
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRetryAfterMillis:Ljava/util/Optional;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 239
    monitor-exit p0

    return-void

    .line 236
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "retryAfterMillis":J
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 492
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "RequestInternalError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRequestInternalError:Ljava/util/Optional;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandErrorCode="

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCommandError:Ljava/util/Optional;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NetworkResponseCode="

    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NetworkResponseReason="

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ReasonHeaderCause="

    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ReasonHeaderText="

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TerminatedReason="

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedReason:Ljava/util/Optional;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RetryAfterMillis="

    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRetryAfterMillis:Ljava/util/Optional;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Terminated resource size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mTerminatedResource:Ljava/util/List;

    .line 501
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cached capability size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mCachedCapabilityList:Ljava/util/List;

    .line 502
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Updated capability size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mUpdatedCapabilityList:Ljava/util/List;

    .line 503
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", RemoteCaps size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->mRemoteCaps:Ljava/util/Set;

    .line 504
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_121
    .catchall {:try_start_1 .. :try_end_121} :catchall_123

    .line 493
    monitor-exit p0

    return-object v1

    .line 491
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    :catchall_123
    move-exception v0

    :try_start_124
    monitor-exit p0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v0
.end method
