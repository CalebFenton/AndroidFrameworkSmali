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
    .line 71
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
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
    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p1, v4, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 623
    .local v3, "result":I
    if-eqz v3, :cond_0

    #@a
    .line 624
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
    .line 625
    return-void

    #@25
    .line 628
    :cond_0
    const/4 v4, 0x0

    #@26
    :try_start_0
    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@29
    move-result-object v1

    #@2a
    .line 629
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
    .line 631
    .local v2, "mode":I
    if-eqz v2, :cond_1

    #@36
    .line 632
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
    .line 633
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@54
    const/16 v5, 0xf

    #@56
    .line 634
    const/4 v6, 0x0

    #@57
    .line 633
    invoke-virtual {p2, v5, v4, p3, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 618
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "mode":I
    :cond_1
    :goto_0
    return-void

    #@5b
    .line 636
    :catch_0
    move-exception v0

    #@5c
    .line 638
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
    .line 644
    const/16 v0, 0xf

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    #@6
    .line 643
    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 704
    const-string/jumbo v0, "sms"

    #@3
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@6
    .line 705
    const-string/jumbo v0, "smsto"

    #@9
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@c
    .line 706
    const-string/jumbo v0, "mms"

    #@f
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@12
    .line 707
    const-string/jumbo v0, "mmsto"

    #@15
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@18
    .line 702
    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 382
    const-string/jumbo v9, "phone"

    #@3
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v8

    #@7
    .line 381
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@9
    .line 383
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v9

    #@d
    if-nez v9, :cond_0

    #@f
    .line 385
    const/4 v9, 0x0

    #@10
    return-object v9

    #@11
    .line 388
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    #@14
    move-result-object v2

    #@15
    .line 394
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18
    move-result-object v9

    #@19
    .line 395
    const-string/jumbo v10, "sms_default_application"

    #@1c
    .line 394
    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 400
    .local v3, "defaultApplication":Ljava/lang/String;
    const/4 v1, 0x0

    #@21
    .line 401
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_1

    #@23
    .line 402
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@26
    move-result-object v1

    #@27
    .line 409
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    if-eqz p1, :cond_3

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v7

    #@2f
    .line 413
    .local v7, "r":Landroid/content/res/Resources;
    const v9, 0x1040046

    #@32
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 414
    .local v4, "defaultPackage":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@39
    move-result-object v1

    #@3a
    .line 416
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-nez v1, :cond_2

    #@3c
    .line 418
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_2

    #@42
    .line 419
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
    .line 424
    .restart local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    if-eqz v1, :cond_3

    #@4d
    .line 425
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@4f
    invoke-static {v9, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    #@52
    .line 430
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v4    # "defaultPackage":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v1, :cond_6

    #@54
    .line 431
    const-string/jumbo v9, "appops"

    #@57
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Landroid/app/AppOpsManager;

    #@5d
    .line 437
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
    .line 439
    :cond_4
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@69
    .line 440
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@6b
    .line 439
    const/16 v11, 0xf

    #@6d
    invoke-virtual {v0, v11, v9, v10}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@70
    move-result v5

    #@71
    .line 441
    .local v5, "mode":I
    if-eqz v5, :cond_5

    #@73
    .line 442
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
    .line 443
    if-eqz p1, :cond_7

    #@8a
    const-string/jumbo v9, " (fixing)"

    #@8d
    .line 442
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
    .line 444
    if-eqz p1, :cond_8

    #@9a
    .line 445
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@9c
    .line 446
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@9e
    .line 445
    const/16 v11, 0xf

    #@a0
    .line 446
    const/4 v12, 0x0

    #@a1
    .line 445
    invoke-virtual {v0, v11, v9, v10, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@a4
    .line 455
    .end local v5    # "mode":I
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    #@a6
    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a9
    move-result-object v6

    #@aa
    .line 461
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ComponentName;

    #@ac
    .line 462
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@ae
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@b0
    .line 461
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    invoke-static {v6, v9, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@b6
    .line 466
    const-string/jumbo v9, "com.android.phone"

    #@b9
    .line 465
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@bc
    .line 468
    const-string/jumbo v9, "com.android.bluetooth"

    #@bf
    .line 467
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c2
    .line 470
    const-string/jumbo v9, "com.android.mms.service"

    #@c5
    .line 469
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c8
    .line 472
    const-string/jumbo v9, "com.android.providers.telephony"

    #@cb
    .line 471
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@ce
    .line 477
    const/16 v9, 0x3e9

    #@d0
    invoke-static {v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    #@d3
    .line 483
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_6
    return-object v1

    #@d4
    .line 443
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v5    # "mode":I
    :cond_7
    const-string/jumbo v9, " (no permission to fix)"

    #@d7
    goto :goto_0

    #@d8
    .line 449
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
    .line 189
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v2

    #@4
    .line 190
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 192
    .local v0, "token":J
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v3

    #@c
    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 192
    return-object v3

    #@10
    .line 193
    :catchall_0
    move-exception v3

    #@11
    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 193
    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 22
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
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v6

    #@4
    .line 203
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    #@6
    const-string/jumbo v18, "android.provider.Telephony.SMS_DELIVER"

    #@9
    move-object/from16 v0, v18

    #@b
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 204
    .local v4, "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    #@10
    move/from16 v0, v18

    #@12
    move/from16 v1, p1

    #@14
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@17
    move-result-object v17

    #@18
    .line 207
    .local v17, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    #@1a
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 210
    .local v9, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v11

    #@21
    .local v11, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v18

    #@25
    if-eqz v18, :cond_1

    #@27
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v10

    #@2b
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@2d
    .line 211
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2f
    .line 212
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    #@31
    .line 215
    const-string/jumbo v18, "android.permission.BROADCAST_SMS"

    #@34
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@36
    move-object/from16 v19, v0

    #@38
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v18

    #@3c
    if-eqz v18, :cond_0

    #@3e
    .line 218
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@40
    .line 219
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@43
    move-result v18

    #@44
    if-nez v18, :cond_0

    #@46
    .line 220
    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@49
    move-result-object v18

    #@4a
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 221
    .local v3, "applicationName":Ljava/lang/String;
    new-instance v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@50
    .line 222
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    move-object/from16 v18, v0

    #@54
    move-object/from16 v0, v18

    #@56
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@58
    move/from16 v18, v0

    #@5a
    .line 221
    move-object/from16 v0, v16

    #@5c
    move/from16 v1, v18

    #@5e
    invoke-direct {v0, v3, v7, v1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@61
    .line 223
    .local v16, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@63
    move-object/from16 v18, v0

    #@65
    move-object/from16 v0, v18

    #@67
    move-object/from16 v1, v16

    #@69
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@6b
    .line 224
    move-object/from16 v0, v16

    #@6d
    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    goto :goto_0

    #@71
    .line 229
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "applicationName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    #@73
    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@76
    move-object/from16 v0, v18

    #@78
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7b
    .line 230
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "application/vnd.wap.mms-message"

    #@7e
    const/16 v19, 0x0

    #@80
    move-object/from16 v0, v19

    #@82
    move-object/from16 v1, v18

    #@84
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@87
    .line 231
    const/16 v18, 0x0

    #@89
    move/from16 v0, v18

    #@8b
    move/from16 v1, p1

    #@8d
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@90
    move-result-object v5

    #@91
    .line 233
    .local v5, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@94
    move-result-object v11

    #@95
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@98
    move-result v18

    #@99
    if-eqz v18, :cond_3

    #@9b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9e
    move-result-object v10

    #@9f
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@a1
    .line 234
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a3
    .line 235
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    #@a5
    .line 238
    const-string/jumbo v18, "android.permission.BROADCAST_WAP_PUSH"

    #@a8
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@aa
    move-object/from16 v19, v0

    #@ac
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v18

    #@b0
    if-eqz v18, :cond_2

    #@b2
    .line 241
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@b4
    .line 242
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    move-result-object v16

    #@b8
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@ba
    .line 243
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_2

    #@bc
    .line 244
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@be
    move-object/from16 v18, v0

    #@c0
    move-object/from16 v0, v18

    #@c2
    move-object/from16 v1, v16

    #@c4
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@c6
    goto :goto_1

    #@c7
    .line 249
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    #@c9
    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.intent.action.RESPOND_VIA_MESSAGE"

    #@cc
    .line 250
    const-string/jumbo v19, "smsto"

    #@cf
    const-string/jumbo v20, ""

    #@d2
    const/16 v21, 0x0

    #@d4
    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@d7
    move-result-object v19

    #@d8
    .line 249
    move-object/from16 v0, v18

    #@da
    move-object/from16 v1, v19

    #@dc
    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@df
    .line 251
    .restart local v4    # "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    #@e1
    move/from16 v0, v18

    #@e3
    move/from16 v1, p1

    #@e5
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@e8
    move-result-object v12

    #@e9
    .line 253
    .local v12, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ec
    move-result-object v11

    #@ed
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@f0
    move-result v18

    #@f1
    if-eqz v18, :cond_5

    #@f3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@f9
    .line 254
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@fb
    .line 255
    .local v14, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v14, :cond_4

    #@fd
    .line 258
    const-string/jumbo v18, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    #@100
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@102
    move-object/from16 v19, v0

    #@104
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v18

    #@108
    if-eqz v18, :cond_4

    #@10a
    .line 261
    iget-object v7, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@10c
    .line 262
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    move-result-object v16

    #@110
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@112
    .line 263
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_4

    #@114
    .line 264
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@116
    move-object/from16 v18, v0

    #@118
    move-object/from16 v0, v18

    #@11a
    move-object/from16 v1, v16

    #@11c
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@11e
    goto :goto_2

    #@11f
    .line 269
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    #@121
    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.intent.action.SENDTO"

    #@124
    .line 270
    const-string/jumbo v19, "smsto"

    #@127
    const-string/jumbo v20, ""

    #@12a
    const/16 v21, 0x0

    #@12c
    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@12f
    move-result-object v19

    #@130
    .line 269
    move-object/from16 v0, v18

    #@132
    move-object/from16 v1, v19

    #@134
    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@137
    .line 271
    .restart local v4    # "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    #@139
    move/from16 v0, v18

    #@13b
    move/from16 v1, p1

    #@13d
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@140
    move-result-object v13

    #@141
    .line 273
    .local v13, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@144
    move-result-object v11

    #@145
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@148
    move-result v18

    #@149
    if-eqz v18, :cond_7

    #@14b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14e
    move-result-object v10

    #@14f
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@151
    .line 274
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@153
    .line 275
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_6

    #@155
    .line 278
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@157
    .line 279
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15a
    move-result-object v16

    #@15b
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@15d
    .line 280
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_6

    #@15f
    .line 281
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@161
    move-object/from16 v18, v0

    #@163
    move-object/from16 v0, v18

    #@165
    move-object/from16 v1, v16

    #@167
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@169
    goto :goto_3

    #@16a
    .line 286
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    #@16c
    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@16f
    move-object/from16 v0, v18

    #@171
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@174
    .line 288
    .restart local v4    # "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    #@176
    .line 287
    move/from16 v0, v18

    #@178
    move/from16 v1, p1

    #@17a
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@17d
    move-result-object v15

    #@17e
    .line 293
    .local v15, "smsAppChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@181
    move-result-object v11

    #@182
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@185
    move-result v18

    #@186
    if-eqz v18, :cond_9

    #@188
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18b
    move-result-object v10

    #@18c
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@18e
    .line 294
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@190
    .line 295
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_8

    #@192
    .line 298
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@194
    .line 299
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    move-result-object v16

    #@198
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@19a
    .line 305
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_8

    #@19c
    .line 306
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19e
    move-object/from16 v18, v0

    #@1a0
    move-object/from16 v0, v18

    #@1a2
    move-object/from16 v1, v16

    #@1a4
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@1a6
    goto :goto_4

    #@1a7
    .line 311
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    new-instance v4, Landroid/content/Intent;

    #@1a9
    .end local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    #@1ac
    move-object/from16 v0, v18

    #@1ae
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b1
    .line 313
    .restart local v4    # "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    #@1b3
    .line 312
    move/from16 v0, v18

    #@1b5
    move/from16 v1, p1

    #@1b7
    invoke-virtual {v6, v4, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1ba
    move-result-object v8

    #@1bb
    .line 318
    .local v8, "providerChangedReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1be
    move-result-object v11

    #@1bf
    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1c2
    move-result v18

    #@1c3
    if-eqz v18, :cond_b

    #@1c5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c8
    move-result-object v10

    #@1c9
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@1cb
    .line 319
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1cd
    .line 320
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_a

    #@1cf
    .line 323
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d1
    .line 324
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d4
    move-result-object v16

    #@1d5
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@1d7
    .line 330
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_a

    #@1d9
    .line 331
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1db
    move-object/from16 v18, v0

    #@1dd
    move-object/from16 v0, v18

    #@1df
    move-object/from16 v1, v16

    #@1e1
    iput-object v0, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@1e3
    goto :goto_5

    #@1e4
    .line 336
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e7
    move-result-object v11

    #@1e8
    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1eb
    move-result v18

    #@1ec
    if-eqz v18, :cond_d

    #@1ee
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f1
    move-result-object v10

    #@1f2
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@1f4
    .line 337
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1f6
    .line 338
    .restart local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_c

    #@1f8
    .line 341
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1fa
    .line 342
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1fd
    move-result-object v16

    #@1fe
    check-cast v16, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@200
    .line 343
    .restart local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v16, :cond_c

    #@202
    .line 344
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    #@205
    move-result v18

    #@206
    if-nez v18, :cond_c

    #@208
    .line 345
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20b
    goto :goto_6

    #@20c
    .line 349
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_d
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@20f
    move-result-object v18

    #@210
    return-object v18
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
    .line 358
    if-nez p1, :cond_0

    #@3
    .line 359
    return-object v3

    #@4
    .line 362
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
    .line 363
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v2, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 364
    return-object v0

    #@1d
    .line 367
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
    .line 853
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 854
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 856
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 857
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 859
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 860
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 861
    new-instance v0, Landroid/content/ComponentName;

    #@15
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@17
    .line 862
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    #@19
    .line 861
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 866
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 864
    return-object v0

    #@20
    .line 865
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@21
    .line 866
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 865
    throw v5
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 778
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 779
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 781
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 782
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 784
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 785
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 786
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@15
    .line 785
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 790
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 788
    return-object v0

    #@1c
    .line 789
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 790
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 789
    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 802
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 803
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 805
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 806
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 808
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 809
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 810
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@15
    .line 809
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 814
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 812
    return-object v0

    #@1c
    .line 813
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 813
    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 828
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 829
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 831
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 832
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 834
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 835
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 836
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@15
    .line 835
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 840
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 838
    return-object v0

    #@1c
    .line 839
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 840
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 839
    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 755
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 756
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 758
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 759
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 761
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 762
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 763
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@15
    .line 762
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 767
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 765
    return-object v0

    #@1c
    .line 766
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 767
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 766
    throw v5
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 902
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    .line 903
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@8
    .line 904
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 906
    :cond_0
    return-object v2
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    #@3
    move-result v1

    #@4
    .line 156
    .local v1, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    .line 161
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v2

    #@c
    .line 162
    const/16 v3, 0x2710

    #@e
    .line 161
    if-ge v2, v3, :cond_0

    #@10
    .line 163
    return v1

    #@11
    .line 165
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
    .line 744
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    .line 745
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
    .line 697
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    #@5
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@7
    .line 698
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
    .line 696
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
    .line 890
    if-nez p1, :cond_0

    #@3
    .line 891
    return v2

    #@4
    .line 893
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 894
    .local v0, "defaultSmsPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2

    #@10
    .line 895
    :cond_1
    const-string/jumbo v1, "com.android.bluetooth"

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 894
    if-eqz v1, :cond_3

    #@19
    .line 896
    :cond_2
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 898
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
    .line 716
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
    .line 718
    .local v8, "intent":Landroid/content/Intent;
    const v0, 0x10040

    #@13
    .line 717
    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v10

    #@17
    .line 722
    .local v10, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@1a
    move-result v9

    #@1b
    .line 723
    .local v9, "n":I
    new-array v3, v9, [Landroid/content/ComponentName;

    #@1d
    .line 724
    .local v3, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    #@1e
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    #@20
    .line 725
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@26
    .line 726
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
    .line 724
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 730
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    #@3a
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@3d
    .line 731
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SENDTO"

    #@40
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 732
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    #@46
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@49
    .line 733
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4c
    .line 735
    const v2, 0x208000

    #@4f
    move-object v0, p0

    #@50
    move-object v4, p1

    #@51
    move v5, p2

    #@52
    .line 734
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@55
    .line 714
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 491
    const-string/jumbo v4, "phone"

    #@3
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@9
    .line 492
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 494
    return-void

    #@10
    .line 497
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@13
    move-result v1

    #@14
    .line 498
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 500
    .local v2, "token":J
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 490
    return-void

    #@1f
    .line 501
    :catchall_0
    move-exception v4

    #@20
    .line 502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 501
    throw v4
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 16
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v12

    #@4
    .line 510
    const-string/jumbo v13, "sms_default_application"

    #@7
    .line 509
    move/from16 v0, p2

    #@9
    invoke-static {v12, v13, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v10

    #@d
    .line 517
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
    .line 519
    return-void

    #@1a
    .line 523
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v11

    #@1e
    .line 524
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@21
    move-result-object v3

    #@22
    .line 525
    .local v3, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    if-eqz v10, :cond_5

    #@24
    .line 526
    invoke-static {v3, v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@27
    move-result-object v8

    #@28
    .line 527
    :goto_0
    move-object/from16 v0, p0

    #@2a
    invoke-static {v3, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@2d
    move-result-object v2

    #@2e
    .line 528
    .local v2, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v2, :cond_4

    #@30
    .line 530
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
    .line 531
    .local v1, "appOps":Landroid/app/AppOpsManager;
    if-eqz v10, :cond_1

    #@3d
    .line 534
    const/16 v12, 0x2000

    #@3f
    .line 533
    :try_start_0
    invoke-virtual {v11, v10, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@42
    move-result-object v6

    #@43
    .line 535
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@45
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    #@47
    const/16 v13, 0xf

    #@49
    .line 536
    const/4 v14, 0x1

    #@4a
    .line 535
    invoke-virtual {v1, v13, v12, v10, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 543
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v12

    #@51
    .line 544
    const-string/jumbo v13, "sms_default_application"

    #@54
    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@56
    .line 543
    move/from16 v0, p2

    #@58
    invoke-static {v12, v13, v14, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@5b
    .line 548
    new-instance v12, Landroid/content/ComponentName;

    #@5d
    .line 549
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@5f
    iget-object v14, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@61
    .line 548
    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    move/from16 v0, p2

    #@66
    invoke-static {v11, v12, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@69
    .line 552
    iget v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@6b
    .line 553
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@6d
    .line 552
    const/16 v14, 0xf

    #@6f
    .line 553
    const/4 v15, 0x0

    #@70
    .line 552
    invoke-virtual {v1, v14, v12, v13, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@73
    .line 557
    const-string/jumbo v12, "com.android.phone"

    #@76
    .line 556
    move-object/from16 v0, p1

    #@78
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@7b
    .line 559
    const-string/jumbo v12, "com.android.bluetooth"

    #@7e
    .line 558
    move-object/from16 v0, p1

    #@80
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@83
    .line 561
    const-string/jumbo v12, "com.android.mms.service"

    #@86
    .line 560
    move-object/from16 v0, p1

    #@88
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@8b
    .line 563
    const-string/jumbo v12, "com.android.providers.telephony"

    #@8e
    .line 562
    move-object/from16 v0, p1

    #@90
    invoke-static {v0, v11, v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@93
    .line 568
    const/16 v12, 0x3e9

    #@95
    invoke-static {v1, v12}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    #@98
    .line 573
    if-eqz v8, :cond_2

    #@9a
    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@9c
    if-eqz v12, :cond_2

    #@9e
    .line 576
    new-instance v9, Landroid/content/Intent;

    #@a0
    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@a3
    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a6
    .line 577
    .local v9, "oldAppIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    #@a8
    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@aa
    .line 578
    iget-object v13, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@ac
    .line 577
    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@af
    .line 579
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b2
    .line 580
    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    #@b5
    const/4 v13, 0x0

    #@b6
    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@b9
    .line 584
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@be
    .line 592
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v9    # "oldAppIntent":Landroid/content/Intent;
    :cond_2
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@c0
    if-eqz v12, :cond_3

    #@c2
    .line 594
    new-instance v7, Landroid/content/Intent;

    #@c4
    const-string/jumbo v12, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    #@c7
    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ca
    .line 595
    .local v7, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    #@cc
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@ce
    .line 596
    iget-object v13, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    #@d0
    .line 595
    invoke-direct {v4, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d3
    .line 597
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@d6
    .line 598
    const-string/jumbo v12, "android.provider.extra.IS_DEFAULT_SMS_APP"

    #@d9
    const/4 v13, 0x1

    #@da
    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@dd
    .line 602
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@e2
    .line 605
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v12, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@e4
    .line 604
    const/16 v13, 0x10a

    #@e6
    move-object/from16 v0, p1

    #@e8
    invoke-static {v0, v13, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@eb
    .line 507
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    :cond_4
    return-void

    #@ec
    .line 526
    .end local v2    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    const/4 v8, 0x0

    #@ed
    .local v8, "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    goto/16 :goto_0

    #@ef
    .line 537
    .end local v8    # "oldAppData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catch_0
    move-exception v5

    #@f0
    .line 538
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
    .line 876
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
    .line 877
    return v0

    #@c
    .line 879
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
