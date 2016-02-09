.class final Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
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
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 599
    new-instance v1, Landroid/net/wifi/WifiInfo;

    #@4
    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    #@7
    .line 600
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@e
    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    #@15
    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    #@1c
    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    #@23
    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@26
    move-result v2

    #@27
    if-ne v2, v3, :cond_0

    #@29
    .line 606
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    if-ne v2, v3, :cond_1

    #@3a
    .line 610
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/net/wifi/WifiSsid;

    #@42
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set5(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    #@45
    .line 612
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    #@4c
    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    #@53
    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_2

    #@59
    move v2, v3

    #@5a
    :goto_1
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set3(Landroid/net/wifi/WifiInfo;Z)Z

    #@5d
    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    :goto_2
    invoke-static {v1, v3}, Landroid/net/wifi/WifiInfo;->-set1(Landroid/net/wifi/WifiInfo;Z)Z

    #@66
    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v2

    #@6a
    iput v2, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@6c
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@6f
    move-result-wide v2

    #@70
    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@72
    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@75
    move-result-wide v2

    #@76
    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@78
    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@7b
    move-result-wide v2

    #@7c
    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@7e
    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@81
    move-result-wide v2

    #@82
    iput-wide v2, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@84
    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v2

    #@88
    iput v2, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@8a
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v2

    #@8e
    iput v2, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@90
    .line 623
    sget-object v2, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@95
    move-result-object v2

    #@96
    check-cast v2, Landroid/net/wifi/SupplicantState;

    #@98
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set4(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    #@9b
    .line 624
    return-object v1

    #@9c
    :cond_2
    move v2, v4

    #@9d
    .line 614
    goto :goto_1

    #@9e
    :cond_3
    move v3, v4

    #@9f
    .line 615
    goto :goto_2

    #@a0
    .line 607
    :catch_0
    move-exception v0

    #@a1
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 598
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 628
    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 627
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
