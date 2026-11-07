.class public Lcom/android/internal/telephony/TelephonyAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyAdminReceiver.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisallowCellular2gRestriction:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->ensureUserManagerExists()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 42
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_cellular_2g"

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 45
    :cond_1d
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    const-string v0, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist ensureUserManagerExists()Z
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string v1, "TelephonyAdminReceiver"

    if-nez v0, :cond_17

    .line 89
    const-string v0, "No user manager. Attempting to resolve one."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    .line 92
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    if-nez p0, :cond_22

    .line 93
    const-string p0, "Could not get a user manager instance. All operations will be no-ops until one is resolved"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist isCellular2gDisabled()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    return p0
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 52
    const-string v0, "Processing onReceive"

    const-string v1, "TelephonyAdminReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_77

    if-nez p2, :cond_c

    goto :goto_77

    .line 54
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring unexpected action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->ensureUserManagerExists()Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_77

    .line 61
    :cond_38
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mUserManager:Landroid/os/UserManager;

    const-string p2, "no_cellular_2g"

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    .line 64
    iget-boolean p2, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    if-eq p1, p2, :cond_61

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating allowed network types with new admin 2g restriction. no_cellular_2g: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->sendSubscriptionSettings(Z)V

    return-void

    .line 71
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping update of allowed network types. Restriction no_cellular_2g unchanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/TelephonyAdminReceiver;->mDisallowCellular2gRestriction:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    return-void
.end method
