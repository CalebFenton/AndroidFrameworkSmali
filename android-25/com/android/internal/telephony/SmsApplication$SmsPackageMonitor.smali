.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
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
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@3
    .line 672
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    #@5
    .line 670
    return-void
.end method

.method private onPackageChanged()V
    .locals 9

    #@0
    .prologue
    .line 691
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v2

    #@6
    .line 692
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    #@8
    .line 693
    .local v3, "userContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->getSendingUserId()I

    #@b
    move-result v4

    #@c
    .line 694
    .local v4, "userId":I
    if-eqz v4, :cond_0

    #@e
    .line 696
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    #@10
    iget-object v6, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 697
    new-instance v7, Landroid/os/UserHandle;

    #@18
    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@1b
    .line 696
    const/4 v8, 0x0

    #@1c
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v3

    #@20
    .line 705
    :cond_0
    :goto_0
    const/4 v5, 0x1

    #@21
    invoke-static {v3, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@24
    move-result-object v0

    #@25
    .line 706
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    #@27
    .line 707
    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/SmsApplication;->-wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@2a
    .line 690
    :cond_1
    return-void

    #@2b
    .line 698
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@2c
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    #@3
    .line 681
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    #@3
    .line 676
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V

    #@3
    .line 686
    return-void
.end method
