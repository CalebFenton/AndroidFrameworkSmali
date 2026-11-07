.class public Landroid/net/connectivity/org/chromium/base/memory/MemoryInfoBridge;
.super Ljava/lang/Object;
.source "MemoryInfoBridge.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getActivityManagerMemoryInfoForSelf()Landroid/os/Debug$MemoryInfo;
    .registers 5

    .line 31
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 33
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 35
    .local v1, "pid":I
    const/4 v2, 0x0

    :try_start_11
    filled-new-array {v1}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 36
    .local v3, "infos":[Landroid/os/Debug$MemoryInfo;
    if-nez v3, :cond_1c

    goto :goto_1f

    :cond_1c
    const/4 v4, 0x0

    aget-object v2, v3, v4
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v2

    .line 37
    .end local v3    # "infos":[Landroid/os/Debug$MemoryInfo;
    :catch_20
    move-exception v3

    .line 41
    .local v3, "e":Ljava/lang/SecurityException;
    return-object v2
.end method
