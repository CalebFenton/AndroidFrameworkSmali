.class public Landroid/hardware/biometrics/BiometricManager$Strings;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strings"
.end annotation


# instance fields
.field blacklist mAuthenticators:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/biometrics/IAuthService;
    .param p3, "authenticators"    # I

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    .line 295
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    .line 296
    iput p3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    .line 297
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;ILandroid/hardware/biometrics/BiometricManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager$Strings;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;I)V

    return-void
.end method


# virtual methods
.method public whitelist getButtonLabel()Ljava/lang/CharSequence;
    .registers 5

    .line 324
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 325
    .local v0, "userId":I
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "opPackageName":Ljava/lang/String;
    :try_start_c
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    return-object v2

    .line 328
    :catch_15
    move-exception v2

    .line 329
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getPromptMessage()Ljava/lang/CharSequence;
    .registers 5

    .line 358
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 359
    .local v0, "userId":I
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "opPackageName":Ljava/lang/String;
    :try_start_c
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    return-object v2

    .line 362
    :catch_15
    move-exception v2

    .line 363
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getSettingName()Ljava/lang/CharSequence;
    .registers 5

    .line 394
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 395
    .local v0, "userId":I
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "opPackageName":Ljava/lang/String;
    :try_start_c
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    return-object v2

    .line 398
    :catch_15
    move-exception v2

    .line 399
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
