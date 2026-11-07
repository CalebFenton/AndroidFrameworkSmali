.class public Lcom/android/internal/telephony/util/LocationPermissionChecker;
.super Ljava/lang/Object;
.source "LocationPermissionChecker.java"


# static fields
.field public static final blacklist ERROR_LOCATION_MODE_OFF:I = 0x1

.field public static final blacklist ERROR_LOCATION_PERMISSION_MISSING:I = 0x2

.field public static final blacklist SUCCEEDED:I


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    .line 77
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private blacklist checkMainlineNetworkStackPermission(I)Z
    .registers 3

    .line 274
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkNetworkSettingsPermission(I)Z
    .registers 3

    .line 250
    const-string v0, "android.permission.NETWORK_SETTINGS"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkNetworkSetupWizardPermission(I)Z
    .registers 3

    .line 258
    const-string v0, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkNetworkStackPermission(I)Z
    .registers 3

    .line 266
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkPackage(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void

    .line 231
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but Package Name is Null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getUidPermission(Ljava/lang/String;I)I
    .registers 4

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private blacklist isLocationModeEnabled()Z
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 196
    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getCurrentUser()I

    move-result p0

    .line 195
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 198
    const-string v0, "LocationPermissionChecker"

    const-string v1, "Failure to get location mode via API, falling back to settings"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isTargetSdkLessThan(Ljava/lang/String;II)Z
    .registers 7

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 206
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 208
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 206
    invoke-virtual {p0, p1, v2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_1c
    .catchall {:try_start_5 .. :try_end_15} :catchall_20

    if-ge p0, p2, :cond_1c

    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catch_1c
    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw p0

    :goto_25
    return v2
.end method

.method private blacklist noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object v0, p3

    move-object p3, p2

    move p2, p4

    move-object p4, v0

    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z
    .registers 16

    const/16 v0, 0x1d

    .line 164
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->isTargetSdkLessThan(Ljava/lang/String;II)Z

    move-result v0

    if-eqz p4, :cond_d

    if-eqz v0, :cond_d

    .line 169
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_f

    .line 171
    :cond_d
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    :goto_f
    invoke-direct {p0, v1, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    return v3

    .line 177
    :cond_18
    const-string v5, "android:fine_location"

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    if-eqz p4, :cond_32

    if-eqz v0, :cond_32

    .line 183
    const-string v5, "android:coarse_location"

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_32
    return v3
.end method

.method public blacklist checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14

    const/4 v0, 0x2

    .line 121
    :try_start_1
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkPackage(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_34

    .line 128
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkSettingsPermission(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkSetupWizardPermission(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 129
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkStackPermission(I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkMainlineNetworkStackPermission(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_33

    .line 134
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->isLocationModeEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .line 140
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    return v0

    :cond_33
    :goto_33
    return v2

    :catch_34
    return v0
.end method

.method protected blacklist getCurrentUser()I
    .registers 1

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0
.end method
