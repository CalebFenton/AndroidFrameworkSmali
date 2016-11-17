.class final Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
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
        "Landroid/location/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 852
    new-instance v0, Landroid/location/GnssMeasurement;

    #@2
    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    #@5
    .line 854
    .local v0, "gnssMeasurement":Landroid/location/GnssMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set9(Landroid/location/GnssMeasurement;I)I

    #@c
    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set17(Landroid/location/GnssMeasurement;I)I

    #@13
    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set8(Landroid/location/GnssMeasurement;I)I

    #@1a
    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@1d
    move-result-wide v2

    #@1e
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set18(Landroid/location/GnssMeasurement;D)D

    #@21
    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set16(Landroid/location/GnssMeasurement;I)I

    #@28
    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v2

    #@2c
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set13(Landroid/location/GnssMeasurement;J)J

    #@2f
    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@32
    move-result-wide v2

    #@33
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set14(Landroid/location/GnssMeasurement;J)J

    #@36
    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@39
    move-result-wide v2

    #@3a
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set7(Landroid/location/GnssMeasurement;D)D

    #@3d
    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@40
    move-result-wide v2

    #@41
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set11(Landroid/location/GnssMeasurement;D)D

    #@44
    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@47
    move-result-wide v2

    #@48
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set12(Landroid/location/GnssMeasurement;D)D

    #@4b
    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v1

    #@4f
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set1(Landroid/location/GnssMeasurement;I)I

    #@52
    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@55
    move-result-wide v2

    #@56
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set0(Landroid/location/GnssMeasurement;D)D

    #@59
    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@5c
    move-result-wide v2

    #@5d
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set2(Landroid/location/GnssMeasurement;D)D

    #@60
    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@63
    move-result v1

    #@64
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set4(Landroid/location/GnssMeasurement;F)F

    #@67
    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6a
    move-result-wide v2

    #@6b
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set3(Landroid/location/GnssMeasurement;J)J

    #@6e
    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@71
    move-result-wide v2

    #@72
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set5(Landroid/location/GnssMeasurement;D)D

    #@75
    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@78
    move-result-wide v2

    #@79
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set6(Landroid/location/GnssMeasurement;D)D

    #@7c
    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v1

    #@80
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set10(Landroid/location/GnssMeasurement;I)I

    #@83
    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@86
    move-result-wide v2

    #@87
    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set15(Landroid/location/GnssMeasurement;D)D

    #@8a
    .line 874
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssMeasurement;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 879
    new-array v0, p1, [Landroid/location/GnssMeasurement;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 878
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
