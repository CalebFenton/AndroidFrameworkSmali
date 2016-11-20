.class final Landroid/location/Location$2;
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
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 884
    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    #@6
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@9
    .line 885
    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v2

    #@d
    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set9(Landroid/location/Location;J)J

    #@10
    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@13
    move-result-wide v2

    #@14
    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set3(Landroid/location/Location;J)J

    #@17
    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1a
    move-result v2

    #@1b
    invoke-static {v0, v2}, Landroid/location/Location;->-set5(Landroid/location/Location;B)B

    #@1e
    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@21
    move-result-wide v2

    #@22
    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set6(Landroid/location/Location;D)D

    #@25
    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@28
    move-result-wide v2

    #@29
    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set7(Landroid/location/Location;D)D

    #@2c
    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@2f
    move-result-wide v2

    #@30
    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set1(Landroid/location/Location;D)D

    #@33
    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@36
    move-result v2

    #@37
    invoke-static {v0, v2}, Landroid/location/Location;->-set8(Landroid/location/Location;F)F

    #@3a
    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3d
    move-result v2

    #@3e
    invoke-static {v0, v2}, Landroid/location/Location;->-set2(Landroid/location/Location;F)F

    #@41
    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@44
    move-result v2

    #@45
    invoke-static {v0, v2}, Landroid/location/Location;->-set0(Landroid/location/Location;F)F

    #@48
    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@4b
    move-result-object v2

    #@4c
    const/4 v3, 0x1

    #@4d
    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@50
    move-result-object v2

    #@51
    invoke-static {v0, v2}, Landroid/location/Location;->-set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@54
    .line 895
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 882
    invoke-virtual {p0, p1}, Landroid/location/Location$2;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

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
    .line 900
    new-array v0, p1, [Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/location/Location$2;->newArray(I)[Landroid/location/Location;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
