.class final Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
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
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v2

    #@6
    .line 787
    .local v2, "num":I
    if-nez v2, :cond_0

    #@8
    .line 788
    new-instance v5, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@a
    const/4 v6, 0x0

    #@b
    invoke-direct {v5, v6}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    #@e
    return-object v5

    #@f
    .line 791
    :cond_0
    new-array v4, v2, [Landroid/net/wifi/RttManager$RttResult;

    #@11
    .line 792
    .local v4, "results":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    #@14
    .line 793
    new-instance v5, Landroid/net/wifi/RttManager$RttResult;

    #@16
    invoke-direct {v5}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    #@19
    aput-object v5, v4, v0

    #@1b
    .line 794
    aget-object v5, v4, v0

    #@1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    iput-object v7, v5, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    #@23
    .line 795
    aget-object v5, v4, v0

    #@25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v7

    #@29
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    #@2b
    .line 796
    aget-object v5, v4, v0

    #@2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v7

    #@31
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    #@33
    .line 797
    aget-object v5, v4, v0

    #@35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v7

    #@39
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    #@3b
    .line 798
    aget-object v5, v4, v0

    #@3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v7

    #@41
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    #@43
    .line 799
    aget-object v5, v4, v0

    #@45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v7

    #@49
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->status:I

    #@4b
    .line 800
    aget-object v5, v4, v0

    #@4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v7

    #@51
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    #@53
    .line 801
    aget-object v5, v4, v0

    #@55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v7

    #@59
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    #@5b
    .line 802
    aget-object v5, v4, v0

    #@5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@60
    move-result-wide v8

    #@61
    iput-wide v8, v5, Landroid/net/wifi/RttManager$RttResult;->ts:J

    #@63
    .line 803
    aget-object v5, v4, v0

    #@65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v7

    #@69
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    #@6b
    .line 804
    aget-object v5, v4, v0

    #@6d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v7

    #@71
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    #@73
    .line 805
    aget-object v5, v4, v0

    #@75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v7

    #@79
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    #@7b
    .line 806
    aget-object v5, v4, v0

    #@7d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@80
    move-result-wide v8

    #@81
    iput-wide v8, v5, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    #@83
    .line 807
    aget-object v5, v4, v0

    #@85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@88
    move-result-wide v8

    #@89
    iput-wide v8, v5, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    #@8b
    .line 808
    aget-object v5, v4, v0

    #@8d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@90
    move-result-wide v8

    #@91
    iput-wide v8, v5, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    #@93
    .line 809
    aget-object v5, v4, v0

    #@95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v7

    #@99
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->distance:I

    #@9b
    .line 810
    aget-object v5, v4, v0

    #@9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v7

    #@a1
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    #@a3
    .line 811
    aget-object v5, v4, v0

    #@a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v7

    #@a9
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    #@ab
    .line 812
    aget-object v5, v4, v0

    #@ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v7

    #@b1
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    #@b3
    .line 813
    aget-object v5, v4, v0

    #@b5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v7

    #@b9
    iput v7, v5, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    #@bb
    .line 814
    aget-object v5, v4, v0

    #@bd
    new-instance v7, Landroid/net/wifi/RttManager$WifiInformationElement;

    #@bf
    invoke-direct {v7}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    #@c2
    iput-object v7, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@c4
    .line 815
    aget-object v5, v4, v0

    #@c6
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@cb
    move-result v7

    #@cc
    iput-byte v7, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@ce
    .line 816
    aget-object v5, v4, v0

    #@d0
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@d2
    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@d4
    if-eq v5, v10, :cond_1

    #@d6
    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@d9
    move-result v1

    #@da
    .line 818
    .local v1, "length":B
    aget-object v5, v4, v0

    #@dc
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@de
    new-array v7, v1, [B

    #@e0
    iput-object v7, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@e2
    .line 819
    aget-object v5, v4, v0

    #@e4
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@e6
    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@e8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@eb
    .line 821
    .end local v1    # "length":B
    :cond_1
    aget-object v5, v4, v0

    #@ed
    new-instance v7, Landroid/net/wifi/RttManager$WifiInformationElement;

    #@ef
    invoke-direct {v7}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    #@f2
    iput-object v7, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@f4
    .line 822
    aget-object v5, v4, v0

    #@f6
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@fb
    move-result v7

    #@fc
    iput-byte v7, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@fe
    .line 823
    aget-object v5, v4, v0

    #@100
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@102
    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@104
    if-eq v5, v10, :cond_2

    #@106
    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@109
    move-result v1

    #@10a
    .line 825
    .restart local v1    # "length":B
    aget-object v5, v4, v0

    #@10c
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@10e
    new-array v7, v1, [B

    #@110
    iput-object v7, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@112
    .line 826
    aget-object v5, v4, v0

    #@114
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@116
    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@118
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@11b
    .line 828
    .end local v1    # "length":B
    :cond_2
    aget-object v7, v4, v0

    #@11d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@120
    move-result v5

    #@121
    if-eqz v5, :cond_3

    #@123
    const/4 v5, 0x1

    #@124
    :goto_1
    iput-boolean v5, v7, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    #@126
    .line 792
    add-int/lit8 v0, v0, 0x1

    #@128
    goto/16 :goto_0

    #@12a
    :cond_3
    move v5, v6

    #@12b
    .line 828
    goto :goto_1

    #@12c
    .line 831
    :cond_4
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@12e
    invoke-direct {v3, v4}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    #@131
    .line 832
    .local v3, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 783
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 837
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 836
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
