.class public Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierAppInstallReceiver.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 33
    const-string p0, "Received package install intent"

    const-string v0, "CarrierAppInstall"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 36
    const-string p0, "Package is empty, ignoring"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_27
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->isPackageInstallNotificationActive(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 43
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    :cond_33
    return-void
.end method
