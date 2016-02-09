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
    .line 744
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    #@5
    .line 743
    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 688
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 693
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@5
    .line 692
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 703
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 704
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@8
    array-length v2, v2

    #@9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 705
    iget-object v2, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@e
    array-length v3, v2

    #@f
    :goto_0
    if-ge v1, v3, :cond_3

    #@11
    aget-object v0, v2, v1

    #@13
    .line 706
    .local v0, "result":Landroid/net/wifi/RttManager$RttResult;
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 707
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    #@1a
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 708
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    #@1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 709
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    #@24
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 710
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    #@29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 711
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    #@2e
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 712
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    #@33
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 713
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    #@38
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 714
    iget-wide v4, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    #@3d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@40
    .line 715
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    #@42
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 716
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    #@47
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 717
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    #@4c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 718
    iget-wide v4, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    #@51
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@54
    .line 719
    iget-wide v4, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    #@56
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@59
    .line 720
    iget-wide v4, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    #@5b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@5e
    .line 721
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    #@60
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 722
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    #@65
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 723
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    #@6a
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 724
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    #@6f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 725
    iget v4, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    #@74
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 726
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@79
    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@7b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@7e
    .line 727
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@80
    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@82
    if-eq v4, v6, :cond_0

    #@84
    .line 728
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@86
    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@88
    array-length v4, v4

    #@89
    int-to-byte v4, v4

    #@8a
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@8d
    .line 729
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@8f
    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@91
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    #@94
    .line 731
    :cond_0
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@96
    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@98
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@9b
    .line 732
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@9d
    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@9f
    if-eq v4, v6, :cond_1

    #@a1
    .line 733
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@a3
    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    #@a5
    array-length v4, v4

    #@a6
    int-to-byte v4, v4

    #@a7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 734
    iget-object v4, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    #@ac
    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    #@ae
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    #@b1
    .line 705
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@b3
    goto/16 :goto_0

    #@b5
    .line 738
    .end local v0    # "result":Landroid/net/wifi/RttManager$RttResult;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b8
    .line 702
    :cond_3
    return-void
.end method
