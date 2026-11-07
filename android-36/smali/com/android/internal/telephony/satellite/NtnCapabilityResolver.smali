.class public Lcom/android/internal/telephony/satellite/NtnCapabilityResolver;
.super Ljava/lang/Object;
.source "NtnCapabilityResolver.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 63
    const-string v0, "NtnCapabilityResolver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist resolveNtnCapability(Landroid/telephony/NetworkRegistrationInfo;I)V
    .registers 7

    .line 42
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4e

    .line 47
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 51
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered to satellite PLMN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/NtnCapabilityResolver;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/telephony/NetworkRegistrationInfo;->setIsNonTerrestrialNetwork(Z)V

    .line 55
    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSupportedSatelliteServicesForPlmn(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/telephony/NetworkRegistrationInfo;->setAvailableServices(Ljava/util/List;)V

    :cond_4e
    :goto_4e
    return-void
.end method
