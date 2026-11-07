.class public final Landroid/media/tv/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESPONSE_TYPE_BUFFERING:I = 0x5

.field public static final whitelist RESPONSE_TYPE_ERROR:I = 0x4

.field public static final whitelist RESPONSE_TYPE_FINISHED:I = 0x2

.field public static final whitelist RESPONSE_TYPE_PLAYING:I = 0x1

.field public static final whitelist RESPONSE_TYPE_STOPPED:I = 0x3


# instance fields
.field private final blacklist mElapsedTime:J

.field private final blacklist mId:I

.field private final blacklist mResponseType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/media/tv/AdResponse$1;

    invoke-direct {v0}, Landroid/media/tv/AdResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIJ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "responseType"    # I
    .param p3, "elapsedTime"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/media/tv/AdResponse;->mId:I

    .line 67
    iput p2, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    .line 68
    iput-wide p3, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/AdResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getElapsedTimeMillis()J
    .registers 3

    .line 98
    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    return-wide v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    return v0
.end method

.method public whitelist getResponseType()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    return-void
.end method
