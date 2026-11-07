.class public Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
.super Ljava/lang/Object;
.source "CapabilityExchangeAidlWrapper.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CapExchangeListener"


# instance fields
.field private final blacklist mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "reasonCode"    # I
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

    .line 94
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 95
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_5

    .line 96
    return-void

    .line 99
    :cond_5
    :try_start_5
    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 100
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 103
    .local v1, "details":Landroid/telephony/ims/SipDetails;
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1c

    .line 108
    .end local v1    # "details":Landroid/telephony/ims/SipDetails;
    nop

    .line 109
    return-void

    .line 104
    :catch_1c
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPublishUpdated exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Remote is not available"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .registers 7
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 117
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_5

    .line 118
    return-void

    .line 121
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 126
    nop

    .line 127
    return-void

    .line 122
    :catch_a
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPublishUpdated exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Remote is not available"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 10
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 136
    .local p2, "remoteCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 137
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_5

    .line 138
    return-void

    .line 141
    :cond_5
    new-instance v1, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;

    invoke-direct {v1, p0, p3}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    .line 164
    .local v1, "internalCallback":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    :try_start_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v2, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14

    .line 170
    nop

    .line 171
    return-void

    .line 166
    :catch_14
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote capability request exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapExchangeListener"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v3, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote is not available"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public whitelist onRequestPublishCapabilities(I)V
    .registers 7
    .param p1, "publishTriggerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 55
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_5

    .line 56
    return-void

    .line 59
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 64
    nop

    .line 65
    return-void

    .line 60
    :catch_a
    move-exception v1

    .line 61
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request publish capabilities exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Remote is not available"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist onUnpublish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 72
    .local v0, "listener":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    if-nez v0, :cond_5

    .line 73
    return-void

    .line 76
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onUnpublish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 81
    nop

    .line 82
    return-void

    .line 77
    :catch_a
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpublish exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Remote is not available"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
