.class public Lcom/android/internal/telephony/SmsPermissions;
.super Ljava/lang/Object;
.source "SmsPermissions.java"


# instance fields
.field private final greylist-max-r mAppOps:Landroid/app/AppOpsManager;

.field private final greylist-max-r mContext:Landroid/content/Context;

.field private final greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public blacklist checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const-string v3, "android:send_sms"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_e

    .line 69
    :try_start_2
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/SmsPermissions;->enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    .line 73
    :catch_7
    iget-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_e
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist checkCallingOrSelfCanGetSmscAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 141
    :try_start_8
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SmsPermissions;->isCallerDefaultSmsPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_25

    .line 143
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_23

    .line 146
    const-string p1, "SmsPermissions"

    const-string v0, "Caller is not a default SMS application"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 148
    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    :cond_23
    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    .line 143
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    throw p0
.end method

.method public blacklist checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const-string v3, "android:send_sms"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkCallingOrSelfCanSetSmscAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 169
    :try_start_8
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SmsPermissions;->isCallerDefaultSmsPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_25

    .line 171
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_23

    .line 174
    const-string p1, "SmsPermissions"

    const-string v0, "Caller is not a default SMS application"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 176
    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    :cond_23
    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    .line 171
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw p0
.end method

.method public blacklist enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierSmsUtils;->getImsRcsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsPermissions;->packageNameMatchesCallingUid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 93
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 93
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist isCallerDefaultSmsPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsPermissions;->packageNameMatchesCallingUid(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 186
    iget-object p2, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 186
    invoke-static {p2, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 217
    const-string p0, "SmsPermissions"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 221
    const-string p0, "SmsPermissions"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 225
    const-string p0, "SmsPermissions"

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist packageNameMatchesCallingUid(Ljava/lang/String;)Z
    .registers 3

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SmsPermissions;->packageNameMatchesCallingUid(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public blacklist packageNameMatchesCallingUid(Ljava/lang/String;I)Z
    .registers 4

    .line 206
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 207
    invoke-virtual {p0, p2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method
