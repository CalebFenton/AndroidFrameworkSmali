.class final Landroid/net/wifi/WifiScanner$PnoSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
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
        "Landroid/net/wifi/WifiScanner$PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 613
    new-instance v3, Landroid/net/wifi/WifiScanner$PnoSettings;

    #@3
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    #@6
    .line 614
    .local v3, "settings":Landroid/net/wifi/WifiScanner$PnoSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v6

    #@a
    if-ne v6, v5, :cond_0

    #@c
    :goto_0
    iput-boolean v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    #@e
    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v5

    #@12
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    #@14
    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v5

    #@18
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    #@1a
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    #@20
    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v5

    #@24
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    #@26
    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v5

    #@2a
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    #@2c
    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v5

    #@30
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    #@32
    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v5

    #@36
    iput v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    #@38
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v2

    #@3c
    .line 623
    .local v2, "numNetworks":I
    new-array v5, v2, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@3e
    iput-object v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@40
    .line 624
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@43
    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 626
    .local v4, "ssid":Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@49
    invoke-direct {v1, v4}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    #@4c
    .line 627
    .local v1, "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v5

    #@50
    iput v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->networkId:I

    #@52
    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v5

    #@56
    iput v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->priority:I

    #@58
    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@5b
    move-result v5

    #@5c
    iput-byte v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@5e
    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@61
    move-result v5

    #@62
    iput-byte v5, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@64
    .line 631
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@66
    aput-object v1, v5, v0

    #@68
    .line 624
    add-int/lit8 v0, v0, 0x1

    #@6a
    goto :goto_1

    #@6b
    .line 614
    .end local v0    # "i":I
    .end local v1    # "network":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .end local v2    # "numNetworks":I
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    #@6c
    goto :goto_0

    #@6d
    .line 633
    .restart local v0    # "i":I
    .restart local v2    # "numNetworks":I
    :cond_1
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 612
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 637
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$PnoSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 636
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
