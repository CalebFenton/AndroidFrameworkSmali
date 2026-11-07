.class Landroid/media/TranscodingVideoTrackFormat$1;
.super Ljava/lang/Object;
.source "TranscodingVideoTrackFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TranscodingVideoTrackFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/TranscodingVideoTrackFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingVideoTrackFormat;
    .registers 2

    .line 63
    new-instance p0, Landroid/media/TranscodingVideoTrackFormat;

    invoke-direct {p0}, Landroid/media/TranscodingVideoTrackFormat;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Landroid/media/TranscodingVideoTrackFormat;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
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

    .line 60
    invoke-virtual {p0, p1}, Landroid/media/TranscodingVideoTrackFormat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingVideoTrackFormat;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/TranscodingVideoTrackFormat;
    .registers 2

    .line 69
    new-array p0, p1, [Landroid/media/TranscodingVideoTrackFormat;

    return-object p0
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

    .line 60
    invoke-virtual {p0, p1}, Landroid/media/TranscodingVideoTrackFormat$1;->newArray(I)[Landroid/media/TranscodingVideoTrackFormat;

    move-result-object p0

    return-object p0
.end method
