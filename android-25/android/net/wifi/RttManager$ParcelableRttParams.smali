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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ParcelableRttParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 526
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    #@5
    .line 525
    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 478
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    #@0
    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 488
    if-nez p1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    new-array p1, v0, [Landroid/net/wifi/RttManager$RttParams;

    #@8
    .end local p1    # "params":[Landroid/net/wifi/RttManager$RttParams;
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@a
    .line 487
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 494
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
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 500
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@4
    array-length v1, v1

    #@5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 502
    iget-object v5, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@a
    array-length v6, v5

    #@b
    move v4, v3

    #@c
    :goto_0
    if-ge v4, v6, :cond_3

    #@e
    aget-object v0, v5, v4

    #@10
    .line 503
    .local v0, "params":Landroid/net/wifi/RttManager$RttParams;
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 504
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 505
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    move v1, v2

    #@1f
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@22
    .line 506
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 507
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    #@29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 508
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    #@2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 509
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    #@33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 510
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    #@38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 511
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 512
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    #@42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 513
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 514
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@4c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 515
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 516
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@56
    if-eqz v1, :cond_1

    #@58
    move v1, v2

    #@59
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 517
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@5e
    if-eqz v1, :cond_2

    #@60
    move v1, v2

    #@61
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 518
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 519
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@6b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 520
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 502
    add-int/lit8 v1, v4, 0x1

    #@75
    move v4, v1

    #@76
    goto :goto_0

    #@77
    :cond_0
    move v1, v3

    #@78
    .line 505
    goto :goto_1

    #@79
    :cond_1
    move v1, v3

    #@7a
    .line 516
    goto :goto_2

    #@7b
    :cond_2
    move v1, v3

    #@7c
    .line 517
    goto :goto_3

    #@7d
    .line 499
    .end local v0    # "params":Landroid/net/wifi/RttManager$RttParams;
    :cond_3
    return-void
.end method
