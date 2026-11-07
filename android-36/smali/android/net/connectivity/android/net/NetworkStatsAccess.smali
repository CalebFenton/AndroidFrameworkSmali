.class public final Landroid/net/connectivity/android/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAccessLevel(Landroid/content/Context;IILjava/lang/String;)I
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 114
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 115
    .local v0, "appId":I
    const/16 v1, 0x3e8

    const/4 v2, 0x3

    if-ne v0, v1, :cond_a

    .line 118
    return v2

    .line 120
    :cond_a
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 121
    .local v1, "mDpm":Landroid/app/admin/DevicePolicyManager;
    nop

    .line 122
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 125
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 127
    .local v4, "token":J
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2d

    .line 128
    :try_start_23
    invoke-virtual {v3, p3}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_2d

    move v8, v7

    goto :goto_2e

    .line 132
    :catchall_2b
    move-exception v2

    goto :goto_38

    .line 128
    :cond_2d
    move v8, v6

    .line 130
    .local v8, "hasCarrierPrivileges":Z
    :goto_2e
    if-eqz v1, :cond_3c

    invoke-virtual {v1, p3}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v9
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_2b

    if-eqz v9, :cond_3c

    move v9, v7

    goto :goto_3d

    .line 132
    .end local v8    # "hasCarrierPrivileges":Z
    :goto_38
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw v2

    .line 130
    .restart local v8    # "hasCarrierPrivileges":Z
    :cond_3c
    move v9, v6

    .line 132
    .local v9, "isDeviceOwner":Z
    :goto_3d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    nop

    .line 135
    const-string v10, "android.permission.NETWORK_STACK"

    const-string v11, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Landroid/net/connectivity/com/android/net/module/util/PermissionUtils;->hasAnyPermissionOf(Landroid/content/Context;II[Ljava/lang/String;)Z

    move-result v10

    .line 139
    .local v10, "isNetworkStack":Z
    if-nez v8, :cond_82

    if-nez v9, :cond_82

    if-eqz v10, :cond_54

    goto :goto_82

    .line 145
    :cond_54
    nop

    .line 146
    invoke-static {p0, p2, p3}, Landroid/net/connectivity/android/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    .line 147
    .local v2, "hasAppOpsPermission":Z
    if-nez v2, :cond_80

    const-string v11, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_64

    goto :goto_80

    .line 153
    :cond_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 155
    if-eqz v1, :cond_77

    :try_start_6a
    invoke-virtual {v1, p3}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v11
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_72

    if-eqz v11, :cond_77

    move v11, v7

    goto :goto_78

    .line 157
    :catchall_72
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw v6

    .line 155
    :cond_77
    move v11, v6

    .line 157
    .local v11, "isProfileOwner":Z
    :goto_78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    nop

    .line 159
    if-eqz v11, :cond_7f

    .line 162
    return v7

    .line 166
    :cond_7f
    return v6

    .line 149
    .end local v11    # "isProfileOwner":Z
    :cond_80
    :goto_80
    const/4 v6, 0x2

    return v6

    .line 142
    .end local v2    # "hasAppOpsPermission":Z
    :cond_82
    :goto_82
    return v2
.end method

.method private static blacklist hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    if-eqz p2, :cond_28

    .line 204
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager;

    .line 207
    .local v2, "appOps":Landroid/app/AppOpsManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "android:get_usage_stats"

    move v4, p1

    move-object v5, p2

    .end local p1    # "callingUid":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .local v4, "callingUid":I
    .local v5, "callingPackage":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 209
    .local p1, "mode":I
    const/4 p2, 0x3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_24

    .line 212
    const-string p2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p2

    .line 214
    .local p2, "permissionCheck":I
    if-nez p2, :cond_23

    move v0, v1

    :cond_23
    return v0

    .line 216
    .end local p2    # "permissionCheck":I
    :cond_24
    if-nez p1, :cond_27

    move v0, v1

    :cond_27
    return v0

    .line 218
    .end local v2    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "callingUid":I
    .end local v5    # "callingPackage":Ljava/lang/String;
    .local p1, "callingUid":I
    .local p2, "callingPackage":Ljava/lang/String;
    :cond_28
    return v0
.end method

.method public static blacklist isAccessibleToUser(III)Z
    .registers 10
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I
    .param p2, "accessLevel"    # I

    .line 175
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 176
    .local v0, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 177
    .local v1, "callerUserId":I
    const/4 v2, -0x5

    const/4 v3, -0x4

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p2, :pswitch_data_36

    .line 197
    if-ne p0, p1, :cond_35

    move v5, v6

    goto :goto_35

    .line 180
    :pswitch_1d
    return v6

    .line 185
    :pswitch_1e
    if-eq p0, v4, :cond_29

    if-eq p0, v3, :cond_29

    if-eq p0, v2, :cond_29

    const/4 v2, -0x1

    if-eq p0, v2, :cond_29

    if-ne v0, v1, :cond_2a

    :cond_29
    move v5, v6

    :cond_2a
    return v5

    .line 191
    :pswitch_2b
    if-eq p0, v4, :cond_33

    if-eq p0, v3, :cond_33

    if-eq p0, v2, :cond_33

    if-ne v0, v1, :cond_34

    :cond_33
    move v5, v6

    :cond_34
    return v5

    .line 197
    :cond_35
    :goto_35
    return v5

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method
