.class public Lcom/android/internal/telephony/PhoneSubInfo;
.super Ljava/lang/Object;
.source "PhoneSubInfo.java"


# static fields
.field private static final CALL_PRIVILEGED:Ljava/lang/String; = "android.permission.CALL_PRIVILEGED"

.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PhoneSubInfo"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static final VDBG:Z


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5
    .line 50
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@b
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@d
    const-class v1, Landroid/app/AppOpsManager;

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/AppOpsManager;

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    #@17
    .line 48
    return-void
.end method

.method private checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    #@4
    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 390
    const/16 v5, 0xf

    #@a
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 392
    return v1

    #@11
    .line 395
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 396
    :catch_0
    move-exception v0

    #@17
    .line 398
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SMS"

    #@1c
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    #@21
    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@24
    move-result v4

    #@25
    .line 399
    const/16 v5, 0xe

    #@27
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    :goto_0
    return v1

    #@2e
    :cond_1
    move v1, v2

    #@2f
    goto :goto_0
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
    .line 370
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@4
    .line 371
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@7
    .line 370
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 374
    return v1

    #@b
    .line 375
    :catch_0
    move-exception v0

    #@c
    .line 376
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    #@11
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

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

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    const-string/jumbo v0, "PhoneSubInfo"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 346
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, "PhoneSubInfo"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 350
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 54
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump PhoneSubInfo from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 359
    const-string/jumbo v1, ", uid="

    #@22
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 360
    return-void

    #@36
    .line 363
    :cond_0
    const-string/jumbo v0, "Phone Subscriber Info:"

    #@39
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v1, "  Phone Type = "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4a
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v1, "  Device ID = "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@67
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@76
    .line 354
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 60
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 64
    :goto_0
    const-string/jumbo v1, "PhoneSubInfo finalized"

    #@6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    #@9
    .line 58
    return-void

    #@a
    .line 61
    :catch_0
    move-exception v0

    #@b
    .line 62
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "Error while finalizing:"

    #@e
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.CALL_PRIVILEGED"

    #@5
    .line 189
    const-string/jumbo v3, "Requires CALL_PRIVILEGED"

    #@8
    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 192
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "getDeviceId"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 72
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "getDeviceSvn"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 103
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    const-string/jumbo v0, "getGroupIdLevel1"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 124
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    const-string/jumbo v0, "getIccSerialNumber"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 134
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 311
    const-string/jumbo v5, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 310
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@11
    move-result-object v2

    #@12
    .line 314
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v2, :cond_0

    #@14
    .line 315
    const-string/jumbo v3, "PhoneSubInfo"

    #@17
    const-string/jumbo v4, "getIccSimChallengeResponse() UiccCard is null"

    #@1a
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 316
    return-object v6

    #@1e
    .line 319
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@21
    move-result-object v1

    #@22
    .line 320
    .local v1, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_1

    #@24
    .line 321
    const-string/jumbo v3, "PhoneSubInfo"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "getIccSimChallengeResponse() no app with specified type -- "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 323
    return-object v6

    #@3f
    .line 325
    :cond_1
    const-string/jumbo v3, "PhoneSubInfo"

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "getIccSimChallengeResponse() found app "

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 326
    const-string/jumbo v5, "specified type -- "

    #@59
    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 329
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext()I

    #@6b
    move-result v0

    #@6c
    .line 331
    .local v0, "authContext":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@6f
    move-result v3

    #@70
    const/16 v4, 0x20

    #@72
    if-ge v3, v4, :cond_2

    #@74
    .line 333
    const-string/jumbo v3, "PhoneSubInfo"

    #@77
    const-string/jumbo v4, "data is too small to use EAP_AKA, using EAP_SIM instead"

    #@7a
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 334
    const/16 v0, 0x80

    #@7f
    .line 337
    :cond_2
    const/4 v3, -0x1

    #@80
    if-ne v0, v3, :cond_3

    #@82
    .line 338
    const-string/jumbo v3, "PhoneSubInfo"

    #@85
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v5, "getIccSimChallengeResponse() authContext undefined for app type "

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    .line 340
    return-object v6

    #@9d
    .line 343
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v3, v0, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    return-object v3
.end method

.method public getImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "getImei"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 82
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nonce"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 289
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 291
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 292
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 294
    :cond_0
    return-object v4
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 226
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 228
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 229
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 231
    :cond_0
    return-object v4
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 211
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 213
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 214
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 216
    :cond_0
    return-object v4
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 242
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 241
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 244
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 245
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 247
    :cond_0
    return-object v4
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 257
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 259
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 260
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 262
    :cond_0
    return-object v4
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 273
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    #@11
    move-result-object v0

    #@12
    .line 275
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    #@14
    .line 276
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 278
    :cond_0
    return-object v4
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    const-string/jumbo v0, "getLine1AlphaTag"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 155
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "getLine1Number"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 145
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, "getMsisdn"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 165
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getNai(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "getNai"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 92
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "getSubscriberId"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 114
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "getVoiceMailAlphaTag"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 200
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    const-string/jumbo v1, "getVoiceMailNumber"

    #@3
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 175
    const/4 v1, 0x0

    #@a
    return-object v1

    #@b
    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 179
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method
