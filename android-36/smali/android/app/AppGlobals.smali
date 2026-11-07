.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 88
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_b

    .line 89
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 91
    :cond_b
    return p1
.end method

.method public static greylist getInitialApplication()Landroid/app/Application;
    .registers 1

    .line 34
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getInitialPackage()Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 72
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_b

    .line 73
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 75
    :cond_b
    return p1
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 52
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 1

    .line 60
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    return-object v0
.end method
