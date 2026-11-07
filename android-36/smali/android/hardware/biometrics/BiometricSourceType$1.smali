.class Landroid/hardware/biometrics/BiometricSourceType$1;
.super Ljava/lang/Object;
.source "BiometricSourceType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricSourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/BiometricSourceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/BiometricSourceType;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricSourceType;->valueOf(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricSourceType$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/biometrics/BiometricSourceType;
    .registers 3
    .param p1, "size"    # I

    .line 48
    new-array v0, p1, [Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricSourceType$1;->newArray(I)[Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object p1

    return-object p1
.end method
