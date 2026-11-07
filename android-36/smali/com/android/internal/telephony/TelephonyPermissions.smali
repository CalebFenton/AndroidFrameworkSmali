.class public final Lcom/android/internal/telephony/TelephonyPermissions;
.super Ljava/lang/Object;
.source "TelephonyPermissions.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyPermissions"

.field private static final blacklist PROPERTY_DEVICE_IDENTIFIER_ACCESS_RESTRICTIONS_DISABLED:Ljava/lang/String; = "device_identifier_access_restrictions_disabled"

.field private static final blacklist sReportedDeviceIDPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 298
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_8
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "subId":I
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 272
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkCallingOrSelfReadNonDangerousPhoneStateNoThrow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 138
    :try_start_0
    const-string v0, "android.permission.READ_BASIC_PHONE_STATE"

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 138
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_f

    .line 141
    const/4 v0, 0x1

    return v0

    .line 142
    :catch_f
    move-exception v0

    .line 143
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 535
    nop

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 535
    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "subId":I
    .local v4, "callingPackage":Ljava/lang/String;
    .local v5, "callingFeatureId":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "subId":I
    .local v4, "callingPackage":Ljava/lang/String;
    .local v5, "callingFeatureId":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 326
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "subId":I
    .local v2, "callingPackage":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "reportFailure"    # Z

    .line 341
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .end local p5    # "reportFailure":Z
    .local v1, "context":Landroid/content/Context;
    .local v2, "subId":I
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    .local v7, "reportFailure":Z
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 480
    return v0

    .line 482
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 483
    .local v3, "callingUid":I
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 484
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const-string v2, "android:use_icc_auth_with_device_identifier"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "callingFeatureId":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    .local v5, "callingFeatureId":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 486
    .local p1, "opMode":I
    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_2a

    .line 495
    :pswitch_1d
    return v0

    .line 491
    :pswitch_1e
    const-string p3, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {p0, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_27

    move v0, p2

    :cond_27
    return v0

    .line 489
    :pswitch_28
    return p2

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method private static blacklist checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 700
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 703
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 705
    .local v1, "identity":J
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v3
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_28

    .line 707
    .local v3, "activeSubIds":[I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    nop

    .line 709
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_27

    aget v7, v3, v6

    .line 710
    .local v7, "activeSubId":I
    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_24

    .line 712
    return v9

    .line 709
    .end local v7    # "activeSubId":I
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 715
    :cond_27
    return v5

    .line 707
    .end local v3    # "activeSubIds":[I
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    throw v3
.end method

.method public static blacklist checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 205
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 208
    return v1

    .line 210
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkInternetPermissionNoThrow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 120
    :try_start_0
    const-string v0, "android.permission.INTERNET"

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 120
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_f

    .line 122
    const/4 v0, 0x1

    return v0

    .line 123
    :catch_f
    move-exception v0

    .line 124
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist checkLastKnownCellIdAccessPermission(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 603
    const-string v0, "android.permission.ACCESS_LAST_KNOWN_CELL_ID"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "allowCarrierPrivilegeOnAnySub"    # Z
    .param p6, "reportFailure"    # Z

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 376
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 379
    .local v3, "pid":I
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_10

    return v7

    .line 383
    :cond_10
    if-eqz p5, :cond_19

    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 384
    return v7

    .line 387
    :cond_19
    nop

    .line 388
    const-string v0, "legacy_permission"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/LegacyPermissionManager;

    .line 390
    .local v1, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move-object v2, p2

    move v5, v3

    move v6, v4

    move-object v4, p3

    move-object v3, p4

    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v2, "callingPackage":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .local v5, "pid":I
    .local v6, "uid":I
    :try_start_28
    invoke-virtual/range {v1 .. v6}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_2c} :catch_32

    move-object p4, v1

    move v4, v6

    .end local v1    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v6    # "uid":I
    .local v4, "uid":I
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .local p4, "permissionManager":Landroid/permission/LegacyPermissionManager;
    if-nez p2, :cond_31

    .line 393
    return v7

    .line 397
    :cond_31
    goto :goto_3a

    .line 395
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .restart local v1    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .restart local v6    # "uid":I
    :catch_32
    move-exception v0

    move-object p4, v1

    move-object p3, v4

    move v4, v6

    move-object p2, v0

    .line 396
    .end local v1    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    .end local v6    # "uid":I
    .local v4, "uid":I
    .local p2, "se":Ljava/lang/SecurityException;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "permissionManager":Landroid/permission/LegacyPermissionManager;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 399
    .end local p2    # "se":Ljava/lang/SecurityException;
    :goto_3a
    if-eqz p6, :cond_48

    .line 400
    move-object v1, p0

    move-object v6, v3

    move v3, v5

    move-object v5, v2

    move v2, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "subId":I
    .local v3, "pid":I
    .local v5, "callingPackage":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    move p1, v3

    move-object v3, v6

    .end local v6    # "message":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    .local p1, "pid":I
    return p0

    .line 403
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "callingPackage":Ljava/lang/String;
    .local v5, "pid":I
    .restart local p0    # "context":Landroid/content/Context;
    .local p1, "subId":I
    :cond_48
    move-object v1, v2

    move v2, p1

    move p1, v5

    move-object v5, v1

    move-object v1, p0

    .end local p0    # "context":Landroid/content/Context;
    .restart local v1    # "context":Landroid/content/Context;
    .local v2, "subId":I
    .local v5, "callingPackage":Ljava/lang/String;
    .local p1, "pid":I
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingPackageName"    # Ljava/lang/String;

    .line 507
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 511
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 512
    const-string/jumbo v0, "readCallLog"

    invoke-static {p0, p1, p3, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 513
    return v1

    .line 515
    :cond_17
    return v2

    .line 520
    :cond_18
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 521
    .local v3, "appOps":Landroid/app/AppOpsManager;
    const-string v4, "android:read_call_log"

    const/4 v8, 0x0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p3    # "uid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPackageName":Ljava/lang/String;
    .local v5, "uid":I
    .local v6, "callingPackage":Ljava/lang/String;
    .local v7, "callingPackageName":Ljava/lang/String;
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1
.end method

.method public static blacklist checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 551
    nop

    .line 552
    const-string v0, "legacy_permission"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/LegacyPermissionManager;

    .line 557
    .local v1, "permissionManager":Landroid/permission/LegacyPermissionManager;
    move v5, p2

    move v6, p3

    move-object v2, p4

    move-object v4, p5

    move-object v3, p6

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingFeatureId":Ljava/lang/String;
    .end local p6    # "message":Ljava/lang/String;
    .local v2, "callingPackage":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    .local v4, "callingFeatureId":Ljava/lang/String;
    .local v5, "pid":I
    .local v6, "uid":I
    invoke-virtual/range {v1 .. v6}, Landroid/permission/LegacyPermissionManager;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2

    .line 559
    .local p2, "permissionResult":I
    const/4 p3, 0x1

    if-nez p2, :cond_17

    .line 560
    return p3

    .line 562
    :cond_17
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 563
    invoke-static {p0, p1, v6}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result p4

    if-ne p4, p3, :cond_24

    .line 565
    return p3

    .line 568
    :cond_24
    if-ne p2, p3, :cond_28

    .line 569
    const/4 p3, 0x0

    return p3

    .line 572
    :cond_28
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ": Neither user "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " nor current process has "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "android.permission.READ_SMS"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", or "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static blacklist checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 173
    const/4 v1, 0x1

    :try_start_1
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_7

    .line 177
    return v1

    .line 178
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 180
    .local v2, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :try_start_9
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_27

    .line 190
    nop

    .line 195
    .end local v2    # "privilegedPhoneStateException":Ljava/lang/SecurityException;
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AppOpsManager;

    .line 196
    .local v2, "appOps":Landroid/app/AppOpsManager;
    const-string v3, "android:read_phone_state"

    const/4 v7, 0x0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p3    # "uid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingFeatureId":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "callingPackage":Ljava/lang/String;
    .local v6, "callingFeatureId":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1

    .line 182
    .end local v4    # "uid":I
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "callingFeatureId":Ljava/lang/String;
    .local v2, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    .restart local p3    # "uid":I
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingFeatureId":Ljava/lang/String;
    :catch_27
    move-exception v0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object p3, v0

    .line 185
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingFeatureId":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "callingFeatureId":Ljava/lang/String;
    .local p3, "phoneStateException":Ljava/lang/SecurityException;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p4

    if-eqz p4, :cond_36

    .line 186
    invoke-static {p0, p1, v4, p6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_36
    throw p3
.end method

.method public static blacklist checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 230
    const/4 v1, 0x1

    :try_start_1
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_7

    .line 234
    return v1

    .line 235
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 237
    .local v2, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    :try_start_9
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_27

    .line 243
    nop

    .line 248
    .end local v2    # "privilegedPhoneStateException":Ljava/lang/SecurityException;
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AppOpsManager;

    .line 249
    .local v2, "appOps":Landroid/app/AppOpsManager;
    const-string v3, "android:read_phone_state"

    const/4 v7, 0x0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "uid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "callingFeatureId":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "callingPackage":Ljava/lang/String;
    .local v6, "callingFeatureId":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1

    .line 239
    .end local v4    # "uid":I
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "callingFeatureId":Ljava/lang/String;
    .local v2, "privilegedPhoneStateException":Ljava/lang/SecurityException;
    .restart local p2    # "uid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "callingFeatureId":Ljava/lang/String;
    :catch_27
    move-exception v0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p2, v0

    .line 242
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "callingFeatureId":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "callingPackage":Ljava/lang/String;
    .restart local v6    # "callingFeatureId":Ljava/lang/String;
    .local p2, "phoneStateException":Ljava/lang/SecurityException;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result p3

    return p3
.end method

.method public static blacklist checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callerUserHandle"    # Landroid/os/UserHandle;

    .line 888
    const-string v0, "TelephonyPermissions"

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 890
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 892
    .local v2, "token":J
    if-eqz v1, :cond_69

    .line 893
    const/4 v4, 0x0

    :try_start_12
    invoke-virtual {v1, p1, p2}, Landroid/telephony/SubscriptionManager;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User[User ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not associated with Subscription ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_3c} :catch_43
    .catchall {:try_start_12 .. :try_end_3c} :catchall_41

    .line 897
    nop

    .line 904
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 897
    return v4

    .line 904
    :catchall_41
    move-exception v0

    goto :goto_65

    .line 899
    :catch_43
    move-exception v5

    .line 901
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscription[Subscription ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] has no records on device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_41

    .line 902
    nop

    .line 904
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    return v4

    .line 904
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    throw v0

    .line 904
    :cond_69
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "callerUserHandle"    # Landroid/os/UserHandle;
    .param p3, "destAddr"    # Ljava/lang/String;

    .line 860
    const-string v0, "TelephonyPermissions"

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 862
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 864
    .local v2, "token":J
    if-eqz v1, :cond_41

    :try_start_11
    invoke-virtual {v1, p3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 865
    const-string v4, "checkSubscriptionAssociatedWithUser: destAddr is emergency number"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_24
    .catchall {:try_start_11 .. :try_end_1c} :catchall_22

    .line 867
    nop

    .line 872
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    const/4 v0, 0x1

    return v0

    .line 872
    :catchall_22
    move-exception v0

    goto :goto_3d

    .line 869
    :catch_24
    move-exception v4

    .line 870
    .local v4, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify if destAddr is an emergency number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 872
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_42

    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    throw v0

    .line 872
    :cond_41
    nop

    :goto_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    nop

    .line 875
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist enforceAnyPermissionGranted(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 740
    array-length v0, p3

    if-nez v0, :cond_4

    return-void

    .line 741
    :cond_4
    const/4 v0, 0x0

    .line 742
    .local v0, "isGranted":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_17

    aget-object v4, p3, v3

    .line 743
    .local v4, "perm":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    .line 744
    const/4 v0, 0x1

    .line 745
    goto :goto_17

    .line 742
    .end local v4    # "perm":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 749
    :cond_17
    :goto_17
    if-eqz v0, :cond_1a

    return-void

    .line 751
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v3, ": Neither user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    const-string v3, " nor current process has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_32
    array-length v3, p3

    if-ge v2, v3, :cond_42

    .line 757
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 760
    .end local v2    # "i":I
    :cond_42
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs blacklist enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 770
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "uid":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "permissions":[Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "subId":I
    .local v2, "uid":I
    .local v4, "message":Ljava/lang/String;
    .local v5, "permissions":[Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public static varargs blacklist enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .param p3, "allowCarrierPrivilegeOnAnySub"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "permissions"    # [Ljava/lang/String;

    .line 782
    array-length v0, p5

    if-nez v0, :cond_4

    return-void

    .line 783
    :cond_4
    const/4 v0, 0x0

    .line 784
    .local v0, "isGranted":Z
    array-length v1, p5

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_17

    aget-object v4, p5, v3

    .line 785
    .local v4, "perm":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    .line 786
    const/4 v0, 0x1

    .line 787
    goto :goto_17

    .line 784
    .end local v4    # "perm":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 791
    :cond_17
    :goto_17
    if-eqz v0, :cond_1a

    return-void

    .line 793
    :cond_1a
    if-eqz p3, :cond_23

    .line 794
    invoke-static {p0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    .line 796
    :cond_23
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    .line 799
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v3, ": Neither user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    const-string v3, " nor current process has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    aget-object v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_42
    array-length v3, p5

    if-ge v2, v3, :cond_52

    .line 805
    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    aget-object v3, p5, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 808
    .end local v2    # "i":I
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " or carrier privileges. subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allowCarrierPrivilegeOnAnySub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 687
    return-void
.end method

.method public static blacklist enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 586
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 588
    return-void

    .line 592
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 593
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 615
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 617
    return-void

    .line 624
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 625
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 657
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 659
    return-void

    .line 662
    :cond_9
    const-string v0, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 664
    return-void

    .line 672
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 673
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 635
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 637
    return-void

    .line 645
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 646
    return-void
.end method

.method private static blacklist enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 691
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 696
    return-void

    .line 694
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enforceShellOnly(ILjava/lang/String;)V
    .registers 5
    .param p0, "callingUid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 819
    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 820
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_29

    .line 824
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Only shell user can call it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_29
    :goto_29
    return-void
.end method

.method private static blacklist getCarrierPrivilegeStatus(Landroid/content/Context;II)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "uid"    # I

    .line 719
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 721
    const/4 v0, 0x1

    return v0

    .line 724
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 726
    .local v0, "identity":J
    :try_start_c
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 728
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegeStatus(I)I

    move-result v3
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    return v3

    .line 730
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw v2
.end method

.method public static blacklist getTargetSdk(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 836
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 836
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 838
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_16

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_17

    return v1

    .line 842
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_16
    goto :goto_3e

    .line 839
    :catch_17
    move-exception v0

    .line 840
    .local v0, "unexpected":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get package info for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    const-string v2, "TelephonyPermissions"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v0    # "unexpected":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3e
    const v0, 0x7fffffff

    return v0
.end method

.method public static blacklist isRootOrShell(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 923
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x7d0

    invoke-static {p0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static blacklist isSystemOrPhone(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 914
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static blacklist reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 419
    const-string v0, "TelephonyPermissions"

    const/4 v1, 0x0

    .line 421
    .local v1, "callingPackageInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 422
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 421
    invoke-virtual {v3, p4, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_12

    move-object v1, v3

    .line 428
    goto :goto_29

    .line 423
    :catch_12
    move-exception v3

    .line 426
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught obtaining package info for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_29
    sget-object v3, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 432
    .local v3, "packageReported":Z
    if-eqz v3, :cond_3f

    sget-object v4, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 435
    :cond_3f
    if-nez v3, :cond_4c

    .line 436
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 437
    .local v4, "invokedMethods":Ljava/util/Set;
    sget-object v5, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v5, p4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 439
    .end local v4    # "invokedMethods":Ljava/util/Set;
    :cond_4c
    sget-object v4, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 441
    .restart local v4    # "invokedMethods":Ljava/util/Set;
    :goto_54
    invoke-interface {v4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    const/16 v5, 0xac

    invoke-static {v5, p4, p5, v2, v2}, Lcom/android/internal/telephony/TelephonyCommonStatsLog;->write(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 445
    .end local v4    # "invokedMethods":Ljava/util/Set;
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportAccessDeniedToReadIdentifiers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v1, :cond_9d

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_9d

    .line 451
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_96

    .line 455
    return v2

    .line 457
    :cond_96
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 458
    return v2

    .line 461
    :cond_9d
    invoke-static {p5, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 350
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": The uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not meet the requirements to access device identifiers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
