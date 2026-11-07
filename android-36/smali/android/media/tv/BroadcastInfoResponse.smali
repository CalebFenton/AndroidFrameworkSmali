.class public abstract Landroid/media/tv/BroadcastInfoResponse;
.super Ljava/lang/Object;
.source "BroadcastInfoResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoResponse$ResponseResult;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESPONSE_RESULT_CANCEL:I = 0x3

.field public static final whitelist RESPONSE_RESULT_ERROR:I = 0x1

.field public static final whitelist RESPONSE_RESULT_OK:I = 0x2


# instance fields
.field private final blacklist mRequestId:I

.field private final blacklist mResponseResult:I

.field private final blacklist mSequence:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/media/tv/BroadcastInfoResponse$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "sequence"    # I
    .param p4, "responseResult"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    .line 97
    iput p2, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    .line 98
    iput p3, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    .line 99
    iput p4, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    .line 100
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "source"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRequestId()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    return v0
.end method

.method public whitelist getResponseResult()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    return v0
.end method

.method public whitelist getSequence()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void
.end method
