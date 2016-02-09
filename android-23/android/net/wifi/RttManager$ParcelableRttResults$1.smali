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
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 749
    .local v2, "num":I
    if-nez v2, :cond_0

    #@7
    .line 750
    new-instance v5, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@9
    const/4 v6, 0x0

    #@a
    invoke-direct {v5, v6}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    #@d
    return-object v5

    #@e
    .line 753
    :cond_0
    new-array v4, v2, [Landroid/net/wifi/RttManager$RttResult;

    #@10
    .line 754
    .local v4, "results":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@13
    .line 755
    new-instance v5, Landroid/net/wifi/RttManager$RttResult;

    #@15
    invoke-direct {v5}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    #@18
    aput-object v5, v4, v0

    #@1a
    .line 756
    aget-object v5, v4, v0

    #@1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    #@22
    .line 757
    aget-object v5, v4, v0

    #@24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v6

    #@28
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    #@2a
    .line 758
    aget-object v5, v4, v0

    #@2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v6

    #@30
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    #@32
    .line 759
    aget-object v5, v4, v0

    #@34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    #@3a
    .line 760
    aget-object v5, v4, v0

    #@3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v6

    #@40
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    #@42
    .line 761
    aget-object v5, v4, v0

    #@44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v6

    #@48
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->status:I

    #@4a
    .line 762
    aget-object v5, v4, v0

    #@4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v6

    #@50
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    #@52
    .line 763
    aget-object v5, v4, v0

    #@54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v6

    #@58
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    #@5a
    .line 764
    aget-object v5, v4, v0

    #@5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5f
    move-result-wide v6

    #@60
    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->ts:J

    #@62
    .line 765
    aget-object v5, v4, v0

    #@64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v6

    #@68
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    #@6a
    .line 766
    aget-object v5, v4, v0

    #@6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v6

    #@70
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    #@72
    .line 767
    aget-object v5, v4, v0

    #@74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v6

    #@78
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    #@7a
    .line 768
    aget-object v5, v4, v0

    #@7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@7f
    move-result-wide v6

    #@80
    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    #@82
    .line 769
    aget-object v5, v4, v0

    #@84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@87
    move-result-wide v6

    #@88
    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    #@8a
    .line 770
    aget-object v5, v4, v0

    #@8c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@8f
    move-result-wide v6

    #@90
    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    #@92
    .line 771
    aget-object v5, v4, v0

    #@94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v6

    #@98
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distance:I

    #@9a
    .line 772
    aget-object v5, v4, v0

    #@9c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v6

    #@a0
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    #@a2
    .line 773
    aget-object v5, v4, v0

    #@a4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v6

    #@a8
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    #@aa
    .line 774
    aget-object v5, v4, v0

    #@ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v6

    #@b0
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    #@b2
    .line 775
    aget-object v5, v4, v0

    #@b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v6

    #@b8
    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    #@ba
    .line 776
    aget-object v5, v4, v0

    #@bc
    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    #@be
    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    #@c1
    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@c3
    .line 777
    aget-object v5, v4, v0

    #@c5
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@ca
    move-result v6

    #@cb
    iput-byte v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@cd
    .line 778
    aget-object v5, v4, v0

    #@cf
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@d1
    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@d3
    if-eq v5, v8, :cond_1

    #@d5
    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@d8
    move-result v1

    #@d9
    .line 780
    .local v1, "length":B
    aget-object v5, v4, v0

    #@db
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@dd
    new-array v6, v1, [B

    #@df
    iput-object v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@e1
    .line 781
    aget-object v5, v4, v0

    #@e3
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@e5
    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@e7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@ea
    .line 783
    .end local v1    # "length":B
    :cond_1
    aget-object v5, v4, v0

    #@ec
    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    #@ee
    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    #@f1
    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@f3
    .line 784
    aget-object v5, v4, v0

    #@f5
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@f7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@fa
    move-result v6

    #@fb
    iput-byte v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@fd
    .line 785
    aget-object v5, v4, v0

    #@ff
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@101
    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@103
    if-eq v5, v8, :cond_2

    #@105
    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@108
    move-result v1

    #@109
    .line 787
    .restart local v1    # "length":B
    aget-object v5, v4, v0

    #@10b
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@10d
    new-array v6, v1, [B

    #@10f
    iput-object v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@111
    .line 788
    aget-object v5, v4, v0

    #@113
    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@115
    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@117
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@11a
    .line 754
    .end local v1    # "length":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@11c
    goto/16 :goto_0

    #@11e
    .line 792
    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@120
    invoke-direct {v3, v4}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    #@123
    .line 793
    .local v3, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 745
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
    .line 797
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 796
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
