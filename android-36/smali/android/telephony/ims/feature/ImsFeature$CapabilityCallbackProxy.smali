.class public Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CapabilityCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist onChangeCapabilityConfigurationError(III)V
    .registers 7
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 207
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    if-nez v0, :cond_5

    .line 208
    return-void

    .line 211
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onChangeCapabilityConfigurationError(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 214
    goto :goto_13

    .line 212
    :catch_b
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsFeature"

    const-string v2, "onChangeCapabilityConfigurationError called on dead binder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
