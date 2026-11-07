.class public interface abstract Landroid/hardware/input/AppLaunchData;
.super Ljava/lang/Object;
.source "AppLaunchData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/AppLaunchData$CategoryData;,
        Landroid/hardware/input/AppLaunchData$RoleData;,
        Landroid/hardware/input/AppLaunchData$ComponentData;
    }
.end annotation


# direct methods
.method public static blacklist createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;
    .registers 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "role"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 55
    new-instance v0, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-direct {v0, p0}, Landroid/hardware/input/AppLaunchData$CategoryData;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 58
    new-instance v0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-direct {v0, p1}, Landroid/hardware/input/AppLaunchData$RoleData;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 61
    new-instance v0, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-direct {v0, p2, p3}, Landroid/hardware/input/AppLaunchData$ComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;
    .registers 2
    .param p0, "category"    # Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-direct {v0, p0}, Landroid/hardware/input/AppLaunchData$CategoryData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist createLaunchDataForComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/AppLaunchData$ComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;
    .registers 2
    .param p0, "role"    # Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-direct {v0, p0}, Landroid/hardware/input/AppLaunchData$RoleData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
