.class public interface abstract Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
.super Ljava/lang/Object;
.source "DelegateConnectionStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
.end method

.method public abstract whitelist onCreated(Landroid/telephony/ims/SipDelegateConnection;)V
.end method

.method public abstract whitelist onDestroyed(I)V
.end method

.method public abstract whitelist onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation
.end method

.method public greylist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-virtual {p1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->toNewConfig()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 146
    return-void
.end method
