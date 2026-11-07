.class public final Landroid/media/tv/StreamEventRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "StreamEventRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/StreamEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x5


# instance fields
.field private final blacklist mEventName:Ljava/lang/String;

.field private final blacklist mTargetUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/media/tv/StreamEventRequest$1;

    invoke-direct {v0}, Landroid/media/tv/StreamEventRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/StreamEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "targetUri"    # Landroid/net/Uri;
    .param p4, "eventName"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 55
    iput-object p3, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    .line 56
    iput-object p4, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 60
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Landroid/media/tv/StreamEventRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/StreamEventRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTargetUri()Landroid/net/Uri;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "uriString":Ljava/lang/String;
    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
