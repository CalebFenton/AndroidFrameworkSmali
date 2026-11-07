.class Landroid/media/tv/StreamEventRequest$1;
.super Ljava/lang/Object;
.source "StreamEventRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/StreamEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/StreamEventRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    invoke-static {p1}, Landroid/media/tv/StreamEventRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;

    move-result-object v0

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

    .line 32
    invoke-virtual {p0, p1}, Landroid/media/tv/StreamEventRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/StreamEventRequest;
    .registers 3
    .param p1, "size"    # I

    .line 41
    new-array v0, p1, [Landroid/media/tv/StreamEventRequest;

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

    .line 32
    invoke-virtual {p0, p1}, Landroid/media/tv/StreamEventRequest$1;->newArray(I)[Landroid/media/tv/StreamEventRequest;

    move-result-object p1

    return-object p1
.end method
