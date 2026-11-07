.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/telephony/PackageChangeReceiver;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 819
    invoke-direct {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;-><init>()V

    .line 820
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .line 821
    return-void
.end method

.method private blacklist onPackageChanged()V
    .registers 7

    .line 841
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 847
    .local v0, "userId":I
    goto :goto_11

    .line 842
    .end local v0    # "userId":I
    :catch_9
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    move v0, v1

    .line 848
    .local v0, "userId":I
    :goto_11
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .line 849
    .local v1, "userContext":Landroid/content/Context;
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v0, v2, :cond_2f

    .line 851
    :try_start_1b
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 851
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_2c} :catch_2e

    move-object v1, v2

    .line 857
    goto :goto_2f

    .line 853
    :catch_2e
    move-exception v2

    .line 859
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 861
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 862
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_3d

    .line 863
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 865
    :cond_3d
    return-void
.end method


# virtual methods
.method public blacklist onPackageAppeared()V
    .registers 1

    .line 830
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 831
    return-void
.end method

.method public blacklist onPackageDisappeared()V
    .registers 1

    .line 825
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 826
    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 835
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    .line 836
    return-void
.end method
