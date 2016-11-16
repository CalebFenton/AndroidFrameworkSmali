.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"

.field private static final VDBG:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    #@3
    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@5
    .line 52
    const-string/jumbo v0, "iphonesubinfo"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 53
    const-string/jumbo v0, "iphonesubinfo"

    #@11
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@14
    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@16
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@18
    const-string/jumbo v1, "appops"

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/app/AppOpsManager;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    #@23
    .line 50
    return-void
.end method

.method private checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 441
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    #@4
    .line 442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v5

    #@8
    .line 441
    const/16 v6, 0xf

    #@a
    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 443
    return v2

    #@11
    .line 446
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 447
    :catch_0
    move-exception v0

    #@17
    .line 450
    .local v0, "readPhoneStateSecurityException":Ljava/lang/SecurityException;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v5, "android.permission.READ_SMS"

    #@1c
    invoke-virtual {v4, v5, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 451
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    #@21
    .line 452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@24
    move-result v5

    #@25
    .line 451
    const/16 v6, 0xe

    #@27
    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_1

    #@2d
    :goto_0
    return v2

    #@2e
    :cond_1
    move v2, v3

    #@2f
    goto :goto_0

    #@30
    .line 453
    :catch_1
    move-exception v1

    #@31
    .line 456
    .local v1, "readSmsSecurityException":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/SecurityException;

    #@33
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, ": Neither user "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@46
    move-result v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 457
    const-string/jumbo v4, " nor current process has "

    #@4e
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 457
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@55
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 457
    const-string/jumbo v4, " or "

    #@5c
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 457
    const-string/jumbo v4, "android.permission.READ_SMS"

    #@63
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    .line 457
    const-string/jumbo v4, "."

    #@6a
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2
.end method

.method private checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@7
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 427
    return v1

    #@b
    .line 428
    :catch_0
    move-exception v0

    #@c
    .line 429
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@11
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    #@16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@19
    move-result v4

    #@1a
    const/16 v5, 0x33

    #@1c
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    :goto_0
    return v1

    #@23
    :cond_0
    move v1, v2

    #@24
    goto :goto_0
.end method

.method private enforcePrivilegedPermissionOrCarrierPrivilege(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@2
    .line 284
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@5
    .line 283
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 285
    .local v0, "permissionResult":I
    if-nez v0, :cond_0

    #@b
    .line 286
    return-void

    #@c
    .line 288
    :cond_0
    const-string/jumbo v2, "No read privileged phone permission, check carrier privilege next."

    #@f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->log(Ljava/lang/String;)V

    #@12
    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@15
    move-result-object v1

    #@16
    .line 290
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_1

    #@18
    .line 291
    new-instance v2, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v3, "No Carrier Privilege: No UICC"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v2

    #@27
    .line 293
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    #@2a
    move-result v2

    #@2b
    .line 294
    const/4 v3, 0x1

    #@2c
    .line 293
    if-eq v2, v3, :cond_2

    #@2e
    .line 295
    new-instance v2, Ljava/lang/SecurityException;

    #@30
    const-string/jumbo v3, "No Carrier Privilege."

    #@33
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 282
    :cond_2
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    #@0
    .prologue
    .line 300
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 270
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 271
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 272
    const/4 v0, 0x0

    #@b
    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@d
    aget-object v1, v1, v0

    #@f
    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    const-string/jumbo v0, "PhoneSubInfoController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 462
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    const-string/jumbo v0, "PhoneSubInfoController"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 466
    return-void
.end method


# virtual methods
.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v1

    #@5
    .line 238
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    #@7
    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v3, "android.permission.CALL_PRIVILEGED"

    #@c
    const-string/jumbo v4, "Requires CALL_PRIVILEGED"

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 240
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 242
    .local v0, "number":Ljava/lang/String;
    return-object v0

    #@17
    .line 244
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "getCompleteVoiceMailNumber phone is null for Subscription:"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2e
    .line 245
    return-object v4
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 65
    const-string/jumbo v1, "getDeviceId"

    #@4
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 66
    return-object v3

    #@b
    .line 68
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 69
    const/4 p1, 0x0

    #@12
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@14
    aget-object v0, v1, p1

    #@16
    .line 72
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    #@18
    .line 73
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 75
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "getDeviceIdForPhone phone "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " is null"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@3b
    .line 76
    return-object v3
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 112
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 113
    const-string/jumbo v1, "getDeviceSvn"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 114
    return-object v2

    #@11
    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 118
    :cond_1
    const-string/jumbo v1, "getDeviceSvn phone is null"

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@1c
    .line 119
    return-object v2
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 410
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 411
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 412
    const-string/jumbo v1, "getGroupIdLevel1"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 413
    return-object v3

    #@11
    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 417
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getGroupIdLevel1 phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 418
    return-object v3
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 149
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 150
    const-string/jumbo v1, "getIccSerialNumber"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 151
    return-object v3

    #@11
    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 155
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getIccSerialNumber phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 156
    return-object v3
.end method

.method public getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 379
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforcePrivilegedPermissionOrCarrierPrivilege(Lcom/android/internal/telephony/Phone;)V

    #@8
    .line 380
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@b
    move-result-object v2

    #@c
    .line 381
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v2, :cond_0

    #@e
    .line 382
    const-string/jumbo v3, "getIccSimChallengeResponse() UiccCard is null"

    #@11
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@14
    .line 383
    return-object v5

    #@15
    .line 386
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    move-result-object v1

    #@19
    .line 387
    .local v1, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_1

    #@1b
    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "getIccSimChallengeResponse() no app with specified type -- "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@32
    .line 390
    return-object v5

    #@33
    .line 392
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "getIccSimChallengeResponse() found app "

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 393
    const-string/jumbo v4, " specified type -- "

    #@4a
    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@59
    .line 396
    const/16 v3, 0x80

    #@5b
    if-eq p3, v3, :cond_2

    #@5d
    .line 397
    const/16 v3, 0x81

    #@5f
    if-eq p3, v3, :cond_2

    #@61
    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v4, "getIccSimChallengeResponse() unsupported authType: "

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@78
    .line 399
    return-object v5

    #@79
    .line 402
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    return-object v3
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 95
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 96
    const-string/jumbo v1, "getImei"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 97
    return-object v3

    #@11
    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 101
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getDeviceId phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 102
    return-object v3
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 366
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 367
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 366
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 368
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 369
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 370
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 372
    :cond_0
    return-object v5
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 318
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 319
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 318
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 320
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 321
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 322
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 324
    :cond_0
    return-object v5
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 306
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 307
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 306
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 308
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 309
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 310
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 312
    :cond_0
    return-object v5
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 330
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 331
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 330
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 332
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 333
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 334
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 336
    :cond_0
    return-object v5
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 342
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 343
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 342
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 344
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 345
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 346
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 348
    :cond_0
    return-object v5
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@8
    move-result-object v1

    #@9
    .line 354
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@e
    .line 355
    const-string/jumbo v4, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@11
    .line 354
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 356
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@17
    move-result-object v0

    #@18
    .line 357
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@1a
    .line 358
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 360
    :cond_0
    return-object v5
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 184
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 185
    const-string/jumbo v1, "getLine1AlphaTag"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 186
    return-object v3

    #@11
    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 190
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getLine1AlphaTag phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 191
    return-object v3
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 166
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 168
    const-string/jumbo v1, "getLine1Number"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 169
    return-object v3

    #@11
    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 173
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getLine1Number phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 174
    return-object v3
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 201
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 202
    const-string/jumbo v1, "getMsisdn"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 203
    return-object v3

    #@11
    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 207
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getMsisdn phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 208
    return-object v3
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 82
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 83
    const-string/jumbo v1, "getNai"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 84
    return-object v3

    #@11
    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getNai phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 89
    return-object v3
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 129
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 130
    const-string/jumbo v1, "getSubscriberId"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 131
    return-object v3

    #@11
    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getSubscriberId phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 136
    return-object v3
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v0

    #@5
    .line 255
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@7
    .line 256
    const-string/jumbo v1, "getVoiceMailAlphaTag"

    #@a
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 257
    return-object v3

    #@11
    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 261
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getVoiceMailAlphaTag phone is null for Subscription:"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@2d
    .line 262
    return-object v3
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    #@4
    move-result-object v1

    #@5
    .line 218
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    #@7
    .line 219
    const-string/jumbo v2, "getVoiceMailNumber"

    #@a
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 220
    return-object v4

    #@11
    .line 222
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 224
    .local v0, "number":Ljava/lang/String;
    return-object v0

    #@1a
    .line 226
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "getVoiceMailNumber phone is null for Subscription:"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    #@31
    .line 227
    return-object v4
.end method
