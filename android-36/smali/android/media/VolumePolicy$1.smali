.class Landroid/media/VolumePolicy$1;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumePolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;
    .registers 8
    .param p1, "p"    # Landroid/os/Parcel;

    .line 119
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    .line 120
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    .line 121
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    .line 122
    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    .line 119
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

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumePolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/VolumePolicy;
    .registers 3
    .param p1, "size"    # I

    .line 127
    new-array v0, p1, [Landroid/media/VolumePolicy;

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

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/VolumePolicy$1;->newArray(I)[Landroid/media/VolumePolicy;

    move-result-object p1

    return-object p1
.end method
