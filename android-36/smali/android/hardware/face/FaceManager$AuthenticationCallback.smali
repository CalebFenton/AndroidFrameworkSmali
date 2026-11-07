.class public abstract Landroid/hardware/face/FaceManager$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1052
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationAcquired(I)V
    .registers 2
    .param p1, "acquireInfo"    # I

    .line 1097
    return-void
.end method

.method public blacklist onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 1063
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .registers 1

    .line 1088
    return-void
.end method

.method public blacklist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 1074
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .registers 2
    .param p1, "result"    # Landroid/hardware/face/FaceManager$AuthenticationResult;

    .line 1082
    return-void
.end method
