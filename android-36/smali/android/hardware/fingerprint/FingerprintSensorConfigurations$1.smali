.class Landroid/hardware/fingerprint/FingerprintSensorConfigurations$1;
.super Ljava/lang/Object;
.source "FingerprintSensorConfigurations.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/fingerprint/FingerprintSensorConfigurations;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
    .registers 3
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$1;->newArray(I)[Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    move-result-object p1

    return-object p1
.end method
