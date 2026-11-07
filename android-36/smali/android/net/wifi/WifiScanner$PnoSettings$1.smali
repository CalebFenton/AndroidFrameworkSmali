.class Landroid/net/wifi/WifiScanner$PnoSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1272
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 1273
    .local v0, "settings":Landroid/net/wifi/WifiScanner$PnoSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIterations:I

    .line 1278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->scanIntervalMultiplier:I

    .line 1279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1280
    .local v1, "numNetworks":I
    new-array v2, v1, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v2, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 1281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v1, :cond_5b

    .line 1282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, "ssid":Ljava/lang/String;
    new-instance v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-direct {v4, v3}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v4, "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1285
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 1286
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 1287
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aput-object v4, v5, v2

    .line 1281
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1289
    .end local v2    # "i":I
    :cond_5b
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

    .line 1270
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;
    .registers 3
    .param p1, "size"    # I

    .line 1293
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$PnoSettings;

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

    .line 1270
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p1

    return-object p1
.end method
