.class public Lcom/android/ims/ImsConnectionStateListener;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "ImsConnectionStateListener.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFeatureCapabilityChanged(I[I[I)V
    .registers 4
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 169
    return-void
.end method

.method public blacklist onFeatureCapabilityChangedAdapter(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 9
    .param p1, "imsRadioTech"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 74
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 76
    .local v1, "enabledCapabilities":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 78
    new-array v0, v0, [I

    .line 79
    .local v0, "disabledCapabilities":[I
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 81
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_58

    goto :goto_47

    .line 99
    :pswitch_13
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 100
    aput v3, v1, v3

    .line 103
    :cond_1b
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 104
    const/4 v3, 0x3

    aput v3, v1, v3

    .line 107
    :cond_24
    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 108
    const/4 v2, 0x5

    aput v2, v1, v2

    goto :goto_47

    .line 83
    :pswitch_2e
    invoke-virtual {p2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 85
    const/4 v5, 0x0

    aput v5, v1, v5

    .line 88
    :cond_37
    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 89
    aput v4, v1, v4

    .line 92
    :cond_3f
    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 93
    aput v2, v1, v2

    .line 116
    :cond_47
    :goto_47
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    array-length v3, v1

    if-ge v2, v3, :cond_54

    .line 117
    aget v3, v1, v2

    if-eq v3, v2, :cond_51

    .line 118
    aput v2, v0, v2

    .line 116
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 121
    .end local v2    # "i":I
    :cond_54
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    .line 123
    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist onImsConnected(I)V
    .registers 2
    .param p1, "imsRadioTech"    # I

    .line 129
    return-void
.end method

.method public blacklist onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 143
    return-void
.end method

.method public blacklist onImsProgressing(I)V
    .registers 2
    .param p1, "imsRadioTech"    # I

    .line 136
    return-void
.end method

.method public blacklist onImsResumed()V
    .registers 1

    .line 152
    return-void
.end method

.method public blacklist onImsSuspended()V
    .registers 1

    .line 160
    return-void
.end method

.method public final whitelist onRegistered(I)V
    .registers 2
    .param p1, "imsRadioTech"    # I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected(I)V

    .line 39
    return-void
.end method

.method public final whitelist onRegistering(I)V
    .registers 2
    .param p1, "imsRadioTech"    # I

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing(I)V

    .line 44
    return-void
.end method

.method public blacklist onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 191
    return-void
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 60
    return-void
.end method

.method public final whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsConnectionStateListener;->onRegistrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 55
    return-void
.end method

.method public final whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 49
    return-void
.end method

.method public blacklist onVoiceMessageCountChanged(I)V
    .registers 2
    .param p1, "count"    # I

    .line 177
    return-void
.end method

.method public blacklist registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 184
    return-void
.end method
