.class Landroid/ranging/ble/cs/BleCsRangingCapabilities$1;
.super Ljava/lang/Object;
.source "BleCsRangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/ble/cs/BleCsRangingCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/ranging/ble/cs/BleCsRangingCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/ranging/ble/cs/BleCsRangingCapabilities;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    new-instance v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities;-><init>(Landroid/os/Parcel;Landroid/ranging/ble/cs/BleCsRangingCapabilities-IA;)V

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

    .line 97
    invoke-virtual {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/ranging/ble/cs/BleCsRangingCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Landroid/ranging/ble/cs/BleCsRangingCapabilities;

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

    .line 97
    invoke-virtual {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities$1;->newArray(I)[Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    move-result-object p1

    return-object p1
.end method
