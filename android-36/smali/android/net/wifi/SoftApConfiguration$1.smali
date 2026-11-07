.class Landroid/net/wifi/SoftApConfiguration$1;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApConfiguration;
    .registers 33
    .param p1, "in"    # Landroid/os/Parcel;

    .line 736
    move-object/from16 v0, p1

    new-instance v1, Landroid/net/wifi/SoftApConfiguration;

    const-class v2, Landroid/net/wifi/WifiSsid;

    .line 737
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiSsid;

    const-class v3, Landroid/net/MacAddress;

    .line 738
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/MacAddress;

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 741
    invoke-static {v0}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smreadSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;

    move-result-object v6

    .line 742
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    sget-object v13, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 747
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    sget-object v14, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 748
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    move-object/from16 v22, v1

    sget-object v1, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 755
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    const-class v23, Landroid/net/MacAddress;

    .line 756
    move-object/from16 v24, v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/net/MacAddress;

    .line 757
    move-object/from16 v1, v22

    move-object/from16 v22, v24

    invoke-static {v0}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smreadHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v24

    .line 758
    invoke-static {v0}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smreadHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v25

    .line 759
    invoke-static {v0}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smreadHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v26

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 761
    invoke-static {v0}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smreadOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v28

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    const/16 v30, 0x0

    invoke-direct/range {v1 .. v30}, Landroid/net/wifi/SoftApConfiguration;-><init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;ZLandroid/net/wifi/SoftApConfiguration-IA;)V

    .line 736
    return-object v1
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

    .line 733
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/SoftApConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 767
    new-array v0, p1, [Landroid/net/wifi/SoftApConfiguration;

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

    .line 733
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApConfiguration$1;->newArray(I)[Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    return-object p1
.end method
