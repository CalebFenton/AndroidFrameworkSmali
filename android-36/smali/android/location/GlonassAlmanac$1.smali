.class Landroid/location/GlonassAlmanac$1;
.super Ljava/lang/Object;
.source "GlonassAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassAlmanac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAlmanac;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 95
    .local v0, "issueDateMillis":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "satelliteAlmanacs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;>;"
    sget-object v3, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 97
    new-instance v3, Landroid/location/GlonassAlmanac;

    invoke-direct {v3, v0, v1, v2}, Landroid/location/GlonassAlmanac;-><init>(JLjava/util/List;)V

    return-object v3
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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GlonassAlmanac$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAlmanac;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassAlmanac;
    .registers 3
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Landroid/location/GlonassAlmanac;

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

    .line 91
    invoke-virtual {p0, p1}, Landroid/location/GlonassAlmanac$1;->newArray(I)[Landroid/location/GlonassAlmanac;

    move-result-object p1

    return-object p1
.end method
