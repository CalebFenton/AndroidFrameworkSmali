.class public Lcom/android/internal/telephony/euicc/IEuiccController$Default;
.super Ljava/lang/Object;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "cardId"    # I
    .param p2, "resolutionIntent"    # Landroid/content/Intent;
    .param p3, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "cardId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "resolvedBundle"    # Landroid/os/Bundle;
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .registers 3
    .param p1, "cardId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "cardId"    # I
    .param p2, "options"    # I
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist getAvailableMemoryInBytes(ILjava/lang/String;)J
    .registers 5
    .param p1, "cardId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "cardId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "cardId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist getEid(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cardId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
    .registers 3
    .param p1, "cardId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOtaStatus(I)I
    .registers 3
    .param p1, "cardId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedCountries(Z)Ljava/util/List;
    .registers 3
    .param p1, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCompatChangeEnabled(Ljava/lang/String;J)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "changeId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPsimConversionSupported(I)Z
    .registers 3
    .param p1, "carrierId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSimPortAvailable(IILjava/lang/String;)Z
    .registers 5
    .param p1, "cardId"    # I
    .param p2, "portIndex"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportedCountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    .registers 3
    .param p1, "cardId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist setPsimConversionSupportedCarriers([I)V
    .registers 2
    .param p1, "carrierIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist setSupportedCountries(ZLjava/util/List;)V
    .registers 3
    .param p1, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    .local p2, "countriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "portIndex"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "cardId"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "nickname"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method
