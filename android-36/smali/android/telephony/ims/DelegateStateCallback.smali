.class public interface abstract Landroid/telephony/ims/DelegateStateCallback;
.super Ljava/lang/Object;
.source "DelegateStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
.end method

.method public abstract whitelist onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/stub/SipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onDestroyed(I)V
.end method

.method public abstract whitelist onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
.end method

.method public abstract greylist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
