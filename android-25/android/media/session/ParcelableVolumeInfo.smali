.class public Landroid/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ParcelableVolumeInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioAttrs:Landroid/media/AudioAttributes;

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/session/ParcelableVolumeInfo$1;-><init>()V

    #@5
    .line 68
    sput-object v0, Landroid/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioAttributes;III)V
    .locals 0
    .param p1, "volumeType"    # I
    .param p2, "audioAttrs"    # Landroid/media/AudioAttributes;
    .param p3, "controlType"    # I
    .param p4, "maxVolume"    # I
    .param p5, "currentVolume"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput p1, p0, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    #@5
    .line 39
    iput-object p2, p0, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    #@7
    .line 40
    iput p3, p0, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    #@9
    .line 41
    iput p4, p0, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@b
    .line 42
    iput p5, p0, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@d
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "from"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    #@9
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    #@f
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@15
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@1b
    .line 50
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/media/AudioAttributes;

    #@23
    iput-object v0, p0, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    #@25
    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 55
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
    .line 60
    iget v0, p0, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 61
    iget v0, p0, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 62
    iget v0, p0, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 63
    iget v0, p0, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 64
    iget-object v0, p0, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    #@16
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 59
    return-void
.end method
