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
    .line 495
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    #@5
    .line 494
    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 451
    return-void
.end method

.method constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 0
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    #@0
    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 456
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@5
    .line 455
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 461
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
    .line 466
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 467
    iget-object v1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@8
    array-length v1, v1

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 469
    iget-object v5, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@e
    array-length v6, v5

    #@f
    move v4, v3

    #@10
    :goto_0
    if-ge v4, v6, :cond_3

    #@12
    aget-object v0, v5, v4

    #@14
    .line 470
    .local v0, "params":Landroid/net/wifi/RttManager$RttParams;
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 471
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 472
    iget-object v1, v0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 473
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    #@25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 474
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    #@2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 475
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    #@2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 476
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    #@34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 477
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 478
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    #@3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 479
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 480
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 481
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@4d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 482
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@52
    if-eqz v1, :cond_0

    #@54
    move v1, v2

    #@55
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 483
    iget-boolean v1, v0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@5a
    if-eqz v1, :cond_1

    #@5c
    move v1, v2

    #@5d
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 484
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 485
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 486
    iget v1, v0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@6c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 469
    add-int/lit8 v1, v4, 0x1

    #@71
    move v4, v1

    #@72
    goto :goto_0

    #@73
    :cond_0
    move v1, v3

    #@74
    .line 482
    goto :goto_1

    #@75
    :cond_1
    move v1, v3

    #@76
    .line 483
    goto :goto_2

    #@77
    .line 489
    .end local v0    # "params":Landroid/net/wifi/RttManager$RttParams;
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 465
    :cond_3
    return-void
.end method
