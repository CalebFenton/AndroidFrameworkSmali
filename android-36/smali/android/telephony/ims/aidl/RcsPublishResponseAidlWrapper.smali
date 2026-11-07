.class public Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;
.super Ljava/lang/Object;
.source "RcsPublishResponseAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;


# instance fields
.field private final blacklist mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 2
    .param p1, "responseBinder"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 36
    return-void
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

    .line 41
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 44
    nop

    .line 45
    return-void

    .line 42
    :catch_7
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 54
    .local v0, "details":Landroid/telephony/ims/SipDetails;
    :try_start_e
    iget-object v1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_15
    move-exception v1

    .line 56
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .registers 10
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

    .line 64
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 69
    .local v0, "details":Landroid/telephony/ims/SipDetails;
    :try_start_12
    iget-object v1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_19
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
