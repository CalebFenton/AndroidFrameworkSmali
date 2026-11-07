.class public Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsSubscribeResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 2
    .param p1, "responseBinder"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    .line 42
    return-void
.end method

.method private blacklist getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;"
        }
    .end annotation

    .line 111
    .local p1, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "uriTerminatedReasonList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    if-eqz p1, :cond_28

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 114
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    new-instance v3, Landroid/telephony/ims/RcsContactTerminatedReason;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/RcsContactTerminatedReason;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    .local v3, "reason":Landroid/telephony/ims/RcsContactTerminatedReason;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    .end local v3    # "reason":Landroid/telephony/ims/RcsContactTerminatedReason;
    goto :goto_b

    .line 119
    :cond_28
    return-object v0
.end method


# virtual methods
.method public whitelist onCommandError(I)V
    .registers 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 50
    nop

    .line 51
    return-void

    .line 48
    :catch_7
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_15
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 73
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_19
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 87
    nop

    .line 88
    return-void

    .line 85
    :catch_7
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 93
    .local p1, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onResourceTerminated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 103
    .local p1, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->getTerminatedReasonList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catch_b
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onTerminated(Ljava/lang/String;J)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryAfterMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
