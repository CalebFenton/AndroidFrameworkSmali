.class public interface abstract Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
.super Ljava/lang/Object;
.source "CapabilityExchangeEventListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;
    }
.end annotation


# virtual methods
.method public whitelist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 7
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

    .line 118
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 119
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    .line 118
    invoke-interface {p0, v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    .line 122
    return-void
.end method

.method public whitelist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .registers 2
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public abstract whitelist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
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
.end method

.method public abstract whitelist onRequestPublishCapabilities(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onUnpublish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method
