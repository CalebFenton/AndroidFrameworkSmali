.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 873
    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    #@8
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@b
    .line 874
    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@e
    move-result-wide v6

    #@f
    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set13(Landroid/location/Location;J)J

    #@12
    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v6

    #@16
    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set3(Landroid/location/Location;J)J

    #@19
    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@1c
    move-result-wide v6

    #@1d
    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set10(Landroid/location/Location;D)D

    #@20
    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@23
    move-result-wide v6

    #@24
    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set11(Landroid/location/Location;D)D

    #@27
    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_0

    #@2d
    move v2, v3

    #@2e
    :goto_0
    invoke-static {v0, v2}, Landroid/location/Location;->-set6(Landroid/location/Location;Z)Z

    #@31
    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@34
    move-result-wide v6

    #@35
    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set1(Landroid/location/Location;D)D

    #@38
    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_1

    #@3e
    move v2, v3

    #@3f
    :goto_1
    invoke-static {v0, v2}, Landroid/location/Location;->-set8(Landroid/location/Location;Z)Z

    #@42
    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@45
    move-result v2

    #@46
    invoke-static {v0, v2}, Landroid/location/Location;->-set12(Landroid/location/Location;F)F

    #@49
    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_2

    #@4f
    move v2, v3

    #@50
    :goto_2
    invoke-static {v0, v2}, Landroid/location/Location;->-set7(Landroid/location/Location;Z)Z

    #@53
    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@56
    move-result v2

    #@57
    invoke-static {v0, v2}, Landroid/location/Location;->-set2(Landroid/location/Location;F)F

    #@5a
    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_3

    #@60
    move v2, v3

    #@61
    :goto_3
    invoke-static {v0, v2}, Landroid/location/Location;->-set5(Landroid/location/Location;Z)Z

    #@64
    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@67
    move-result v2

    #@68
    invoke-static {v0, v2}, Landroid/location/Location;->-set0(Landroid/location/Location;F)F

    #@6b
    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v0, v2}, Landroid/location/Location;->-set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@72
    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_4

    #@78
    :goto_4
    invoke-static {v0, v3}, Landroid/location/Location;->-set9(Landroid/location/Location;Z)Z

    #@7b
    .line 888
    return-object v0

    #@7c
    :cond_0
    move v2, v4

    #@7d
    .line 878
    goto :goto_0

    #@7e
    :cond_1
    move v2, v4

    #@7f
    .line 880
    goto :goto_1

    #@80
    :cond_2
    move v2, v4

    #@81
    .line 882
    goto :goto_2

    #@82
    :cond_3
    move v2, v4

    #@83
    .line 884
    goto :goto_3

    #@84
    :cond_4
    move v3, v4

    #@85
    .line 887
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 871
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 893
    new-array v0, p1, [Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 892
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
