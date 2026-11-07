.class public Landroid/net/connectivity/org/chromium/base/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/BuildInfo$Holder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAX_FINGERPRINT_LENGTH:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "BuildInfo"

.field private static blacklist sBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static blacklist sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

.field private static blacklist sInitialized:Z


# instance fields
.field public final blacklist abiString:Ljava/lang/String;

.field public final blacklist androidBuildFingerprint:Ljava/lang/String;

.field public final blacklist customThemes:Ljava/lang/String;

.field public final blacklist hostPackageLabel:Ljava/lang/String;

.field public final blacklist hostPackageName:Ljava/lang/String;

.field public final blacklist hostVersionCode:J

.field public final blacklist installerPackageName:Ljava/lang/String;

.field public final blacklist isAutomotive:Z

.field public final blacklist isDesktop:Z

.field public final blacklist isFoldable:Z

.field public final blacklist isTV:Z

.field private final blacklist mCertLock:Ljava/lang/Object;

.field private blacklist mGmsVersionCode:Ljava/lang/String;

.field private blacklist mHostSigningCertSha256:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist resourcesVersion:Ljava/lang/String;

.field public final blacklist versionCode:J

.field public final blacklist versionName:Ljava/lang/String;

.field public final blacklist vulkanDeqpLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 38
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 23

    .line 245
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-wide v2, Landroid/net/connectivity/org/chromium/build/BuildConfig;->VERSION_CODE:J

    iput-wide v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionCode:J

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mCertLock:Ljava/lang/Object;

    .line 246
    const/4 v2, 0x1

    sput-boolean v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sInitialized:Z

    .line 247
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 248
    .local v3, "appContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "appContextPackageName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 251
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 252
    .local v0, "providedHostPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 253
    .local v6, "providedHostPackageLabel":Ljava/lang/String;
    const/4 v7, 0x0

    .line 254
    .local v7, "providedPackageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 255
    .local v8, "providedPackageVersionName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 260
    .local v9, "providedHostVersionCode":Ljava/lang/Long;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->isInitialized()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 261
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v10

    .line 262
    .local v10, "commandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    const-string v11, "host-package-name"

    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v11, "host-package-label"

    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    const-string v11, "package-name"

    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    nop

    .line 266
    const-string v11, "package-version-name"

    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    const-string v11, "host-version-code"

    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 269
    nop

    .line 270
    invoke-virtual {v10, v11}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_6d

    .line 268
    :cond_62
    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_6d

    .line 260
    .end local v10    # "commandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    :cond_68
    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .line 274
    .end local v0    # "providedHostPackageName":Ljava/lang/String;
    .local v6, "providedHostPackageName":Ljava/lang/String;
    .local v7, "providedHostPackageLabel":Ljava/lang/String;
    .local v8, "providedPackageName":Ljava/lang/String;
    .local v9, "providedPackageVersionName":Ljava/lang/String;
    .local v10, "providedHostVersionCode":Ljava/lang/Long;
    :goto_6d
    const/4 v11, 0x0

    if-eqz v6, :cond_7a

    if-eqz v7, :cond_7a

    if-eqz v10, :cond_7a

    if-eqz v8, :cond_7a

    if-eqz v9, :cond_7a

    move v0, v2

    goto :goto_7b

    :cond_7a
    move v0, v11

    :goto_7b
    move v12, v0

    .line 284
    .local v12, "hostInformationProvided":Z
    move-object v0, v4

    .line 286
    .local v0, "appInstalledPackageName":Ljava/lang/String;
    if-eqz v12, :cond_96

    .line 287
    iput-object v6, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageName:Ljava/lang/String;

    .line 288
    iput-object v7, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageLabel:Ljava/lang/String;

    .line 289
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostVersionCode:J

    .line 290
    iput-object v9, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionName:Ljava/lang/String;

    .line 291
    iput-object v8, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    .line 293
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    sput-object v13, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v2, v0

    goto/16 :goto_10b

    .line 298
    :cond_96
    move-object v13, v0

    .line 306
    .local v13, "sdkQualifiedName":Ljava/lang/String;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->isSdkSandboxProcess()Z

    move-result v14

    if-eqz v14, :cond_c3

    .line 307
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    add-int/lit16 v14, v14, -0x2710

    .line 308
    .local v14, "hostId":I
    invoke-virtual {v5, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, "packageNames":[Ljava/lang/String;
    array-length v2, v15

    if-lez v2, :cond_c3

    .line 314
    aget-object v0, v15, v11

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 319
    .end local v14    # "hostId":I
    .end local v15    # "packageNames":[Ljava/lang/String;
    :cond_c3
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 320
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    iput-object v13, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageName:Ljava/lang/String;

    .line 321
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageLabel:Ljava/lang/String;

    .line 322
    invoke-static {v11}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostVersionCode:J

    .line 324
    sget-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_fa

    .line 325
    sget-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    .line 326
    sget-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionName:Ljava/lang/String;

    .line 327
    sget-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sput-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 328
    const/4 v2, 0x0

    sput-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_10a

    .line 330
    :cond_fa
    iput-object v4, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    .line 331
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionName:Ljava/lang/String;

    .line 332
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    sput-object v2, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 336
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v13    # "sdkQualifiedName":Ljava/lang/String;
    :goto_10a
    move-object v2, v0

    .end local v0    # "appInstalledPackageName":Ljava/lang/String;
    .local v2, "appInstalledPackageName":Ljava/lang/String;
    :goto_10b
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->installerPackageName:Ljava/lang/String;

    .line 338
    const-string v0, "com.google.android.gms"

    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 339
    .local v13, "gmsPackageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 340
    if-eqz v13, :cond_128

    .line 341
    invoke-static {v13}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_12a

    .line 342
    :cond_128
    const-string v0, "gms versionCode not available."

    :goto_12a
    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mGmsVersionCode:Ljava/lang/String;

    .line 348
    const-string v0, "projekt.substratum"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->customThemes:Ljava/lang/String;

    .line 350
    const-string v11, "Not Enabled"

    .line 352
    .local v11, "currentResourcesVersion":Ljava/lang/String;
    sget v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->R_STRING_PRODUCT_VERSION:I

    if-eqz v0, :cond_14d

    .line 359
    :try_start_13e
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v14, Landroid/net/connectivity/org/chromium/build/BuildConfig;->R_STRING_PRODUCT_VERSION:I

    .line 360
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_148} :catch_14a

    move-object v11, v0

    .line 363
    goto :goto_14d

    .line 361
    :catch_14a
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Not found"

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14d
    :goto_14d
    iput-object v11, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->resourcesVersion:Ljava/lang/String;

    .line 367
    const-string v0, ", "

    sget-object v14, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->abiString:Ljava/lang/String;

    .line 370
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 372
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x80

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 371
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->androidBuildFingerprint:Ljava/lang/String;

    .line 375
    const-string v0, "uimode"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/UiModeManager;

    .line 376
    .local v14, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v14, :cond_182

    .line 378
    invoke-virtual {v14}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v15, 0x4

    if-ne v0, v15, :cond_182

    const/4 v0, 0x1

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    :goto_183
    iput-boolean v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isTV:Z

    .line 383
    :try_start_185
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_18b
    .catch Ljava/lang/SecurityException; {:try_start_185 .. :try_end_18b} :catch_18e

    .line 391
    .local v0, "isAutomotive":Z
    move-object/from16 v18, v2

    goto :goto_19a

    .line 384
    .end local v0    # "isAutomotive":Z
    :catch_18e
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v15, "BuildInfo"

    move-object/from16 v18, v2

    .end local v2    # "appInstalledPackageName":Ljava/lang/String;
    .local v18, "appInstalledPackageName":Ljava/lang/String;
    const-string v2, "Unable to query for Automotive system feature"

    invoke-static {v15, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    const/4 v2, 0x0

    move v0, v2

    .line 392
    .local v0, "isAutomotive":Z
    :goto_19a
    iput-boolean v0, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isAutomotive:Z

    .line 395
    nop

    .line 397
    const-string v2, "android.hardware.sensor.hinge_angle"

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    const/4 v2, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v2, 0x0

    :goto_1a8
    iput-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isFoldable:Z

    .line 399
    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDesktop:Z

    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, "vulkanLevel":I
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v16, v0

    .end local v0    # "isAutomotive":Z
    .local v16, "isAutomotive":Z
    const/16 v0, 0x21

    if-lt v15, v0, :cond_1ef

    .line 403
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 404
    .local v0, "features":[Landroid/content/pm/FeatureInfo;
    if-eqz v0, :cond_1e8

    .line 405
    array-length v15, v0

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "features":[Landroid/content/pm/FeatureInfo;
    .local v19, "features":[Landroid/content/pm/FeatureInfo;
    :goto_1c5
    if-ge v0, v15, :cond_1e3

    move/from16 v17, v0

    aget-object v0, v19, v17

    .line 406
    .local v0, "feature":Landroid/content/pm/FeatureInfo;
    move/from16 v20, v2

    .end local v2    # "vulkanLevel":I
    .local v20, "vulkanLevel":I
    const-string v2, "android.software.vulkan.deqp.level"

    move-object/from16 v21, v3

    .end local v3    # "appContext":Landroid/content/Context;
    .local v21, "appContext":Landroid/content/Context;
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 407
    iget v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 408
    .end local v20    # "vulkanLevel":I
    .restart local v2    # "vulkanLevel":I
    goto :goto_1f5

    .line 405
    .end local v0    # "feature":Landroid/content/pm/FeatureInfo;
    .end local v2    # "vulkanLevel":I
    .restart local v20    # "vulkanLevel":I
    :cond_1dc
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_1c5

    .end local v20    # "vulkanLevel":I
    .end local v21    # "appContext":Landroid/content/Context;
    .restart local v2    # "vulkanLevel":I
    .restart local v3    # "appContext":Landroid/content/Context;
    :cond_1e3
    move/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "vulkanLevel":I
    .end local v3    # "appContext":Landroid/content/Context;
    .restart local v20    # "vulkanLevel":I
    .restart local v21    # "appContext":Landroid/content/Context;
    goto :goto_1f3

    .line 404
    .end local v19    # "features":[Landroid/content/pm/FeatureInfo;
    .end local v20    # "vulkanLevel":I
    .end local v21    # "appContext":Landroid/content/Context;
    .local v0, "features":[Landroid/content/pm/FeatureInfo;
    .restart local v2    # "vulkanLevel":I
    .restart local v3    # "appContext":Landroid/content/Context;
    :cond_1e8
    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    .end local v0    # "features":[Landroid/content/pm/FeatureInfo;
    .end local v2    # "vulkanLevel":I
    .end local v3    # "appContext":Landroid/content/Context;
    .restart local v19    # "features":[Landroid/content/pm/FeatureInfo;
    .restart local v20    # "vulkanLevel":I
    .restart local v21    # "appContext":Landroid/content/Context;
    goto :goto_1f3

    .line 402
    .end local v19    # "features":[Landroid/content/pm/FeatureInfo;
    .end local v20    # "vulkanLevel":I
    .end local v21    # "appContext":Landroid/content/Context;
    .restart local v2    # "vulkanLevel":I
    .restart local v3    # "appContext":Landroid/content/Context;
    :cond_1ef
    move/from16 v20, v2

    move-object/from16 v21, v3

    .line 413
    .end local v2    # "vulkanLevel":I
    .end local v3    # "appContext":Landroid/content/Context;
    .restart local v20    # "vulkanLevel":I
    .restart local v21    # "appContext":Landroid/content/Context;
    :goto_1f3
    move/from16 v2, v20

    .end local v20    # "vulkanLevel":I
    .restart local v2    # "vulkanLevel":I
    :goto_1f5
    iput v2, v1, Landroid/net/connectivity/org/chromium/base/BuildInfo;->vulkanDeqpLevel:I

    .line 414
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/BuildInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;-><init>()V

    return-void
.end method

.method private static blacklist getAll()[Ljava/lang/String;
    .registers 1

    .line 130
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getInstance()Landroid/net/connectivity/org/chromium/base/BuildInfo;

    move-result-object v0

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getAllProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAllProperties()[Ljava/lang/String;
    .registers 39

    .line 146
    move-object/from16 v0, p0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageName:Ljava/lang/String;

    iget-wide v10, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostVersionCode:J

    .line 156
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->hostPackageLabel:Ljava/lang/String;

    iget-object v12, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->packageName:Ljava/lang/String;

    iget-wide v13, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionCode:J

    .line 159
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->versionName:Ljava/lang/String;

    iget-object v15, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->androidBuildFingerprint:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mGmsVersionCode:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->installerPackageName:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->abiString:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->customThemes:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->resourcesVersion:Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 169
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDebugAndroid()Z

    move-result v1

    const-string v23, "1"

    const-string v24, "0"

    if-eqz v1, :cond_69

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v23

    goto :goto_77

    :cond_69
    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    .line 170
    :goto_77
    move-object/from16 v25, v1

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isTV:Z

    if-eqz v1, :cond_80

    move-object/from16 v1, v23

    goto :goto_84

    :cond_80
    move-object/from16 v1, v23

    move-object/from16 v23, v24

    :goto_84
    move-object/from16 v26, v24

    sget-object v24, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v27, v1

    move-object/from16 v1, v25

    sget-object v25, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 173
    move-object/from16 v28, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v29, v2

    const/16 v2, 0x21

    if-lt v1, v2, :cond_9d

    move-object/from16 v1, v26

    move-object/from16 v26, v27

    goto :goto_9f

    :cond_9d
    move-object/from16 v1, v26

    .line 174
    :goto_9f
    iget-boolean v2, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isAutomotive:Z

    if-eqz v2, :cond_a6

    move-object/from16 v2, v27

    goto :goto_aa

    :cond_a6
    move-object/from16 v2, v27

    move-object/from16 v27, v1

    .line 175
    :goto_aa
    move-object/from16 v30, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v31, v2

    const/16 v2, 0x22

    if-lt v1, v2, :cond_b9

    move-object/from16 v1, v28

    move-object/from16 v28, v31

    goto :goto_bd

    :cond_b9
    move-object/from16 v1, v28

    move-object/from16 v28, v30

    .line 176
    :goto_bd
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->targetsAtLeastU()Z

    move-result v2

    if-eqz v2, :cond_c8

    move-object/from16 v2, v29

    move-object/from16 v29, v31

    goto :goto_cc

    :cond_c8
    move-object/from16 v2, v29

    move-object/from16 v29, v30

    :goto_cc
    move-object/from16 v32, v30

    sget-object v30, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    move-object/from16 v33, v1

    iget v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->vulkanDeqpLevel:I

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    move-object/from16 v34, v1

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isFoldable:Z

    if-eqz v1, :cond_e3

    move-object/from16 v1, v32

    move-object/from16 v32, v31

    goto :goto_e5

    :cond_e3
    move-object/from16 v1, v32

    .line 180
    :goto_e5
    move-object/from16 v35, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v36, v2

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_f2

    sget-object v1, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    goto :goto_f4

    :cond_f2
    const-string v1, ""

    .line 181
    :goto_f4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDebugApp()Z

    move-result v2

    if-eqz v2, :cond_101

    move-object/from16 v2, v31

    move-object/from16 v31, v34

    move-object/from16 v34, v2

    goto :goto_107

    :cond_101
    move-object/from16 v2, v31

    move-object/from16 v31, v34

    move-object/from16 v34, v35

    .line 182
    :goto_107
    move-object/from16 v37, v1

    iget-boolean v1, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDesktop:Z

    if-eqz v1, :cond_10f

    move-object/from16 v35, v2

    :cond_10f
    move-object/from16 v1, v33

    move-object/from16 v2, v36

    move-object/from16 v33, v37

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v1

    .line 146
    return-object v1
.end method

.method public static blacklist getArch()Ljava/lang/String;
    .registers 3

    .line 207
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    .line 208
    .local v0, "is64Bit":Z
    sget v1, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->sCpuFamily:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 209
    if-eqz v0, :cond_e

    const-string v1, "arm64"

    goto :goto_10

    :cond_e
    const-string v1, "arm"

    :goto_10
    return-object v1

    .line 210
    :cond_11
    sget v1, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->sCpuFamily:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 211
    if-eqz v0, :cond_1b

    const-string v1, "x86_64"

    goto :goto_1d

    :cond_1b
    const-string v1, "x86"

    :goto_1d
    return-object v1

    .line 213
    :cond_1e
    const-string v1, ""

    return-object v1
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/BuildInfo;
    .registers 1

    .line 234
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_FOR_TEST:Z

    if-eqz v0, :cond_a

    .line 235
    new-instance v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;-><init>()V

    return-object v0

    .line 237
    :cond_a
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo$Holder;->-$$Nest$sfgetINSTANCE()Landroid/net/connectivity/org/chromium/base/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPackageInfoFlags()I
    .registers 2

    .line 510
    nop

    .line 511
    const/high16 v0, 0x8000000

    return v0
.end method

.method private blacklist getPackageSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 517
    nop

    .line 518
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v0, :cond_7

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 521
    :cond_7
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isDebugAndroid()Z
    .registers 2

    .line 421
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static blacklist isDebugAndroidOrApp()Z
    .registers 1

    .line 438
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDebugAndroid()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isDebugApp()Z
    .registers 2

    .line 429
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 430
    .local v0, "appFlags":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static blacklist lazyGetHostSigningCertSha256()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getInstance()Landroid/net/connectivity/org/chromium/base/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getHostSigningCertSha256()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 187
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static blacklist packageVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 195
    nop

    .line 196
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist setBrowserPackageInfo(Landroid/content/pm/PackageInfo;)V
    .registers 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 220
    nop

    .line 221
    sput-object p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserPackageInfo:Landroid/content/pm/PackageInfo;

    .line 222
    return-void
.end method

.method private static blacklist setGmsVersionCodeForTest(Ljava/lang/String;)V
    .registers 2
    .param p0, "gmsVersionCode"    # Ljava/lang/String;

    .line 140
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getInstance()Landroid/net/connectivity/org/chromium/base/BuildInfo;

    move-result-object v0

    iput-object p0, v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mGmsVersionCode:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static blacklist targetsAtLeastT()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 452
    .local v0, "target":I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist targetsAtLeastU()Z
    .registers 2

    .line 461
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 473
    .local v0, "target":I
    const/16 v1, 0x22

    if-lt v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method


# virtual methods
.method public blacklist getBrowserApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 228
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->sBrowserApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public blacklist getGmsVersionCode()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mGmsVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHostSigningCertSha256()Ljava/lang/String;
    .registers 8

    .line 479
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mCertLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    if-nez v1, :cond_42

    .line 481
    const-string v1, ""

    .line 485
    .local v1, "certificate":Ljava/lang/String;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getPackageInfoFlags()I

    move-result v3

    .line 484
    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 488
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v2}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->getPackageSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_46

    .line 489
    .local v3, "signatures":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_40

    .line 491
    :try_start_1f
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 493
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    .line 495
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 494
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 496
    .local v5, "digest":[B
    invoke-static {v5}, Landroid/net/connectivity/org/chromium/base/PackageUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_36} :catch_38
    .catchall {:try_start_1f .. :try_end_36} :catchall_46

    move-object v1, v6

    .line 499
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "digest":[B
    goto :goto_40

    .line 497
    :catch_38
    move-exception v4

    .line 498
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_39
    const-string v5, "BuildInfo"

    const-string v6, "Unable to hash host app signature"

    invoke-static {v5, v6, v4}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_40
    :goto_40
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    .line 505
    .end local v1    # "certificate":Ljava/lang/String;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_42
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/BuildInfo;->mHostSigningCertSha256:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 506
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    throw v1
.end method
