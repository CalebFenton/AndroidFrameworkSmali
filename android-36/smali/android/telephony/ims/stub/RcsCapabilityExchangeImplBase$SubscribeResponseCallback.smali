.class public interface abstract Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
.super Ljava/lang/Object;
.source "RcsCapabilityExchangeImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscribeResponseCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCommandError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onNetworkResponse(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 350
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponsePhrase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;)V

    goto :goto_29

    .line 352
    :cond_16
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponsePhrase()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-interface {p0, v0, v1, v2, v3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V

    .line 355
    :goto_29
    return-void
.end method

.method public abstract whitelist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
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
.end method

.method public abstract whitelist onResourceTerminated(Ljava/util/List;)V
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
.end method

.method public abstract whitelist onTerminated(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method
