.class public final Landroid/telephony/LocationAccessPolicy;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;,
        Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field public static final blacklist MAX_SDK_FOR_ANY_ENFORCEMENT:I = 0x2710

.field private static final blacklist TAG:Ljava/lang/String; = "LocationAccessPolicy"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 2
    .param p0, "appOpsMode"    # I

    .line 235
    packed-switch p0, :pswitch_data_c

    .line 241
    :pswitch_3
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 239
    :pswitch_6
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 237
    :pswitch_9
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .param p2, "permissionToCheck"    # Ljava/lang/String;

    .line 259
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 260
    const-string v1, "fine"

    goto :goto_d

    :cond_b
    const-string v1, "coarse"

    .line 263
    .local v1, "locationTypeForLog":Ljava/lang/String;
    :goto_d
    iget v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v2

    .line 266
    .local v2, "hasManifestPermission":Z
    if-eqz v2, :cond_5d

    .line 268
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 269
    invoke-static {p2}, Landroid/telephony/LocationAccessPolicy;->getAppOpsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, "appOpMode":I
    if-nez v0, :cond_34

    .line 273
    sget-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v3

    .line 278
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is aware of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the app-ops permission is specifically denied."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationAccessPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v0}, Landroid/telephony/LocationAccessPolicy;->appOpsModeToPermissionResult(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v3

    return-object v3

    .line 284
    .end local v0    # "appOpMode":I
    :cond_5d
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 285
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    goto :goto_68

    :cond_66
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    .line 287
    .local v0, "minSdkVersion":I
    :goto_68
    iget v3, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 290
    .local v3, "callingUserHandle":Landroid/os/UserHandle;
    const/16 v4, 0x2710

    const/4 v5, 0x0

    const-string v6, " "

    const-string v7, "Allowing "

    if-le v0, v4, :cond_ac

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " because we\'re not enforcing API "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " yet. Please fix this app because it will break in the future. Called from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-static {p0, p1, v4}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    .line 296
    return-object v5

    .line 297
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_ac
    iget-object v4, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v3, v4, v0}, Landroid/telephony/LocationAccessPolicy;->isAppAtLeastSdkVersion(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " because it doesn\'t target API "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " yet. Please fix this app. Called from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .restart local v4    # "errorMsg":Ljava/lang/String;
    invoke-static {p0, p1, v4}, Landroid/telephony/LocationAccessPolicy;->logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V

    .line 303
    return-object v5

    .line 307
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_e9
    sget-object v4, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v4
.end method

.method private static blacklist checkInteractAcrossUsersFull(Landroid/content/Context;II)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 404
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/LocationAccessPolicy;->checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 318
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result v0

    if-nez v0, :cond_4b

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    .line 319
    const/16 v1, 0x431

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_4b

    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    .line 320
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_4b

    .line 327
    :cond_1c
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    iget v1, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    iget-object v2, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Landroid/telephony/LocationAccessPolicy;->checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 329
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 333
    :cond_2b
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_3b

    .line 334
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 336
    .local v0, "resultForFine":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    if-eqz v0, :cond_3b

    .line 337
    return-object v0

    .line 341
    .end local v0    # "resultForFine":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_3b
    iget v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    if-ge v0, v1, :cond_48

    .line 342
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, p1, v0}, Landroid/telephony/LocationAccessPolicy;->checkAppLocationPermissionHelper(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 344
    .local v0, "resultForCoarse":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    if-eqz v0, :cond_48

    .line 345
    return-object v0

    .line 351
    .end local v0    # "resultForCoarse":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_48
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0

    .line 321
    :cond_4b
    :goto_4b
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method private static blacklist checkManifestPermission(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "permissionToCheck"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist checkSystemLocationAccess(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 362
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 363
    invoke-static {p0, p3}, Landroid/telephony/LocationAccessPolicy;->isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 365
    return v1

    .line 369
    :cond_16
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->isCurrentProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0, p2, p1}, Landroid/telephony/LocationAccessPolicy;->checkInteractAcrossUsersFull(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private static blacklist getAppOpsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "manifestPermission"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_12
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_32

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_22
    const-string v0, "android:coarse_location"

    return-object v0

    .line 248
    :pswitch_25
    const-string v0, "android:fine_location"

    return-object v0

    :sswitch_data_28
    .sparse-switch
        -0x70918bc1 -> :sswitch_12
        -0x3c1ac56 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isAppAtLeastSdkVersion(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUserHandle"    # Landroid/os/UserHandle;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # I

    .line 430
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->hsumPackageManager()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, p3, :cond_22

    .line 433
    return v2

    .line 436
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_23

    if-lt v1, p3, :cond_22

    .line 438
    return v2

    .line 445
    :cond_22
    goto :goto_24

    .line 441
    :catch_23
    move-exception v1

    .line 446
    :goto_24
    return v0
.end method

.method private static greylist-max-o isCurrentProfile(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 411
    .local v0, "token":J
    :try_start_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 412
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_39

    if-ne v2, v3, :cond_18

    .line 413
    nop

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    const/4 v2, 0x1

    return v2

    .line 415
    :cond_18
    :try_start_18
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 416
    .local v2, "activityManager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_33

    .line 417
    nop

    .line 418
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_39

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    return v3

    .line 420
    :cond_33
    nop

    .line 423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    const/4 v3, 0x0

    return v3

    .line 423
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    throw v2
.end method

.method private static blacklist isLocationBypassAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 386
    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 387
    .local v4, "bypassPackage":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 388
    const/4 v0, 0x1

    return v0

    .line 386
    .end local v4    # "bypassPackage":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 391
    :cond_16
    return v2
.end method

.method public static greylist-max-o isLocationModeEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 376
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 377
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_13

    .line 378
    const-string v1, "LocationAccessPolicy"

    const-string v2, "Couldn\'t get location manager, denying location access"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x0

    return v1

    .line 381
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private static blacklist logError(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 220
    iget-boolean v0, p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    const-string v1, "LocationAccessPolicy"

    if-eqz v0, :cond_a

    .line 221
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 224
    :cond_a
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_d
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_19

    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    .line 231
    :cond_19
    goto :goto_1b

    .line 229
    :catchall_1a
    move-exception v0

    .line 232
    :goto_1b
    return-void
.end method
