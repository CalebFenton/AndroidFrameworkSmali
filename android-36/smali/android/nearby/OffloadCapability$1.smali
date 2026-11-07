.class Landroid/nearby/OffloadCapability$1;
.super Ljava/lang/Object;
.source "OffloadCapability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/OffloadCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/OffloadCapability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/OffloadCapability;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 67
    .local v0, "isFastPairSupported":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 68
    .local v1, "isNearbyShareSupported":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    .local v2, "version":J
    new-instance v4, Landroid/nearby/OffloadCapability$Builder;

    invoke-direct {v4}, Landroid/nearby/OffloadCapability$Builder;-><init>()V

    .line 70
    invoke-virtual {v4, v0}, Landroid/nearby/OffloadCapability$Builder;->setFastPairSupported(Z)Landroid/nearby/OffloadCapability$Builder;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v1}, Landroid/nearby/OffloadCapability$Builder;->setNearbyShareSupported(Z)Landroid/nearby/OffloadCapability$Builder;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v2, v3}, Landroid/nearby/OffloadCapability$Builder;->setVersion(J)Landroid/nearby/OffloadCapability$Builder;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Landroid/nearby/OffloadCapability$Builder;->build()Landroid/nearby/OffloadCapability;

    move-result-object v4

    .line 69
    return-object v4
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

    .line 63
    invoke-virtual {p0, p1}, Landroid/nearby/OffloadCapability$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/OffloadCapability;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/OffloadCapability;
    .registers 3
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Landroid/nearby/OffloadCapability;

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

    .line 63
    invoke-virtual {p0, p1}, Landroid/nearby/OffloadCapability$1;->newArray(I)[Landroid/nearby/OffloadCapability;

    move-result-object p1

    return-object p1
.end method
