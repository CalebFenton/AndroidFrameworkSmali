.class public Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShowInstallAppNotificationReceiver.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static blacklist get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string p0, "package_name"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 39
    const-string p0, "package_name"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageBundled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    .line 42
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    :cond_12
    return-void
.end method
