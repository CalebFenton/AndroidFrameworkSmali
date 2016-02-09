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
    .line 66
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
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
    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {p1, v4, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v3

    #@8
    .line 487
    .local v3, "result":I
    if-eqz v3, :cond_0

    #@a
    .line 488
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
    .line 489
    return-void

    #@25
    .line 492
    :cond_0
    const/4 v4, 0x0

    #@26
    :try_start_0
    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@29
    move-result-object v1

    #@2a
    .line 493
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
    .line 495
    .local v2, "mode":I
    if-eqz v2, :cond_1

    #@36
    .line 496
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
    .line 497
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@54
    const/16 v5, 0xf

    #@56
    .line 498
    const/4 v6, 0x0

    #@57
    .line 497
    invoke-virtual {p2, v5, v4, p3, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 482
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "mode":I
    :cond_1
    :goto_0
    return-void

    #@5b
    .line 500
    :catch_0
    move-exception v0

    #@5c
    .line 502
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

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 564
    const-string/jumbo v0, "sms"

    #@3
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@6
    .line 565
    const-string/jumbo v0, "smsto"

    #@9
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@c
    .line 566
    const-string/jumbo v0, "mms"

    #@f
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@12
    .line 567
    const-string/jumbo v0, "mmsto"

    #@15
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    #@18
    .line 562
    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 304
    const-string/jumbo v9, "phone"

    #@3
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v8

    #@7
    .line 303
    check-cast v8, Landroid/telephony/TelephonyManager;

    #@9
    .line 305
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v9

    #@d
    if-nez v9, :cond_0

    #@f
    .line 307
    const/4 v9, 0x0

    #@10
    return-object v9

    #@11
    .line 310
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    #@14
    move-result-object v2

    #@15
    .line 316
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18
    move-result-object v9

    #@19
    .line 317
    const-string/jumbo v10, "sms_default_application"

    #@1c
    .line 316
    invoke-static {v9, v10, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 322
    .local v3, "defaultApplication":Ljava/lang/String;
    const/4 v1, 0x0

    #@21
    .line 323
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_1

    #@23
    .line 324
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@26
    move-result-object v1

    #@27
    .line 331
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    if-eqz p1, :cond_3

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v7

    #@2f
    .line 335
    .local v7, "r":Landroid/content/res/Resources;
    const v9, 0x104002b

    #@32
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 336
    .local v4, "defaultPackage":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@39
    move-result-object v1

    #@3a
    .line 338
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-nez v1, :cond_2

    #@3c
    .line 340
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_2

    #@42
    .line 341
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
    .line 346
    .restart local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    if-eqz v1, :cond_3

    #@4d
    .line 347
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@4f
    invoke-static {v9, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    #@52
    .line 352
    .end local v1    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v4    # "defaultPackage":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v1, :cond_6

    #@54
    .line 353
    const-string/jumbo v9, "appops"

    #@57
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Landroid/app/AppOpsManager;

    #@5d
    .line 359
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
    .line 361
    :cond_4
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@69
    .line 362
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@6b
    .line 361
    const/16 v11, 0xf

    #@6d
    invoke-virtual {v0, v11, v9, v10}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@70
    move-result v5

    #@71
    .line 363
    .local v5, "mode":I
    if-eqz v5, :cond_5

    #@73
    .line 364
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
    .line 365
    if-eqz p1, :cond_7

    #@8a
    const-string/jumbo v9, " (fixing)"

    #@8d
    .line 364
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
    .line 366
    if-eqz p1, :cond_8

    #@9a
    .line 367
    iget v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@9c
    .line 368
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@9e
    .line 367
    const/16 v11, 0xf

    #@a0
    .line 368
    const/4 v12, 0x0

    #@a1
    .line 367
    invoke-virtual {v0, v11, v9, v10, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@a4
    .line 377
    .end local v5    # "mode":I
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    #@a6
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a9
    move-result-object v6

    #@aa
    .line 383
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ComponentName;

    #@ac
    .line 384
    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@ae
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@b0
    .line 383
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b3
    invoke-static {v6, v9, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@b6
    .line 388
    const-string/jumbo v9, "com.android.phone"

    #@b9
    .line 387
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@bc
    .line 390
    const-string/jumbo v9, "com.android.bluetooth"

    #@bf
    .line 389
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c2
    .line 392
    const-string/jumbo v9, "com.android.mms.service"

    #@c5
    .line 391
    invoke-static {p0, v6, v0, v9}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@c8
    .line 398
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_6
    return-object v1

    #@c9
    .line 365
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v5    # "mode":I
    :cond_7
    const-string/jumbo v9, " (no permission to fix)"

    #@cc
    goto :goto_0

    #@cd
    .line 371
    :cond_8
    const/4 v1, 0x0

    #@ce
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
    .line 161
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v2

    #@4
    .line 162
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v0

    #@8
    .line 164
    .local v0, "token":J
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v3

    #@c
    .line 166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 164
    return-object v3

    #@10
    .line 165
    :catchall_0
    move-exception v3

    #@11
    .line 166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 165
    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 19
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
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v5

    #@4
    .line 175
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    #@6
    const-string/jumbo v15, "android.provider.Telephony.SMS_DELIVER"

    #@9
    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 176
    .local v3, "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    #@d
    move/from16 v0, p1

    #@f
    invoke-virtual {v5, v3, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    #@12
    move-result-object v14

    #@13
    .line 179
    .local v14, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    #@15
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@18
    .line 182
    .local v7, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v9

    #@1c
    .local v9, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v15

    #@20
    if-eqz v15, :cond_1

    #@22
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v8

    #@26
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@28
    .line 183
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    .line 184
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    #@2c
    .line 187
    const-string/jumbo v15, "android.permission.BROADCAST_SMS"

    #@2f
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@31
    move-object/from16 v16, v0

    #@33
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v15

    #@37
    if-eqz v15, :cond_0

    #@39
    .line 190
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3b
    .line 191
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v15

    #@3f
    if-nez v15, :cond_0

    #@41
    .line 192
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@44
    move-result-object v15

    #@45
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 193
    .local v2, "applicationName":Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@4b
    .line 194
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4f
    .line 193
    invoke-direct {v13, v2, v6, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@52
    .line 195
    .local v13, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@54
    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@56
    .line 196
    invoke-virtual {v7, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_0

    #@5a
    .line 201
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "applicationName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    #@5c
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@5f
    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@62
    .line 202
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "application/vnd.wap.mms-message"

    #@65
    const/16 v16, 0x0

    #@67
    move-object/from16 v0, v16

    #@69
    invoke-virtual {v3, v0, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@6c
    .line 203
    const/4 v15, 0x0

    #@6d
    move/from16 v0, p1

    #@6f
    invoke-virtual {v5, v3, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    #@72
    move-result-object v4

    #@73
    .line 205
    .local v4, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v9

    #@77
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v15

    #@7b
    if-eqz v15, :cond_3

    #@7d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v8

    #@81
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@83
    .line 206
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@85
    .line 207
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    #@87
    .line 210
    const-string/jumbo v15, "android.permission.BROADCAST_WAP_PUSH"

    #@8a
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@8c
    move-object/from16 v16, v0

    #@8e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v15

    #@92
    if-eqz v15, :cond_2

    #@94
    .line 213
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@96
    .line 214
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    move-result-object v13

    #@9a
    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@9c
    .line 215
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_2

    #@9e
    .line 216
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a0
    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@a2
    goto :goto_1

    #@a3
    .line 221
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    #@a5
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "android.intent.action.RESPOND_VIA_MESSAGE"

    #@a8
    .line 222
    const-string/jumbo v16, "smsto"

    #@ab
    const-string/jumbo v17, ""

    #@ae
    const/16 v18, 0x0

    #@b0
    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@b3
    move-result-object v16

    #@b4
    .line 221
    move-object/from16 v0, v16

    #@b6
    invoke-direct {v3, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@b9
    .line 223
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    #@ba
    move/from16 v0, p1

    #@bc
    invoke-virtual {v5, v3, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@bf
    move-result-object v10

    #@c0
    .line 225
    .local v10, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c3
    move-result-object v9

    #@c4
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@c7
    move-result v15

    #@c8
    if-eqz v15, :cond_5

    #@ca
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cd
    move-result-object v8

    #@ce
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@d0
    .line 226
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d2
    .line 227
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v12, :cond_4

    #@d4
    .line 230
    const-string/jumbo v15, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    #@d7
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@d9
    move-object/from16 v16, v0

    #@db
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v15

    #@df
    if-eqz v15, :cond_4

    #@e1
    .line 233
    iget-object v6, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@e3
    .line 234
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    move-result-object v13

    #@e7
    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@e9
    .line 235
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_4

    #@eb
    .line 236
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@ed
    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@ef
    goto :goto_2

    #@f0
    .line 241
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    #@f2
    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "android.intent.action.SENDTO"

    #@f5
    .line 242
    const-string/jumbo v16, "smsto"

    #@f8
    const-string/jumbo v17, ""

    #@fb
    const/16 v18, 0x0

    #@fd
    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@100
    move-result-object v16

    #@101
    .line 241
    move-object/from16 v0, v16

    #@103
    invoke-direct {v3, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@106
    .line 243
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    #@107
    move/from16 v0, p1

    #@109
    invoke-virtual {v5, v3, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@10c
    move-result-object v11

    #@10d
    .line 245
    .local v11, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@110
    move-result-object v9

    #@111
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@114
    move-result v15

    #@115
    if-eqz v15, :cond_7

    #@117
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11a
    move-result-object v8

    #@11b
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@11d
    .line 246
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@11f
    .line 247
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_6

    #@121
    .line 250
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@123
    .line 251
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@126
    move-result-object v13

    #@127
    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@129
    .line 252
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_6

    #@12b
    .line 253
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@12d
    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@12f
    goto :goto_3

    #@130
    .line 258
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@133
    move-result-object v9

    #@134
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@137
    move-result v15

    #@138
    if-eqz v15, :cond_9

    #@13a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13d
    move-result-object v8

    #@13e
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@140
    .line 259
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@142
    .line 260
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_8

    #@144
    .line 263
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@146
    .line 264
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    move-result-object v13

    #@14a
    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@14c
    .line 265
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_8

    #@14e
    .line 266
    invoke-virtual {v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    #@151
    move-result v15

    #@152
    if-nez v15, :cond_8

    #@154
    .line 267
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    goto :goto_4

    #@158
    .line 271
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@15b
    move-result-object v15

    #@15c
    return-object v15
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
    .line 280
    if-nez p1, :cond_0

    #@3
    .line 281
    return-object v3

    #@4
    .line 284
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
    .line 285
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v2, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 286
    return-object v0

    #@1d
    .line 289
    .end local v0    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    return-object v3
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 638
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 639
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 641
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 642
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 644
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 645
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 646
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    #@15
    .line 645
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 650
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 648
    return-object v0

    #@1c
    .line 649
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 649
    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 662
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 663
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 665
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 666
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 668
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 669
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 670
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    #@15
    .line 669
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 674
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 672
    return-object v0

    #@1c
    .line 673
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 674
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 673
    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 688
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 689
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 691
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 692
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 694
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 695
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 696
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@15
    .line 695
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 700
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 698
    return-object v0

    #@1c
    .line 699
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 699
    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    #@0
    .prologue
    .line 615
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@3
    move-result v4

    #@4
    .line 616
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 618
    .local v2, "token":J
    const/4 v0, 0x0

    #@9
    .line 619
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@c
    move-result-object v1

    #@d
    .line 621
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    #@f
    .line 622
    new-instance v0, Landroid/content/ComponentName;

    #@11
    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@13
    .line 623
    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    #@15
    .line 622
    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 627
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 625
    return-object v0

    #@1c
    .line 626
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    #@1d
    .line 627
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 626
    throw v5
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 736
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    .line 737
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@8
    .line 738
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 740
    :cond_0
    return-object v2
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    #@3
    move-result v1

    #@4
    .line 128
    .local v1, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    .line 133
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v2

    #@c
    .line 134
    const/16 v3, 0x2710

    #@e
    .line 133
    if-ge v2, v3, :cond_0

    #@10
    .line 135
    return v1

    #@11
    .line 137
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
    .line 604
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    .line 605
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
    .line 557
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    #@5
    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    #@7
    .line 558
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
    .line 556
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
    .line 724
    if-nez p1, :cond_0

    #@3
    .line 725
    return v2

    #@4
    .line 727
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 728
    .local v0, "defaultSmsPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2

    #@10
    .line 729
    :cond_1
    const-string/jumbo v1, "com.android.bluetooth"

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 728
    if-eqz v1, :cond_3

    #@19
    .line 730
    :cond_2
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 732
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
    .line 576
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
    .line 578
    .local v8, "intent":Landroid/content/Intent;
    const v0, 0x10040

    #@13
    .line 577
    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v10

    #@17
    .line 582
    .local v10, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@1a
    move-result v9

    #@1b
    .line 583
    .local v9, "n":I
    new-array v3, v9, [Landroid/content/ComponentName;

    #@1d
    .line 584
    .local v3, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    #@1e
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    #@20
    .line 585
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@26
    .line 586
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
    .line 584
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 590
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    #@3a
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@3d
    .line 591
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SENDTO"

    #@40
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@43
    .line 592
    const-string/jumbo v0, "android.intent.category.DEFAULT"

    #@46
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@49
    .line 593
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4c
    .line 595
    const v2, 0x208000

    #@4f
    move-object v0, p0

    #@50
    move-object v4, p1

    #@51
    move v5, p2

    #@52
    .line 594
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@55
    .line 574
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 406
    const-string/jumbo v4, "phone"

    #@3
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@9
    .line 407
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 409
    return-void

    #@10
    .line 412
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    #@13
    move-result v1

    #@14
    .line 413
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 415
    .local v2, "token":J
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 417
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 405
    return-void

    #@1f
    .line 416
    :catchall_0
    move-exception v4

    #@20
    .line 417
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 416
    throw v4
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/16 v10, 0xf

    #@2
    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v7

    #@6
    .line 425
    const-string/jumbo v8, "sms_default_application"

    #@9
    .line 424
    invoke-static {v7, v8, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 427
    .local v5, "oldPackageName":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_0

    #@17
    .line 429
    return-void

    #@18
    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v6

    #@1c
    .line 434
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    #@1f
    move-result-object v2

    #@20
    .line 435
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    #@23
    move-result-object v1

    #@24
    .line 436
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_2

    #@26
    .line 438
    const-string/jumbo v7, "appops"

    #@29
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/app/AppOpsManager;

    #@2f
    .line 439
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz v5, :cond_1

    #@31
    .line 442
    const/16 v7, 0x2000

    #@33
    .line 441
    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@36
    move-result-object v4

    #@37
    .line 443
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@39
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3b
    const/16 v8, 0xf

    #@3d
    .line 444
    const/4 v9, 0x1

    #@3e
    .line 443
    invoke-virtual {v0, v8, v7, v5, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 451
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v7

    #@45
    .line 452
    const-string/jumbo v8, "sms_default_application"

    #@48
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@4a
    .line 451
    invoke-static {v7, v8, v9, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@4d
    .line 456
    new-instance v7, Landroid/content/ComponentName;

    #@4f
    .line 457
    iget-object v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@51
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    #@53
    .line 456
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    invoke-static {v6, v7, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    #@59
    .line 460
    iget v7, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    #@5b
    .line 461
    iget-object v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    #@5d
    const/4 v9, 0x0

    #@5e
    .line 460
    invoke-virtual {v0, v10, v7, v8, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@61
    .line 465
    const-string/jumbo v7, "com.android.phone"

    #@64
    .line 464
    invoke-static {p1, v6, v0, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@67
    .line 467
    const-string/jumbo v7, "com.android.bluetooth"

    #@6a
    .line 466
    invoke-static {p1, v6, v0, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@6d
    .line 469
    const-string/jumbo v7, "com.android.mms.service"

    #@70
    .line 468
    invoke-static {p1, v6, v0, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    #@73
    .line 422
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :cond_2
    return-void

    #@74
    .line 445
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v3

    #@75
    .line 446
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "SmsApplication"

    #@78
    new-instance v8, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v9, "Old SMS package not found: "

    #@80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    goto :goto_0
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 710
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
    .line 711
    return v0

    #@c
    .line 713
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
