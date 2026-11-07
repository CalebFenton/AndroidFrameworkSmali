.class Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/nsd/NsdServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 681
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 682
    .local v0, "info":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmServiceName(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmServiceType(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V

    .line 684
    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setSubtypes(Ljava/util/Set;)V

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmPort(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_4c

    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, "valueArray":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 693
    .local v4, "valueLength":I
    new-array v3, v4, [B

    .line 694
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 696
    .end local v4    # "valueLength":I
    :cond_3e
    invoke-static {v0}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fgetmTxtRecord(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .end local v3    # "valueArray":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 698
    .end local v2    # "i":I
    :cond_4c
    const-class v2, Landroid/net/Network;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    invoke-static {v0, v2}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmNetwork(Landroid/net/nsd/NsdServiceInfo;Landroid/net/Network;)V

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmInterfaceIndex(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 701
    .local v2, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    if-ge v4, v2, :cond_74

    .line 702
    invoke-static {v0}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fgetmHostAddresses(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 704
    .end local v4    # "i":I
    :cond_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmHostname(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 706
    .local v4, "seconds":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_86

    goto :goto_8a

    :cond_86
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v3

    :goto_8a
    invoke-virtual {v0, v3}, Landroid/net/nsd/NsdServiceInfo;->setExpirationTime(Ljava/time/Instant;)V

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/nsd/NsdServiceInfo;->-$$Nest$fputmPublicKey(Landroid/net/nsd/NsdServiceInfo;[B)V

    .line 708
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

    .line 679
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 712
    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

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

    .line 679
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    move-result-object p1

    return-object p1
.end method
