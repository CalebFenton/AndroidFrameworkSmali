.class public final Landroid/media/tv/StreamEventResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "StreamEventResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/StreamEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x5


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mEventId:I

.field private final blacklist mNptMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/media/tv/StreamEventResponse$1;

    invoke-direct {v0}, Landroid/media/tv/StreamEventResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/StreamEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIJ[B)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "eventId"    # I
    .param p5, "nptMillis"    # J
    .param p7, "data"    # [B

    .line 55
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 56
    iput p4, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    .line 57
    iput-wide p5, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    .line 58
    iput-object p7, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 62
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "dataLength":I
    if-lez v0, :cond_20

    .line 67
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    .line 68
    iget-object v1, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_23

    .line 70
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    .line 72
    :goto_23
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventResponse;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 50
    new-instance v0, Landroid/media/tv/StreamEventResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/StreamEventResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    return-object v0
.end method

.method public whitelist getEventId()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    return v0
.end method

.method public whitelist getNptMillis()J
    .registers 3

    .line 86
    iget-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_22

    .line 108
    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_26

    .line 111
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_26
    return-void
.end method
