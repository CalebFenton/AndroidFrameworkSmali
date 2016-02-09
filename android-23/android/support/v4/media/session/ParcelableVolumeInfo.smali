.class public Landroid/support/v4/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/ParcelableVolumeInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioStream:I

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;-><init>()V

    #@5
    .line 65
    sput-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "volumeType"    # I
    .param p2, "audioStream"    # I
    .param p3, "controlType"    # I
    .param p4, "maxVolume"    # I
    .param p5, "currentVolume"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput p1, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    #@5
    .line 36
    iput p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    #@7
    .line 37
    iput p3, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    #@9
    .line 38
    iput p4, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@b
    .line 39
    iput p5, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@d
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "from"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    #@9
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    #@f
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@15
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@1b
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    #@21
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 58
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 59
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 60
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 61
    iget v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 56
    return-void
.end method
