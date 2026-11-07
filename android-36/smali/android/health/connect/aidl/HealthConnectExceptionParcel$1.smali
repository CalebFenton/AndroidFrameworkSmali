.class Landroid/health/connect/aidl/HealthConnectExceptionParcel$1;
.super Ljava/lang/Object;
.source "HealthConnectExceptionParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/HealthConnectExceptionParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/health/connect/aidl/HealthConnectExceptionParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    new-instance v0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    new-instance v1, Landroid/health/connect/HealthConnectException;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    .line 35
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

    .line 32
    invoke-virtual {p0, p1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    .registers 3
    .param p1, "size"    # I

    .line 41
    new-array v0, p1, [Landroid/health/connect/aidl/HealthConnectExceptionParcel;

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

    .line 32
    invoke-virtual {p0, p1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel$1;->newArray(I)[Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    move-result-object p1

    return-object p1
.end method
