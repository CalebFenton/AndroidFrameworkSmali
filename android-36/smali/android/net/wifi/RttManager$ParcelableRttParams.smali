.class public Landroid/net/wifi/RttManager$ParcelableRttParams;
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
    name = "ParcelableRttParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 560
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .registers 3
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    if-nez p1, :cond_9

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/RttManager$RttParams;

    goto :goto_a

    :cond_9
    move-object v0, p1

    :goto_a
    iput-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    .line 524
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 535
    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_6b

    aget-object v3, v0, v2

    .line 538
    .local v3, "params":Landroid/net/wifi/RttManager$RttParams;
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 541
    iget-object v4, v3, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->interval:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    .end local v3    # "params":Landroid/net/wifi/RttManager$RttParams;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 557
    :cond_6b
    return-void
.end method
