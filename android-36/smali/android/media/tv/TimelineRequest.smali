.class public final Landroid/media/tv/TimelineRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TimelineRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x8


# instance fields
.field private final blacklist mIntervalMillis:I

.field private final blacklist mSelector:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/media/tv/TimelineRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "intervalMillis"    # I

    .line 53
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 54
    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "intervalMillis"    # I
    .param p4, "selector"    # Ljava/lang/String;

    .line 60
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 61
    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    .line 62
    iput-object p4, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    .line 63
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 66
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Landroid/media/tv/TimelineRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntervalMillis()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return v0
.end method

.method public whitelist getSelector()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/media/tv/TimelineRequest;->mSelector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
