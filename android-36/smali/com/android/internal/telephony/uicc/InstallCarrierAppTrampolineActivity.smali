.class public Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;
.super Landroid/app/Activity;
.source "InstallCarrierAppTrampolineActivity.java"


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private blacklist finishNoAnimation()V
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static blacklist get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string p0, "package_name"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_17

    const/4 p1, 0x2

    if-ne p2, p1, :cond_14

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 114
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->finishNoAnimation()V

    :cond_17
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 70
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    .line 75
    :cond_11
    const-string v0, "CarrierAppInstall"

    if-nez p1, :cond_45

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    .line 78
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 76
    const-string v3, "install_carrier_app_notification_sleep_millis"

    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping carrier app install notification for : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " millis"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotificationIfNotInstalledDelayed(Landroid/content/Context;Ljava/lang/String;J)V

    .line 88
    :cond_45
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 90
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 95
    const-string v2, "carrier_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_6d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_80

    .line 99
    const-string p1, "Could not resolve activity for installing the carrier app"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->finishNoAnimation()V

    return-void

    :cond_80
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
