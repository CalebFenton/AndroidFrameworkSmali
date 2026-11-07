.class public abstract Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Identifier"
.end annotation


# instance fields
.field private blacklist mBiometricId:I

.field private blacklist mDeviceId:J

.field private blacklist mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IJ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "biometricId"    # I
    .param p3, "deviceId"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    .line 94
    iput p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    .line 95
    iput-wide p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist getBiometricId()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mBiometricId:I

    return v0
.end method

.method public blacklist getDeviceId()J
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist setDeviceId(J)V
    .registers 3
    .param p1, "deviceId"    # J

    .line 126
    iput-wide p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mDeviceId:J

    .line 127
    return-void
.end method

.method public blacklist setName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 122
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->mName:Ljava/lang/CharSequence;

    .line 123
    return-void
.end method
