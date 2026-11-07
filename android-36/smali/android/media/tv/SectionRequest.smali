.class public final Landroid/media/tv/SectionRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "SectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SectionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x3


# instance fields
.field private final blacklist mTableId:I

.field private final blacklist mTsPid:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/media/tv/SectionRequest$1;

    invoke-direct {v0}, Landroid/media/tv/SectionRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/SectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "tsPid"    # I
    .param p4, "tableId"    # I
    .param p5, "version"    # I

    .line 54
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 55
    iput p3, p0, Landroid/media/tv/SectionRequest;->mTsPid:I

    .line 56
    iput p4, p0, Landroid/media/tv/SectionRequest;->mTableId:I

    .line 57
    iput p5, p0, Landroid/media/tv/SectionRequest;->mVersion:I

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionRequest;->mTsPid:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionRequest;->mTableId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionRequest;->mVersion:I

    .line 65
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Landroid/media/tv/SectionRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/SectionRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTableId()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/media/tv/SectionRequest;->mTableId:I

    return v0
.end method

.method public whitelist getTsPid()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/media/tv/SectionRequest;->mTsPid:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/media/tv/SectionRequest;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget v0, p0, Landroid/media/tv/SectionRequest;->mTsPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/media/tv/SectionRequest;->mTableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/media/tv/SectionRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
