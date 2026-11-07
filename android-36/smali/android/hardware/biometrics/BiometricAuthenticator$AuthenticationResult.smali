.class public Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mAuthenticationType:I

.field private greylist-max-o mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field private greylist-max-o mUserId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/biometrics/CryptoObject;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 5
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "authenticationType"    # I
    .param p3, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 159
    iput p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mAuthenticationType:I

    .line 160
    iput-object p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 161
    iput p4, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    .line 162
    return-void
.end method


# virtual methods
.method public blacklist getAuthenticationType()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mAuthenticationType:I

    return v0
.end method

.method public greylist-max-o getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public blacklist getId()Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return v0
.end method
