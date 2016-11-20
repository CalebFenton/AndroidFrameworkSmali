.class public Landroid/net/wifi/RttManager$ParcelableRttResults;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ParcelableRttResults$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/RttManager$RttResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 781
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    #@5
    .line 780
    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 722
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 727
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@5
    .line 726
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 733
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 739
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@4
    if-eqz v1, :cond_3

    #@6
    .line 740
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@8
    array-length v1, v1

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 741
    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@e
    array-length v5, v4

    #@f
    move v3, v2

    #@10
    :goto_0
    if-ge v3, v5, :cond_4

    #@12
    aget-object v0, v4, v3

    #@14
    .line 742
    .local v0, "result":Landroid/net/wifi/RttManager$RttResult;
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 743
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 744
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    #@20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 745
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    #@25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 746
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    #@2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 747
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    #@2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 748
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    #@34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 749
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    #@39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 750
    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    #@3e
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@41
    .line 751
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    #@43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 752
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    #@48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 753
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    #@4d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 754
    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    #@52
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@55
    .line 755
    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    #@57
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@5a
    .line 756
    iget-wide v6, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    #@5c
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@5f
    .line 757
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    #@61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 758
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    #@66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 759
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    #@6b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 760
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    #@70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 761
    iget v1, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    #@75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@78
    .line 762
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@7a
    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@7f
    .line 763
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@81
    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@83
    if-eq v1, v8, :cond_0

    #@85
    .line 764
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@87
    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@89
    array-length v1, v1

    #@8a
    int-to-byte v1, v1

    #@8b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@8e
    .line 765
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@90
    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@92
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@95
    .line 767
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@97
    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@99
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@9c
    .line 768
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@9e
    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@a0
    if-eq v1, v8, :cond_1

    #@a2
    .line 769
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@a4
    iget-object v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@a6
    array-length v1, v1

    #@a7
    int-to-byte v1, v1

    #@a8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ab
    .line 770
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@ad
    iget-byte v1, v1, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@af
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@b2
    .line 772
    :cond_1
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    #@b4
    if-eqz v1, :cond_2

    #@b6
    const/4 v1, 0x1

    #@b7
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@ba
    .line 741
    add-int/lit8 v1, v3, 0x1

    #@bc
    move v3, v1

    #@bd
    goto/16 :goto_0

    #@bf
    :cond_2
    move v1, v2

    #@c0
    .line 772
    goto :goto_1

    #@c1
    .line 775
    .end local v0    # "result":Landroid/net/wifi/RttManager$RttResult;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c4
    .line 738
    :cond_4
    return-void
.end method
