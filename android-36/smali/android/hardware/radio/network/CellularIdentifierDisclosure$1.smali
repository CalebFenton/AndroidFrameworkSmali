.class Landroid/hardware/radio/network/CellularIdentifierDisclosure$1;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/CellularIdentifierDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/network/CellularIdentifierDisclosure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/network/CellularIdentifierDisclosure;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 31
    new-instance v0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellularIdentifierDisclosure;-><init>()V

    .line 32
    .local v0, "_aidl_out":Landroid/hardware/radio/network/CellularIdentifierDisclosure;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
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

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellularIdentifierDisclosure$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/network/CellularIdentifierDisclosure;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/network/CellularIdentifierDisclosure;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 37
    new-array v0, p1, [Landroid/hardware/radio/network/CellularIdentifierDisclosure;

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

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellularIdentifierDisclosure$1;->newArray(I)[Landroid/hardware/radio/network/CellularIdentifierDisclosure;

    move-result-object p1

    return-object p1
.end method
