.class Landroid/hardware/gnss/IAGnssRil$NetworkAttributes$1;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 490
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;-><init>()V

    .line 491
    .local v0, "_aidl_out":Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 492
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

    .line 487
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 496
    new-array v0, p1, [Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;

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

    .line 487
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRil$NetworkAttributes$1;->newArray(I)[Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;

    move-result-object p1

    return-object p1
.end method
