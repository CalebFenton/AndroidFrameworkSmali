.class public final Landroid/media/tv/TsRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x1


# instance fields
.field private final blacklist mTsPid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/media/tv/TsRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TsRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "tsPid"    # I

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 52
    iput p3, p0, Landroid/media/tv/TsRequest;->mTsPid:I

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TsRequest;->mTsPid:I

    .line 58
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Landroid/media/tv/TsRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TsRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTsPid()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/media/tv/TsRequest;->mTsPid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget v0, p0, Landroid/media/tv/TsRequest;->mTsPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
