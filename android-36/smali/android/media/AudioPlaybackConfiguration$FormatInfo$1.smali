.class Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration$FormatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioPlaybackConfiguration$FormatInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPlaybackConfiguration$FormatInfo;
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1060
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo;-><init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1058
    invoke-virtual {p0, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/AudioPlaybackConfiguration$FormatInfo;
    .registers 3
    .param p1, "size"    # I

    .line 1063
    new-array v0, p1, [Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1058
    invoke-virtual {p0, p1}, Landroid/media/AudioPlaybackConfiguration$FormatInfo$1;->newArray(I)[Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    move-result-object p1

    return-object p1
.end method
