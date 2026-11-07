.class Landroid/os/ParcelUuid$1;
.super Ljava/lang/Object;
.source "ParcelUuid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelUuid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelUuid;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 119
    .local v0, "mostSigBits":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 120
    .local v2, "leastSigBits":J
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 121
    .local v4, "uuid":Ljava/util/UUID;
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v5
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

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ParcelUuid;
    .registers 3
    .param p1, "size"    # I

    .line 125
    new-array v0, p1, [Landroid/os/ParcelUuid;

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

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid$1;->newArray(I)[Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method
