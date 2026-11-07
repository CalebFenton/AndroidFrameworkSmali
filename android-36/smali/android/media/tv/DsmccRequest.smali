.class public final Landroid/media/tv/DsmccRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "DsmccRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DsmccRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x6


# instance fields
.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/media/tv/DsmccRequest$1;

    invoke-direct {v0}, Landroid/media/tv/DsmccRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/DsmccRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/net/Uri;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .line 52
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 53
    iput-object p3, p0, Landroid/media/tv/DsmccRequest;->mUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 57
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Landroid/media/tv/DsmccRequest;->mUri:Landroid/net/Uri;

    .line 60
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Landroid/media/tv/DsmccRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/DsmccRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/tv/DsmccRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object v0, p0, Landroid/media/tv/DsmccRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/media/tv/DsmccRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "uriString":Ljava/lang/String;
    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
