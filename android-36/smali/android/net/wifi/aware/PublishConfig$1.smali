.class Landroid/net/wifi/aware/PublishConfig$1;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/PublishConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/PublishConfig;
    .registers 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 198
    .local v2, "serviceName":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 199
    .local v3, "ssi":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 200
    .local v4, "matchFilter":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    .local v5, "publishType":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    .local v6, "ttlSec":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_20

    move v1, v7

    goto :goto_21

    :cond_20
    move v1, v8

    .line 203
    .local v1, "enableTerminateNotification":Z
    :goto_21
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28

    move v8, v7

    .line 204
    .local v8, "enableRanging":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 205
    .local v9, "enableInstantMode":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 206
    .local v10, "band":I
    const-class v7, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 207
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 208
    .local v11, "securityConfig":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    const-class v7, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 209
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 210
    .local v12, "pairingConfig":Landroid/net/wifi/aware/AwarePairingConfig;
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 211
    .local v13, "isSuspendable":Z
    invoke-static {v0}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v14

    .line 212
    .local v14, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 214
    .local v15, "enablePeriodicRangingResults":Z
    move v7, v1

    .end local v1    # "enableTerminateNotification":Z
    .local v7, "enableTerminateNotification":Z
    new-instance v1, Landroid/net/wifi/aware/PublishConfig;

    invoke-direct/range {v1 .. v15}, Landroid/net/wifi/aware/PublishConfig;-><init>([B[B[BIIZZZILandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;Landroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;Z)V

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

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/PublishConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/PublishConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/PublishConfig;
    .registers 3
    .param p1, "size"    # I

    .line 192
    new-array v0, p1, [Landroid/net/wifi/aware/PublishConfig;

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

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/PublishConfig$1;->newArray(I)[Landroid/net/wifi/aware/PublishConfig;

    move-result-object p1

    return-object p1
.end method
