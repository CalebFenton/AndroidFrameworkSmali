.class public interface abstract Lcom/android/server/usage/AppStandbyInternal;
.super Ljava/lang/Object;
.source "AppStandbyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    }
.end annotation


# direct methods
.method public static blacklist newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;
    .registers 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    :try_start_0
    const-string v0, "com.android.server.usage.AppStandbyController"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 31
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v2

    .line 32
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1d
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate AppStandbyController!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract blacklist addActiveDeviceAdmin(Ljava/lang/String;I)V
.end method

.method public abstract blacklist addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract blacklist clearCarrierPrivilegedApps()V
.end method

.method public abstract blacklist clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
.end method

.method public abstract blacklist dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist flushToDisk()V
.end method

.method public abstract blacklist getAppId(Ljava/lang/String;)I
.end method

.method public abstract blacklist getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
.end method

.method public abstract blacklist getAppStandbyBucket(Ljava/lang/String;IJZ)I
.end method

.method public abstract blacklist getAppStandbyBucketReason(Ljava/lang/String;IJ)I
.end method

.method public abstract blacklist getAppStandbyBuckets(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getBroadcastResponseExemptedRoles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getBroadcastResponseFgThresholdState()I
.end method

.method public abstract blacklist getBroadcastResponseWindowDurationMs()J
.end method

.method public abstract blacklist getBroadcastSessionsDurationMs()J
.end method

.method public abstract blacklist getBroadcastSessionsWithResponseDurationMs()J
.end method

.method public abstract blacklist getEstimatedLaunchTime(Ljava/lang/String;I)J
.end method

.method public abstract blacklist getIdleUidsForUser(I)[I
.end method

.method public abstract blacklist getTimeSinceLastJobRun(Ljava/lang/String;I)J
.end method

.method public abstract blacklist getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
.end method

.method public abstract blacklist initializeDefaultsForSystemApps(I)V
.end method

.method public abstract blacklist isActiveDeviceAdmin(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist isAppIdleEnabled()Z
.end method

.method public abstract blacklist isAppIdleFiltered(Ljava/lang/String;IIJ)Z
.end method

.method public abstract blacklist isAppIdleFiltered(Ljava/lang/String;IJZ)Z
.end method

.method public abstract blacklist isInParole()Z
.end method

.method public abstract blacklist maybeUnrestrictApp(Ljava/lang/String;IIIII)V
.end method

.method public abstract blacklist onAdminDataAvailable()V
.end method

.method public abstract blacklist onBootPhase(I)V
.end method

.method public abstract blacklist onUserRemoved(I)V
.end method

.method public abstract blacklist postCheckIdleStates(I)V
.end method

.method public abstract blacklist postOneTimeCheckIdleStates()V
.end method

.method public abstract blacklist postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract blacklist postReportExemptedSyncStart(Ljava/lang/String;I)V
.end method

.method public abstract blacklist postReportSyncScheduled(Ljava/lang/String;IZ)V
.end method

.method public abstract blacklist removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract blacklist restoreAppsToRare(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist restrictApp(Ljava/lang/String;II)V
.end method

.method public abstract blacklist restrictApp(Ljava/lang/String;III)V
.end method

.method public abstract blacklist setActiveAdminApps(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist setAdminProtectedPackages(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist setAppIdleAsync(Ljava/lang/String;ZI)V
.end method

.method public abstract blacklist setAppStandbyBucket(Ljava/lang/String;IIII)V
.end method

.method public abstract blacklist setAppStandbyBuckets(Ljava/util/List;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract blacklist setEstimatedLaunchTime(Ljava/lang/String;IJ)V
.end method

.method public abstract blacklist setLastJobRunTime(Ljava/lang/String;IJ)V
.end method

.method public abstract blacklist shouldNoteResponseEventForAllBroadcastSessions()Z
.end method
