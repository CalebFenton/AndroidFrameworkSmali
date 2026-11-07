.class public final Landroid/media/tv/SectionResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "SectionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SectionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x3


# instance fields
.field private final blacklist mSessionData:Landroid/os/Bundle;

.field private final blacklist mSessionId:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/media/tv/SectionResponse$1;

    invoke-direct {v0}, Landroid/media/tv/SectionResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/SectionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIILandroid/os/Bundle;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "sessionId"    # I
    .param p5, "version"    # I
    .param p6, "sessionData"    # Landroid/os/Bundle;

    .line 56
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 57
    iput p4, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    .line 58
    iput p5, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    .line 59
    iput-object p6, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionResponse;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 51
    new-instance v0, Landroid/media/tv/SectionResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/SectionResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionData()Landroid/os/Bundle;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method
