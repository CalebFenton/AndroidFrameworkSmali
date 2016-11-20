.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final DEBUG_MULTIUSER:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p1, v4, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 639
    .local v3, "result":I
    if-eqz v3, :cond_0

    #@a
    .line 640
    const-string/jumbo v4, "SmsApplication"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, " does not have system signature"

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 641
    return-void

    #@25
    .line 644
    :cond_0
    const/4 v4, 0x0

    #@26
    :try_start_0
    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@29
    move-result-object v1

    #@2a
    .line 645
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2e
    const/16 v5, 0xf

    #@30
    invoke-virtual {p2, v5, v4, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@33
    move-result v2

    #@34
    .line 647
    .local v2, "mode":I
    if-eqz v2, :cond_1

    #@36
    .line 648
    const-string/jumbo v4, "SmsApplication"

    #@39
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    const-string/jumbo v6, " does not have OP_WRITE_SMS:  (fixing)"

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 649
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@54
    const/16 v5, 0xf

    #@56
    .line 650
    const/4 v6, 0x0

    #@57
    .line 649
    invoke-virtual {p2, v5, v4, p3, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 634
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "mode":I
    :cond_1
    :goto_0
    return-void

    #@5b
    .line 652
    :catch_0
    move-exception v0

    #@5c
    .line 654
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SmsApplication"

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Package not found: "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    goto :goto_0
.end method

.method private static assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V
    .locals 2
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 660
    const/16 v0, 0xf

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    #@6
    .line 659
    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 720
    const-string/jumbo v0, "sms"

    #@3
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@6
    .line 721
    const-string/jumbo v0, "smsto"

    #@9
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@c
    .line 722
    const-string/jumbo v0, "mms"

    #@f
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@12
    .line 723
    const-string/jumbo v0, "mmsto"

    #@15
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@18
    .line 718
    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 398
    const-string/jumbo v9, "phone"

    #@3
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v8

    #@7
    .line 397
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@9
    .line 399
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v9

    #@d
    if-nez v9, :cond_0

    #@f
    .line 401
    const/4 v9, 0x0

    #@10
    return-object v9

    #@11
    .line 404
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    #@14
    move-result-object v2

    #@15
    .line 410
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18
    move-result-object v9

    #@19
    .line 411
    const-string/jumbo v10, "sms_default_application"

    #@1c
    .line 410
    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 416
    .local v3, "defaultApplication":Ljava/lang/String;
    const/4 v1, 0x0

    #@21
    .line 417
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_1

    #@23
    .line 418
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@26
    move-result-object v1

    #@27
    .line 425
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    if-eqz p1, :cond_3

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v7

    #@2f
    .line 429
    .local v7, "r":Landroid/content/res/Resources;
    const v9, 0x1040046

    #@32
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 430
    .local v4, "defaultPackage":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@39
    move-result-object v1

    #@3a
    .line 432
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-nez v1, :cond_2

    #@3c
    .line 434
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_2

    #@42
    .line 435
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@45
    move-result-object v9

    #@46
    const/4 v10, 0x0

    #@47
    aget-object v1, v9, v10

    #@49
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@4b
    .line 440
    .restart local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    if-eqz v1, :cond_3

    #@4d
    .line 441
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@4f
    invoke-static {v9, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    #@52
    .line 446
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v4    # "defaultPackage":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v1, :cond_6

    #@54
    .line 447
    const-string/jumbo v9, "appops"

    #@57
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Landroid/app/AppOpsManager;

    #@5d
    .line 453
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-nez p1, :cond_4

    #@5f
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@61
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@64
    move-result v10

    #@65
    if-ne v9, v10, :cond_5

    #@67
    .line 455
    :cond_4
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@69
    .line 456
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@6b
    .line 455
    const/16 v11, 0xf

    #@6d
    invoke-virtual {v0, v11, v9, v10}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@70
    move-result v5

    #@71
    .line 457
    .local v5, "mode":I
    if-eqz v5, :cond_5

    #@73
    .line 458
    const-string/jumbo v10, "SmsApplication"

    #@76
    new-instance v9, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@7d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    const-string/jumbo v11, " lost OP_WRITE_SMS: "

    #@84
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v11

    #@88
    .line 459
    if-eqz p1, :cond_7

    #@8a
    const-string/jumbo v9, " (fixing)"

    #@8d
    .line 458
    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-static {v10, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 460
    if-eqz p1, :cond_8

    #@9a
    .line 461
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@9c
    .line 462
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@9e
    .line 461
    const/16 v11, 0xf

    #@a0
    .line 462
    const/4 v12, 0x0

    #@a1
    .line 461
    invoke-virtual {v0, v11, v9, v10, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@a4
    .line 471
    .end local v5    # "mode":I
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    #@a6
    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a9
    move-result-object v6

    #@aa
    .line 477
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ComponentName;

    #@ac
    .line 478
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@ae
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@b0
    .line 477
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    invoke-static {v6, v9, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@b6
    .line 482
    const-string/jumbo v9, "com.android.phone"

    #@b9
    .line 481
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@bc
    .line 484
    const-string/jumbo v9, "com.android.bluetooth"

    #@bf
    .line 483
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c2
    .line 486
    const-string/jumbo v9, "com.android.mms.service"

    #@c5
    .line 485
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c8
    .line 488
    const-string/jumbo v9, "com.android.providers.telephony"

    #@cb
    .line 487
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@ce
    .line 493
    const/16 v9, 0x3e9

    #@d0
    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    #@d3
    .line 499
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_6
    return-object v1

    #@d4
    .line 459
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v5    # "mode":I
    :cond_7
    const-string/jumbo v9, " (no permission to fix)"

    #@d7
    goto :goto_0

    #@d8
    .line 465
    :cond_8
    const/4 v1, 0x0

    #@d9
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    goto :goto_1
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v2

    #@4
    .line 207
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 209
    .local v0, "token":J
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v3

    #@c
    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 209
    return-object v3

    #@10
    .line 210
    :catchall_0
    move-exception v3

    #@11
    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 210
    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v5

    #@4
    .line 220
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    #@6
    const-string/jumbo v17, "android.provider.Telephony.SMS_DELIVER"

    #@9
    move-object/from16 v0, v17

    #@b
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 221
    .local v3, "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@10
    move/from16 v0, v17

    #@12
    move/from16 v1, p1

    #@14
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@17
    move-result-object v16

    #@18
    .line 224
    .local v16, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    #@1a
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 227
    .local v8, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v10

    #@21
    .local v10, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v17

    #@25
    if-eqz v17, :cond_1

    #@27
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@2d
    .line 228
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2f
    .line 229
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    #@31
    .line 232
    const-string/jumbo v17, "android.permission.BROADCAST_SMS"

    #@34
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@36
    move-object/from16 v18, v0

    #@38
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v17

    #@3c
    if-eqz v17, :cond_0

    #@3e
    .line 235
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@40
    .line 236
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@43
    move-result v17

    #@44
    if-nez v17, :cond_0

    #@46
    .line 237
    new-instance v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@48
    .line 238
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4a
    move-object/from16 v17, v0

    #@4c
    move-object/from16 v0, v17

    #@4e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@50
    move/from16 v17, v0

    #@52
    .line 237
    move/from16 v0, v17

    #@54
    invoke-direct {v15, v6, v0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    #@57
    .line 239
    .local v15, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@59
    move-object/from16 v17, v0

    #@5b
    move-object/from16 v0, v17

    #@5d
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@5f
    .line 240
    invoke-virtual {v8, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    goto :goto_0

    #@63
    .line 245
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    #@65
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@68
    move-object/from16 v0, v17

    #@6a
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6d
    .line 246
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "application/vnd.wap.mms-message"

    #@70
    const/16 v18, 0x0

    #@72
    move-object/from16 v0, v18

    #@74
    move-object/from16 v1, v17

    #@76
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@79
    .line 247
    const/16 v17, 0x0

    #@7b
    move/from16 v0, v17

    #@7d
    move/from16 v1, p1

    #@7f
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@82
    move-result-object v4

    #@83
    .line 249
    .local v4, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@86
    move-result-object v10

    #@87
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v17

    #@8b
    if-eqz v17, :cond_3

    #@8d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@90
    move-result-object v9

    #@91
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@93
    .line 250
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@95
    .line 251
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    #@97
    .line 254
    const-string/jumbo v17, "android.permission.BROADCAST_WAP_PUSH"

    #@9a
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@9c
    move-object/from16 v18, v0

    #@9e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v17

    #@a2
    if-eqz v17, :cond_2

    #@a4
    .line 257
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a6
    .line 258
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v15

    #@aa
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@ac
    .line 259
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_2

    #@ae
    .line 260
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@b0
    move-object/from16 v17, v0

    #@b2
    move-object/from16 v0, v17

    #@b4
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@b6
    goto :goto_1

    #@b7
    .line 265
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    #@b9
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.intent.action.RESPOND_VIA_MESSAGE"

    #@bc
    .line 266
    const-string/jumbo v18, "smsto"

    #@bf
    const-string/jumbo v19, ""

    #@c2
    const/16 v20, 0x0

    #@c4
    invoke-static/range {v18 .. v20}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@c7
    move-result-object v18

    #@c8
    .line 265
    move-object/from16 v0, v17

    #@ca
    move-object/from16 v1, v18

    #@cc
    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@cf
    .line 267
    .restart local v3    # "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@d1
    move/from16 v0, v17

    #@d3
    move/from16 v1, p1

    #@d5
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@d8
    move-result-object v11

    #@d9
    .line 269
    .local v11, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@dc
    move-result-object v10

    #@dd
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@e0
    move-result v17

    #@e1
    if-eqz v17, :cond_5

    #@e3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e6
    move-result-object v9

    #@e7
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@e9
    .line 270
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@eb
    .line 271
    .local v13, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v13, :cond_4

    #@ed
    .line 274
    const-string/jumbo v17, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    #@f0
    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@f2
    move-object/from16 v18, v0

    #@f4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v17

    #@f8
    if-eqz v17, :cond_4

    #@fa
    .line 277
    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@fc
    .line 278
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    move-result-object v15

    #@100
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@102
    .line 279
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_4

    #@104
    .line 280
    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@106
    move-object/from16 v17, v0

    #@108
    move-object/from16 v0, v17

    #@10a
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@10c
    goto :goto_2

    #@10d
    .line 285
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    #@10f
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.intent.action.SENDTO"

    #@112
    .line 286
    const-string/jumbo v18, "smsto"

    #@115
    const-string/jumbo v19, ""

    #@118
    const/16 v20, 0x0

    #@11a
    invoke-static/range {v18 .. v20}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@11d
    move-result-object v18

    #@11e
    .line 285
    move-object/from16 v0, v17

    #@120
    move-object/from16 v1, v18

    #@122
    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@125
    .line 287
    .restart local v3    # "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@127
    move/from16 v0, v17

    #@129
    move/from16 v1, p1

    #@12b
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@12e
    move-result-object v12

    #@12f
    .line 289
    .local v12, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@132
    move-result-object v10

    #@133
    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@136
    move-result v17

    #@137
    if-eqz v17, :cond_7

    #@139
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13c
    move-result-object v9

    #@13d
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@13f
    .line 290
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@141
    .line 291
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_6

    #@143
    .line 294
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@145
    .line 295
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    move-result-object v15

    #@149
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@14b
    .line 296
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_6

    #@14d
    .line 297
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@14f
    move-object/from16 v17, v0

    #@151
    move-object/from16 v0, v17

    #@153
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@155
    goto :goto_3

    #@156
    .line 302
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    #@158
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@15b
    move-object/from16 v0, v17

    #@15d
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@160
    .line 304
    .restart local v3    # "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@162
    .line 303
    move/from16 v0, v17

    #@164
    move/from16 v1, p1

    #@166
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@169
    move-result-object v14

    #@16a
    .line 309
    .local v14, "smsAppChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16d
    move-result-object v10

    #@16e
    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@171
    move-result v17

    #@172
    if-eqz v17, :cond_9

    #@174
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@177
    move-result-object v9

    #@178
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@17a
    .line 310
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@17c
    .line 311
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_8

    #@17e
    .line 314
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@180
    .line 315
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@183
    move-result-object v15

    #@184
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@186
    .line 321
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_8

    #@188
    .line 322
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@18a
    move-object/from16 v17, v0

    #@18c
    move-object/from16 v0, v17

    #@18e
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@190
    goto :goto_4

    #@191
    .line 327
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    new-instance v3, Landroid/content/Intent;

    #@193
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v17, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    #@196
    move-object/from16 v0, v17

    #@198
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19b
    .line 329
    .restart local v3    # "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    #@19d
    .line 328
    move/from16 v0, v17

    #@19f
    move/from16 v1, p1

    #@1a1
    invoke-virtual {v5, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1a4
    move-result-object v7

    #@1a5
    .line 334
    .local v7, "providerChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a8
    move-result-object v10

    #@1a9
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1ac
    move-result v17

    #@1ad
    if-eqz v17, :cond_b

    #@1af
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b2
    move-result-object v9

    #@1b3
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@1b5
    .line 335
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1b7
    .line 336
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_a

    #@1b9
    .line 339
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1bb
    .line 340
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    move-result-object v15

    #@1bf
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@1c1
    .line 346
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_a

    #@1c3
    .line 347
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1c5
    move-object/from16 v17, v0

    #@1c7
    move-object/from16 v0, v17

    #@1c9
    iput-object v0, v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@1cb
    goto :goto_5

    #@1cc
    .line 352
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1cf
    move-result-object v10

    #@1d0
    :cond_c
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1d3
    move-result v17

    #@1d4
    if-eqz v17, :cond_d

    #@1d6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d9
    move-result-object v9

    #@1da
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@1dc
    .line 353
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1de
    .line 354
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_c

    #@1e0
    .line 357
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1e2
    .line 358
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e5
    move-result-object v15

    #@1e6
    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@1e8
    .line 359
    .restart local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v15, :cond_c

    #@1ea
    .line 360
    invoke-virtual {v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    #@1ed
    move-result v17

    #@1ee
    if-nez v17, :cond_c

    #@1f0
    .line 361
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f3
    goto :goto_6

    #@1f4
    .line 365
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_d
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@1f7
    move-result-object v17

    #@1f8
    return-object v17
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v3, 0x0

    #@1
    .line 374
    if-nez p1, :cond_0

    #@3
    .line 375
    return-object v3

    #@4
    .line 378
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "application$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@14
    .line 379
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v2, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 380
    return-object v0

    #@1d
    .line 383
    .end local v0    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    return-object v3
.end method

.method public static getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 869
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 870
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 872
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 873
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 875
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 876
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 877
    new-instance v0, Landroid/content/ComponentName;

    #@15
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@17
    .line 878
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@19
    .line 877
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 882
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 880
    return-object v0

    #@20
    .line 881
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@21
    .line 882
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 881
    throw v5
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 794
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 795
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 797
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 798
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 800
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 801
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 802
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@15
    .line 801
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 806
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 804
    return-object v0

    #@1c
    .line 805
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 806
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 805
    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 818
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 819
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 821
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 822
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 824
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 825
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 826
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@15
    .line 825
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 830
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 828
    return-object v0

    #@1c
    .line 829
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 830
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 829
    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 844
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 845
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 847
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 848
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 850
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 851
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 852
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@15
    .line 851
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 856
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 854
    return-object v0

    #@1c
    .line 855
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 856
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 855
    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 771
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 772
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 774
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 775
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 777
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 778
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 779
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@15
    .line 778
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 783
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 781
    return-object v0

    #@1c
    .line 782
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 783
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 782
    throw v5
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 918
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    .line 919
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@8
    .line 920
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 922
    :cond_0
    return-object v2
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    #@3
    move-result v1

    #@4
    .line 173
    .local v1, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    .line 178
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v2

    #@c
    .line 179
    const/16 v3, 0x2710

    #@e
    .line 178
    if-ge v2, v3, :cond_0

    #@10
    .line 180
    return v1

    #@11
    .line 182
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@14
    move-result v2

    #@15
    return v2
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 760
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    .line 761
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 713
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    #@5
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@7
    .line 714
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@13
    .line 712
    return-void
.end method

.method public static isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 906
    if-nez p1, :cond_0

    #@3
    .line 907
    return v2

    #@4
    .line 909
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 910
    .local v0, "defaultSmsPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2

    #@10
    .line 911
    :cond_1
    const-string/jumbo v1, "com.android.bluetooth"

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 910
    if-eqz v1, :cond_3

    #@19
    .line 912
    :cond_2
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 914
    :cond_3
    return v2
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 732
    new-instance v8, Landroid/content/Intent;

    #@2
    const-string/jumbo v0, "android.intent.action.SENDTO"

    #@5
    const-string/jumbo v2, ""

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {p3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@10
    .line 734
    .local v8, "intent":Landroid/content/Intent;
    const v0, 0x10040

    #@13
    .line 733
    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v10

    #@17
    .line 738
    .local v10, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@1a
    move-result v9

    #@1b
    .line 739
    .local v9, "n":I
    new-array v3, v9, [Landroid/content/ComponentName;

    #@1d
    .line 740
    .local v3, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    #@1e
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    #@20
    .line 741
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@26
    .line 742
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@28
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2c
    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@30
    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    aput-object v0, v3, v6

    #@35
    .line 740
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 746
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    #@3a
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@3d
    .line 747
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SENDTO"

    #@40
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 748
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    #@46
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@49
    .line 749
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4c
    .line 751
    const v2, 0x208000

    #@4f
    move-object v0, p0

    #@50
    move-object v4, p1

    #@51
    move v5, p2

    #@52
    .line 750
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@55
    .line 730
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 507
    const-string/jumbo v4, "phone"

    #@3
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@9
    .line 508
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 510
    return-void

    #@10
    .line 513
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@13
    move-result v1

    #@14
    .line 514
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 516
    .local v2, "token":J
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 518
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 506
    return-void

    #@1f
    .line 517
    :catchall_0
    move-exception v4

    #@20
    .line 518
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 517
    throw v4
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 16
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v12

    #@4
    .line 526
    const-string/jumbo v13, "sms_default_application"

    #@7
    .line 525
    move/from16 v0, p2

    #@9
    invoke-static {v12, v13, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v10

    #@d
    .line 533
    .local v10, "oldPackageName":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@f
    if-eqz v10, :cond_0

    #@11
    move-object/from16 v0, p0

    #@13
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v12

    #@17
    if-eqz v12, :cond_0

    #@19
    .line 535
    return-void

    #@1a
    .line 539
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v11

    #@1e
    .line 540
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@21
    move-result-object v3

    #@22
    .line 541
    .local v3, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    if-eqz v10, :cond_5

    #@24
    .line 542
    invoke-static {v3, v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@27
    move-result-object v8

    #@28
    .line 543
    :goto_0
    move-object/from16 v0, p0

    #@2a
    invoke-static {v3, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@2d
    move-result-object v2

    #@2e
    .line 544
    .local v2, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v2, :cond_4

    #@30
    .line 546
    const-string/jumbo v12, "appops"

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/app/AppOpsManager;

    #@3b
    .line 547
    .local v1, "appOps":Landroid/app/AppOpsManager;
    if-eqz v10, :cond_1

    #@3d
    .line 550
    const/16 v12, 0x2000

    #@3f
    .line 549
    :try_start_0
    invoke-virtual {v11, v10, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@42
    move-result-object v6

    #@43
    .line 551
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@45
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    #@47
    const/16 v13, 0xf

    #@49
    .line 552
    const/4 v14, 0x1

    #@4a
    .line 551
    invoke-virtual {v1, v13, v12, v10, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 559
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v12

    #@51
    .line 560
    const-string/jumbo v13, "sms_default_application"

    #@54
    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@56
    .line 559
    move/from16 v0, p2

    #@58
    invoke-static {v12, v13, v14, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@5b
    .line 564
    new-instance v12, Landroid/content/ComponentName;

    #@5d
    .line 565
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@5f
    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@61
    .line 564
    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    move/from16 v0, p2

    #@66
    invoke-static {v11, v12, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@69
    .line 568
    iget v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@6b
    .line 569
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@6d
    .line 568
    const/16 v14, 0xf

    #@6f
    .line 569
    const/4 v15, 0x0

    #@70
    .line 568
    invoke-virtual {v1, v14, v12, v13, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@73
    .line 573
    const-string/jumbo v12, "com.android.phone"

    #@76
    .line 572
    move-object/from16 v0, p1

    #@78
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@7b
    .line 575
    const-string/jumbo v12, "com.android.bluetooth"

    #@7e
    .line 574
    move-object/from16 v0, p1

    #@80
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@83
    .line 577
    const-string/jumbo v12, "com.android.mms.service"

    #@86
    .line 576
    move-object/from16 v0, p1

    #@88
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@8b
    .line 579
    const-string/jumbo v12, "com.android.providers.telephony"

    #@8e
    .line 578
    move-object/from16 v0, p1

    #@90
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@93
    .line 584
    const/16 v12, 0x3e9

    #@95
    invoke-static {v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    #@98
    .line 589
    if-eqz v8, :cond_2

    #@9a
    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@9c
    if-eqz v12, :cond_2

    #@9e
    .line 592
    new-instance v9, Landroid/content/Intent;

    #@a0
    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@a3
    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a6
    .line 593
    .local v9, "oldAppIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    #@a8
    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@aa
    .line 594
    iget-object v13, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@ac
    .line 593
    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 595
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b2
    .line 596
    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    #@b5
    const/4 v13, 0x0

    #@b6
    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@b9
    .line 600
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@be
    .line 608
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v9    # "oldAppIntent":Landroid/content/Intent;
    :cond_2
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@c0
    if-eqz v12, :cond_3

    #@c2
    .line 610
    new-instance v7, Landroid/content/Intent;

    #@c4
    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@c7
    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ca
    .line 611
    .local v7, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    #@cc
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@ce
    .line 612
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@d0
    .line 611
    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d3
    .line 613
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@d6
    .line 614
    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    #@d9
    const/4 v13, 0x1

    #@da
    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@dd
    .line 618
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@e2
    .line 621
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@e4
    .line 620
    const/16 v13, 0x10a

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-static {v0, v13, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@eb
    .line 523
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    :cond_4
    return-void

    #@ec
    .line 542
    .end local v2    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    const/4 v8, 0x0

    #@ed
    .local v8, "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    goto/16 :goto_0

    #@ef
    .line 553
    .end local v8    # "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catch_0
    move-exception v5

    #@f0
    .line 554
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "SmsApplication"

    #@f3
    new-instance v13, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v14, "Old SMS package not found: "

    #@fb
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v13

    #@ff
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v13

    #@103
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v13

    #@107
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    goto/16 :goto_1
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 892
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 893
    return v0

    #@c
    .line 895
    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x0

    #@13
    :cond_1
    return v0
.end method
