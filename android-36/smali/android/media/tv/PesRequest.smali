.class public final Landroid/media/tv/PesRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "PesRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/PesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x4


# instance fields
.field private final blacklist mStreamId:I

.field private final blacklist mTsPid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/media/tv/PesRequest$1;

    invoke-direct {v0}, Landroid/media/tv/PesRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/PesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "tsPid"    # I
    .param p4, "streamId"    # I

    .line 52
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 53
    iput p3, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    .line 54
    iput p4, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    .line 61
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Landroid/media/tv/PesRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/PesRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStreamId()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return v0
.end method

.method public whitelist getTsPid()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
