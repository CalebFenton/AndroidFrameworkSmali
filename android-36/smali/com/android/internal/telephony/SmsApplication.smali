.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_MULTIUSER:Z = false

.field private static final blacklist DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field public static final blacklist MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field public static final blacklist PERMISSION_MONITOR_DEFAULT_SMS_PACKAGE:Ljava/lang/String; = "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

.field public static final blacklist PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final blacklist SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final blacklist SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final blacklist SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final blacklist SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final blacklist TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static blacklist sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field private static blacklist sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbroadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 79
    const-string v4, "android:send_sms"

    const-string v5, "android:read_cell_broadcasts"

    const-string v0, "android:read_sms"

    const-string v1, "android:write_sms"

    const-string v2, "android:receive_sms"

    const-string v3, "android:receive_wap_push"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 90
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigatureMatch"    # Z

    .line 775
    if-nez p3, :cond_3

    return-void

    .line 779
    :cond_3
    const-string v0, "SmsApplication"

    if-eqz p4, :cond_28

    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 782
    .local v1, "result":I
    if-eqz v1, :cond_28

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have system signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 789
    .end local v1    # "result":I
    :cond_28
    const/4 v1, 0x0

    :try_start_29
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 790
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string v3, "android:write_sms"

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, p3}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 792
    .local v3, "mode":I
    if-eqz v3, :cond_56

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p2, v4, v1}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_56} :catch_57

    .line 800
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    :cond_56
    goto :goto_6e

    .line 797
    :catch_57
    move-exception v1

    .line 799
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6e
    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "oldAppData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p3, "applicationData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 723
    const-string v0, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    if-eqz p2, :cond_26

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 725
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, "oldAppIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 730
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 742
    .end local v2    # "oldAppIntent":Landroid/content/Intent;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_26
    if-eqz p3, :cond_48

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 743
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 748
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 757
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "oldPackage"    # Ljava/lang/String;
    .param p3, "newPackage"    # Ljava/lang/String;

    .line 710
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 712
    .local v0, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    nop

    .line 713
    invoke-static {v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 714
    invoke-static {v0, p3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 712
    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V

    .line 715
    return-void
.end method

.method private static greylist-max-r configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 919
    const-string/jumbo v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 920
    const-string/jumbo v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 921
    const-string v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 922
    const-string v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method private static blacklist getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    .line 477
    nop

    .line 478
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 479
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, "role"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 482
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_25

    if-eqz v1, :cond_23

    const-string v2, "android.app.role.SMS"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 485
    :cond_23
    const/4 v2, 0x0

    return-object v2

    .line 488
    :cond_25
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2

    .line 494
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "defaultApplication":Ljava/lang/String;
    const/4 v4, 0x0

    .line 500
    .local v4, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_34

    .line 501
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 508
    :cond_34
    if-eqz v4, :cond_51

    .line 513
    if-nez p1, :cond_42

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-ne v5, v6, :cond_4a

    .line 515
    :cond_42
    nop

    .line 516
    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/SmsApplication;->tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z

    move-result v5

    .line 517
    .local v5, "appOpsFixed":Z
    if-nez v5, :cond_4a

    .line 519
    const/4 v4, 0x0

    .line 524
    .end local v5    # "appOpsFixed":Z
    :cond_4a
    if-eqz v4, :cond_51

    if-eqz p1, :cond_51

    .line 529
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->grantPermissionsToSystemApps(Landroid/content/Context;)V

    .line 535
    :cond_51
    return-object v4
.end method

.method public static greylist getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    .local v0, "token":J
    :try_start_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    return-object v2

    .line 252
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw v2
.end method

.method private static blacklist getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 259
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 262
    .local v1, "userHandle":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v5, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 274
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 275
    .local v8, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_2f

    .line 276
    goto :goto_1e

    .line 278
    :cond_2f
    const-string v9, "android.permission.BROADCAST_SMS"

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 279
    goto :goto_1e

    .line 281
    :cond_3a
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 282
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 283
    new-instance v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v10, v9, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    .line 285
    .local v10, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_53
    goto :goto_1e

    .line 291
    :cond_54
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .end local v2    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    const-string v2, "application/vnd.wap.mms-message"

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {v0, v6, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 296
    .local v2, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_69
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_95

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 297
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 298
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v10, :cond_7a

    .line 299
    goto :goto_69

    .line 301
    :cond_7a
    const-string v11, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    .line 302
    goto :goto_69

    .line 304
    :cond_85
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 305
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 306
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_94

    .line 307
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 309
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_94
    goto :goto_69

    .line 312
    :cond_95
    new-instance v8, Landroid/content/Intent;

    .line 313
    const-string/jumbo v9, "smsto"

    const-string v10, ""

    invoke-static {v9, v10, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v8, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .end local v6    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    nop

    .line 316
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 314
    invoke-virtual {v0, v8, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 317
    .local v6, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 318
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 319
    .local v13, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v13, :cond_c3

    .line 320
    goto :goto_b2

    .line 322
    :cond_c3
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ce

    .line 323
    goto :goto_b2

    .line 325
    :cond_ce
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 326
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 327
    .local v15, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_dd

    .line 328
    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 330
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_dd
    const/high16 v3, 0xc0000

    goto :goto_b2

    .line 333
    :cond_e0
    new-instance v3, Landroid/content/Intent;

    .line 334
    invoke-static {v9, v10, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v3, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    .end local v8    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0xc0000

    invoke-virtual {v0, v3, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 338
    .local v8, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 339
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 340
    .restart local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v10, :cond_106

    .line 341
    goto :goto_f5

    .line 343
    :cond_106
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 344
    .restart local v11    # "packageName":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 345
    .local v12, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_115

    .line 346
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 348
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_115
    goto :goto_f5

    .line 351
    :cond_116
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .end local v3    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    nop

    .line 353
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v7, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    .line 360
    .local v9, "smsAppChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_128
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_149

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 361
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 362
    .local v11, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v11, :cond_139

    .line 363
    goto :goto_128

    .line 365
    :cond_139
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 366
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 372
    .local v13, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_148

    .line 373
    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 375
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_148
    goto :goto_128

    .line 378
    :cond_149
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    nop

    .line 380
    const/high16 v7, 0xc0000

    invoke-virtual {v0, v3, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v10

    .line 387
    .local v10, "providerChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 388
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 389
    .local v12, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v12, :cond_16c

    .line 390
    goto :goto_15b

    .line 392
    :cond_16c
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 393
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 399
    .local v14, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v14, :cond_17b

    .line 400
    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    .line 402
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_17b
    goto :goto_15b

    .line 405
    :cond_17c
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    nop

    .line 407
    const/high16 v3, 0xc0000

    invoke-virtual {v0, v7, v3, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 414
    .local v3, "simFullReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_18e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 415
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 416
    .local v13, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v13, :cond_19f

    .line 417
    goto :goto_18e

    .line 419
    :cond_19f
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 420
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 426
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_1b1

    .line 427
    move-object/from16 v16, v0

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    goto :goto_1b3

    .line 426
    .end local v16    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1b1
    move-object/from16 v16, v0

    .line 429
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v16    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1b3
    move-object/from16 v0, v16

    goto :goto_18e

    .line 432
    .end local v16    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1b6
    move-object/from16 v16, v0

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 433
    .restart local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 434
    .local v12, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v12, :cond_1cd

    .line 435
    goto :goto_1bc

    .line 437
    :cond_1cd
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 438
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 439
    .local v14, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v14, :cond_1e0

    .line 440
    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v15

    if-nez v15, :cond_1e0

    .line 441
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1e0
    goto :goto_1bc

    .line 445
    :cond_1e1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .line 454
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 455
    return-object v0

    .line 458
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 459
    .local v2, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 460
    return-object v2

    .line 462
    .end local v2    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1d
    goto :goto_8

    .line 463
    :cond_1e
    return-object v0
.end method

.method public static blacklist getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1117
    nop

    .line 1118
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1117
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultExternalTelephonyProviderChangedApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultExternalTelephonyProviderChangedApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1132
    if-nez p2, :cond_6

    .line 1133
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1136
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1138
    .local v0, "token":J
    const/4 v2, 0x0

    .line 1139
    .local v2, "component":Landroid/content/ComponentName;
    nop

    .line 1140
    :try_start_c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1139
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 1141
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_28

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1143
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2d

    move-object v2, v4

    .line 1146
    :cond_28
    nop

    .line 1148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    return-object v2

    .line 1148
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1149
    throw v2
.end method

.method public static greylist getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1020
    if-nez p2, :cond_6

    .line 1021
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1024
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1026
    .local v0, "token":J
    const/4 v2, 0x0

    .line 1027
    .local v2, "component":Landroid/content/ComponentName;
    nop

    .line 1028
    :try_start_c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1027
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 1029
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_22

    .line 1030
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_27

    move-object v2, v4

    .line 1033
    :cond_22
    nop

    .line 1035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1033
    return-object v2

    .line 1035
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    throw v2
.end method

.method public static greylist-max-r getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1048
    nop

    .line 1049
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1048
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultRespondViaMessageApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1062
    if-nez p2, :cond_6

    .line 1063
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1066
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1068
    .local v0, "token":J
    const/4 v2, 0x0

    .line 1069
    .local v2, "component":Landroid/content/ComponentName;
    nop

    .line 1070
    :try_start_c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1069
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 1071
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_22

    .line 1072
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_27

    move-object v2, v4

    .line 1075
    :cond_22
    nop

    .line 1077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    return-object v2

    .line 1077
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1078
    throw v2
.end method

.method public static blacklist getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1091
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    .line 1093
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1095
    .local v1, "token":J
    const/4 v3, 0x0

    .line 1096
    .local v3, "component":Landroid/content/ComponentName;
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 1098
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_1b

    .line 1099
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    move-object v3, v5

    .line 1102
    :cond_1b
    nop

    .line 1104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    return-object v3

    .line 1104
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    throw v3
.end method

.method public static blacklist getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 1160
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1173
    if-nez p2, :cond_6

    .line 1174
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1177
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1179
    .local v0, "token":J
    const/4 v2, 0x0

    .line 1180
    .local v2, "component":Landroid/content/ComponentName;
    nop

    .line 1181
    :try_start_c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1180
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 1182
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_28

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1184
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2d

    move-object v2, v4

    .line 1187
    :cond_28
    nop

    .line 1189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    return-object v2

    .line 1189
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    throw v2
.end method

.method public static greylist getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .line 967
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 980
    if-nez p2, :cond_6

    .line 981
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 984
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 986
    .local v0, "token":J
    const/4 v2, 0x0

    .line 987
    .local v2, "component":Landroid/content/ComponentName;
    nop

    .line 988
    :try_start_c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 987
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 989
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_22

    .line 990
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_27

    move-object v2, v4

    .line 993
    :cond_22
    nop

    .line 995
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-object v2

    .line 995
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    throw v2
.end method

.method private static blacklist getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 541
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 542
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    if-nez v0, :cond_d

    .line 543
    const-string v1, ""

    return-object v1

    .line 545
    :cond_d
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getSmsRoleHolder(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getIncomingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIncomingUserId()I
    .registers 4

    .line 196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 197
    .local v0, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 202
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_11

    .line 204
    return v0

    .line 206
    :cond_11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    return v2
.end method

.method public static greylist-max-r getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 955
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 956
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist grantPermissionsToSystemApps(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 553
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 555
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 556
    const v3, 0x1040043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "bluetoothPackageName":Ljava/lang/String;
    const-string v3, "com.android.phone"

    const/4 v4, 0x1

    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 560
    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 562
    const-string v5, "com.android.mms.service"

    invoke-static {p0, v0, v1, v5, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 564
    const-string v5, "com.android.providers.telephony"

    invoke-static {p0, v0, v1, v5, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 567
    nop

    .line 568
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-static {p0, v0, v1, v4, v3}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    .line 574
    sget-object v4, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_37
    if-ge v6, v5, :cond_43

    aget-object v7, v4, v6

    .line 575
    .local v7, "opStr":Ljava/lang/String;
    const/16 v8, 0x3e9

    invoke-virtual {v1, v7, v8, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 574
    .end local v7    # "opStr":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 577
    :cond_43
    return-void
.end method

.method public static blacklist initSmsPackageMonitor(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 910
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 911
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    .line 912
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    .line 913
    return-void
.end method

.method public static greylist isDefaultMmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1285
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultMmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultMmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1299
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1300
    return v0

    .line 1303
    :cond_4
    if-nez p2, :cond_a

    .line 1304
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1307
    :cond_a
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1309
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_11

    .line 1310
    return v0

    .line 1313
    :cond_11
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, "defaultMmsPackage":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 1315
    return v0

    .line 1318
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1319
    const v4, 0x1040043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1321
    .local v3, "bluetoothPackageName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_31

    .line 1324
    :cond_30
    return v0

    .line 1322
    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1234
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1248
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1249
    return v0

    .line 1252
    :cond_4
    if-nez p2, :cond_a

    .line 1253
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1256
    :cond_a
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1258
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_11

    .line 1259
    return v0

    .line 1262
    :cond_11
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, "defaultSmsPackage":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 1264
    return v0

    .line 1267
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1268
    const v4, 0x1040043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1270
    .local v3, "bluetoothPackageName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_31

    .line 1273
    :cond_30
    return v0

    .line 1271
    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$replacePreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .line 936
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$setDefaultApplicationInternal$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 671
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 674
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 676
    :goto_13
    return-void
.end method

.method private static blacklist replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 932
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 935
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 937
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 940
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 941
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 942
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 944
    const v2, 0x208000

    invoke-virtual {p0, v4, v2, v3, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V

    .line 947
    return-void
.end method

.method public static greylist-max-r setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V

    .line 606
    return-void
.end method

.method public static blacklist setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 613
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 614
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, "role"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 617
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_23

    if-eqz v1, :cond_22

    const-string v2, "android.app.role.SMS"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 620
    :cond_22
    return-void

    .line 623
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 625
    .local v2, "token":J
    :try_start_27
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 627
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_2f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw v4
.end method

.method private static blacklist setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 22
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 633
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 636
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "oldPackageName":Ljava/lang/String;
    if-eqz v1, :cond_17

    if-eqz v4, :cond_17

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 645
    return-void

    .line 649
    :cond_17
    nop

    .line 650
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 651
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v6

    .line 653
    .local v6, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    if-eqz v4, :cond_2c

    .line 654
    invoke-static {v6, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v7

    goto :goto_2d

    :cond_2c
    const/4 v7, 0x0

    .line 655
    .local v7, "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :goto_2d
    invoke-static {v6, v1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    .line 656
    .local v8, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v8, :cond_ab

    .line 658
    const-string v9, "appops"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager;

    .line 659
    .local v9, "appOps":Landroid/app/AppOpsManager;
    const-string v10, "SmsApplication"

    if-eqz v4, :cond_63

    .line 661
    :try_start_3f
    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 662
    .local v0, "uid":I
    const/4 v11, 0x3

    invoke-static {v4, v9, v0, v11}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_4b} :catch_4c

    .line 665
    .end local v0    # "uid":I
    goto :goto_63

    .line 663
    :catch_4c
    move-exception v0

    .line 664
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Old SMS package not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_63
    :goto_63
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v11, v0

    .line 670
    .local v11, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v18, v0

    .line 677
    .local v18, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/role/RoleManager;

    iget-object v14, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 678
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v16

    sget-object v17, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 677
    const-string v13, "android.app.role.SMS"

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 681
    :try_start_87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    invoke-virtual {v11, v12, v13, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8e} :catch_93
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_87 .. :try_end_8e} :catch_93
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_87 .. :try_end_8e} :catch_93

    .line 685
    nop

    .line 687
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication;->grantPermissionsToSystemApps(Landroid/content/Context;)V

    goto :goto_ab

    .line 682
    :catch_93
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while adding sms role holder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    return-void

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "appOps":Landroid/app/AppOpsManager;
    .end local v11    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v18    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :cond_ab
    :goto_ab
    return-void
.end method

.method private static blacklist setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    .registers 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 806
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 807
    .local v3, "opStr":Ljava/lang/String;
    invoke-virtual {p1, v3, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 806
    .end local v3    # "opStr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 809
    :cond_e
    return-void
.end method

.method public static greylist-max-r shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 1205
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackageAsUser(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldWriteMessageForPackageAsUser(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 1222
    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationData"    # Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .param p2, "updateIfNeeded"    # Z

    .line 581
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 582
    .local v0, "appOps":Landroid/app/AppOpsManager;
    sget-object v1, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_5a

    aget-object v5, v1, v4

    .line 583
    .local v5, "opStr":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v6

    iget-object v7, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 585
    .local v6, "mode":I
    if-eqz v6, :cond_57

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    if-eqz p2, :cond_3d

    const-string v8, " (fixing)"

    goto :goto_3f

    :cond_3d
    const-string v8, " (no permission to fix)"

    :goto_3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 586
    const-string v8, "SmsApplication"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    if-eqz p2, :cond_56

    .line 590
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v7

    invoke-virtual {v0, v5, v7, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_57

    .line 592
    :cond_56
    return v3

    .line 582
    .end local v5    # "opStr":Ljava/lang/String;
    .end local v6    # "mode":I
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 596
    :cond_5a
    const/4 v1, 0x1

    return v1
.end method
