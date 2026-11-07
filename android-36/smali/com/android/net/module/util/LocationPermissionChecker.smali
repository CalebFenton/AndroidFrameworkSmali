.class public Lcom/android/net/module/util/LocationPermissionChecker;
.super Ljava/lang/Object;
.source "LocationPermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/LocationPermissionChecker$LocationPermissionCheckStatus;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_LOCATION_MODE_OFF:I = 0x1

.field public static final blacklist ERROR_LOCATION_PERMISSION_MISSING:I = 0x2

.field public static final blacklist SUCCEEDED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "LocationPermissionChecker"


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 76
    iput-object p1, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 78
    return-void
.end method

.method private blacklist checkMainlineNetworkStackPermission(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 274
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist checkNetworkSettingsPermission(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 250
    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist checkNetworkSetupWizardPermission(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 258
    const-string v0, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist checkNetworkStackPermission(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 266
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist checkPackage(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 230
    if-eqz p2, :cond_8

    .line 233
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 234
    return-void

    .line 231
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but Package Name is Null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permissionType"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 243
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist isLocationModeEnabled()Z
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 195
    .local v0, "LocationManager":Landroid/location/LocationManager;
    nop

    .line 196
    :try_start_b
    invoke-virtual {p0}, Lcom/android/net/module/util/LocationPermissionChecker;->getCurrentUser()I

    move-result v1

    .line 195
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_18

    return v1

    .line 197
    :catch_18
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocationPermissionChecker"

    const-string v3, "Failure to get location mode via API, falling back to settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isTargetSdkLessThan(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "callingUid"    # I

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 206
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 208
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 206
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_22
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    if-ge v3, p2, :cond_23

    .line 210
    nop

    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    const/4 v2, 0x1

    return v2

    .line 217
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw v2

    .line 212
    :catch_22
    move-exception v3

    .line 217
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    nop

    .line 219
    return v2
.end method

.method private blacklist noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 12
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/net/module/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    move-object v5, p5

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "featureId":Ljava/lang/String;
    .end local p4    # "uid":I
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "pkgName":Ljava/lang/String;
    .local v4, "featureId":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method


# virtual methods
.method public blacklist checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "coarseForTargetSdkLessThanQ"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 164
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v1, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->isTargetSdkLessThan(Ljava/lang/String;II)Z

    move-result v6

    .line 166
    .local v6, "isTargetSdkLessThanQ":Z
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 167
    .local v1, "permissionType":Ljava/lang/String;
    if-eqz p4, :cond_10

    if-eqz v6, :cond_10

    .line 169
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    move-object v7, v1

    goto :goto_11

    .line 171
    :cond_10
    move-object v7, v1

    .end local v1    # "permissionType":Ljava/lang/String;
    .local v7, "permissionType":Ljava/lang/String;
    :goto_11
    invoke-direct {p0, v7, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v8, 0x0

    if-ne v1, v3, :cond_1a

    .line 172
    return v8

    .line 177
    :cond_1a
    const-string v1, "android:fine_location"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/net/module/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    .line 179
    .local v9, "isFineLocationAllowed":Z
    if-eqz v9, :cond_29

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_29
    if-eqz p4, :cond_39

    if-eqz v6, :cond_39

    .line 183
    const-string v1, "android:coarse_location"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/net/module/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 186
    :cond_39
    return v8
.end method

.method public blacklist checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/net/module/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 121
    const/4 v1, 0x2

    :try_start_1
    invoke-direct {p0, p3, p1}, Lcom/android/net/module/util/LocationPermissionChecker;->checkPackage(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_43

    .line 124
    nop

    .line 128
    invoke-direct {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkSettingsPermission(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    invoke-direct {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 129
    invoke-direct {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkNetworkStackPermission(I)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-direct {p0, p3}, Lcom/android/net/module/util/LocationPermissionChecker;->checkMainlineNetworkStackPermission(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    goto :goto_42

    .line 134
    :cond_23
    invoke-direct {p0}, Lcom/android/net/module/util/LocationPermissionChecker;->isLocationModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 135
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_2b
    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "featureId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "message":Ljava/lang/String;
    .local v4, "pkgName":Ljava/lang/String;
    .local v5, "featureId":Ljava/lang/String;
    .local v6, "uid":I
    .local v8, "message":Ljava/lang/String;
    invoke-virtual/range {v3 .. v8}, Lcom/android/net/module/util/LocationPermissionChecker;->checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 142
    return v1

    .line 144
    :cond_38
    return v2

    .line 129
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "featureId":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v8    # "message":Ljava/lang/String;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "featureId":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "message":Ljava/lang/String;
    :cond_39
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "featureId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "message":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "featureId":Ljava/lang/String;
    .restart local v6    # "uid":I
    .restart local v8    # "message":Ljava/lang/String;
    goto :goto_42

    .line 128
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "featureId":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v8    # "message":Ljava/lang/String;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "featureId":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "message":Ljava/lang/String;
    :cond_3e
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .line 130
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "featureId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "message":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "featureId":Ljava/lang/String;
    .restart local v6    # "uid":I
    .restart local v8    # "message":Ljava/lang/String;
    :goto_42
    return v2

    .line 122
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "featureId":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v8    # "message":Ljava/lang/String;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "featureId":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "message":Ljava/lang/String;
    :catch_43
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    move-object p1, v0

    .line 123
    .end local p2    # "featureId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "message":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "featureId":Ljava/lang/String;
    .restart local v6    # "uid":I
    .restart local v8    # "message":Ljava/lang/String;
    .local p1, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method protected blacklist getCurrentUser()I
    .registers 2

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method
