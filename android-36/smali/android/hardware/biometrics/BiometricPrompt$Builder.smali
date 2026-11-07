.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 188
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 189
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/biometrics/BiometricPrompt;
    .registers 15

    .line 670
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 671
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 672
    .local v1, "negative":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v2

    .line 673
    .local v2, "useDefaultTitle":Z
    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v3

    .line 674
    .local v3, "deviceCredentialAllowed":Z
    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v4

    .line 675
    .local v4, "authenticators":I
    if-nez v3, :cond_29

    .line 676
    invoke-static {v4}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smisCredentialAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_29

    :cond_27
    const/4 v5, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v5, 0x1

    .line 678
    .local v5, "willShowDeviceCredentialButton":Z
    :goto_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3b

    if-eqz v2, :cond_33

    goto :goto_3b

    .line 679
    :cond_33
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Title must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 680
    :cond_3b
    :goto_3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4c

    if-eqz v5, :cond_44

    goto :goto_4c

    .line 681
    :cond_44
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Negative text must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 682
    :cond_4c
    :goto_4c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    if-nez v5, :cond_55

    goto :goto_5d

    .line 683
    :cond_55
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 686
    :cond_5d
    :goto_5d
    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    if-nez v6, :cond_6c

    .line 687
    const-string v6, "auth"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 686
    invoke-static {v6}, Landroid/hardware/biometrics/IAuthService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;

    move-result-object v6

    goto :goto_6e

    .line 687
    :cond_6c
    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    :goto_6e
    iput-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 688
    new-instance v7, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v8, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v10, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v11, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v12, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V

    return-object v7
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "allow"    # Z

    .line 546
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    .line 547
    return-object p0
.end method

.method public blacklist setAllowBackgroundAuthentication(ZZ)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .param p1, "allow"    # Z
    .param p2, "useParentProfileForDeviceCredential"    # Z

    .line 567
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    .line 568
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/PromptInfo;->setUseParentProfileForDeviceCredential(Z)V

    .line 569
    return-object p0
.end method

.method public whitelist setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "authenticators"    # I

    .line 506
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 507
    return-object p0
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/biometrics/BiometricPrompt$Builder;"
        }
    .end annotation

    .line 532
    .local p1, "sensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowedSensorIds(Ljava/util/List;)V

    .line 533
    return-object p0
.end method

.method public whitelist setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "requireConfirmation"    # Z

    .line 443
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setConfirmationRequested(Z)V

    .line 444
    return-object p0
.end method

.method public whitelist setContentView(Landroid/hardware/biometrics/PromptContentView;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "view"    # Landroid/hardware/biometrics/PromptContentView;

    .line 343
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setContentView(Landroid/hardware/biometrics/PromptContentView;)V

    .line 345
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 346
    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 347
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getButtonInfo()Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 350
    :cond_16
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 326
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 327
    return-object p0
.end method

.method public whitelist setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 469
    return-object p0
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "checkDevicePolicyManager"    # Z

    .line 582
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 583
    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "ignoreEnrollmentState"    # Z

    .line 609
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIgnoreEnrollmentState(Z)V

    .line 610
    return-object p0
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "sensorId"    # I

    .line 622
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIsForLegacyFingerprintManager(I)V

    .line 623
    return-object p0
.end method

.method public whitelist setLogoBitmap(Landroid/graphics/Bitmap;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .param p1, "logoBitmap"    # Landroid/graphics/Bitmap;

    .line 230
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v0

    if-nez v0, :cond_f

    .line 234
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    .line 235
    return-object p0

    .line 231
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogoDescription(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .param p1, "logoDescription"    # Ljava/lang/String;

    .line 253
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_17

    .line 257
    const-string v0, "BiometricPrompt"

    const-string v1, "Logo description passed in exceeds30 character number and may be truncated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_17
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogoDescription(Ljava/lang/String;)V

    .line 262
    return-object p0

    .line 254
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logo description passed in can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogoRes(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .param p1, "logoRes"    # I

    .line 205
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 209
    if-eqz p1, :cond_19

    .line 210
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    invoke-virtual {v0, p1, v1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    .line 213
    :cond_19
    return-object p0

    .line 206
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 410
    if-eqz p2, :cond_1f

    .line 413
    if-eqz p3, :cond_17

    .line 416
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 418
    return-object p0

    .line 414
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 4
    .param p1, "realCaller"    # Landroid/content/ComponentName;

    .line 652
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V

    .line 653
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 654
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V

    .line 655
    return-object p0
.end method

.method public blacklist setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "set"    # Z

    .line 595
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setReceiveSystemEvents(Z)V

    .line 596
    return-object p0
.end method

.method public blacklist setService(Landroid/hardware/biometrics/IAuthService;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 2
    .param p1, "service"    # Landroid/hardware/biometrics/IAuthService;

    .line 361
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 362
    return-object p0
.end method

.method public blacklist setShowEmergencyCallButton(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "showEmergencyCallButton"    # Z

    .line 636
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setShowEmergencyCallButton(Z)V

    .line 637
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 297
    return-object p0
.end method

.method public blacklist setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "subtitle"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .line 377
    if-eqz p1, :cond_7

    .line 378
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 380
    :cond_7
    if-eqz p2, :cond_e

    .line 381
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    .line 383
    :cond_e
    if-eqz p3, :cond_15

    .line 384
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialDescription(Ljava/lang/CharSequence;)V

    .line 386
    :cond_15
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 272
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    return-object p0
.end method

.method public blacklist setUseDefaultSubtitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 309
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultSubtitle(Z)V

    .line 310
    return-object p0
.end method

.method public blacklist setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 3

    .line 285
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultTitle(Z)V

    .line 286
    return-object p0
.end method
