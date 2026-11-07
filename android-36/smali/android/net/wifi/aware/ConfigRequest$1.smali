.class Landroid/net/wifi/aware/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    move v4, v0

    .line 179
    .local v4, "support5gBand":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v5, v1

    goto :goto_15

    :cond_14
    move v5, v2

    .line 180
    .local v5, "support6gBand":Z
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 181
    .local v6, "masterPreference":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 182
    .local v7, "clusterLow":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 183
    .local v8, "clusterHigh":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 184
    .local v9, "discoveryWindowInterval":[I
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v10

    .line 186
    .local v10, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    new-instance v3, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZZIII[ILjava/util/List;Landroid/net/wifi/aware/ConfigRequest-IA;)V

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/ConfigRequest;
    .registers 3
    .param p1, "size"    # I

    .line 173
    new-array v0, p1, [Landroid/net/wifi/aware/ConfigRequest;

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p1

    return-object p1
.end method
