.class Landroid/telecom/VideoProfile$CameraCapabilities$1;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile$CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/VideoProfile$CameraCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 404
    .local v2, "supportsZoom":Z
    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 406
    .local v3, "maxZoom":F
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v4
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

    .line 392
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;
    .registers 3
    .param p1, "size"    # I

    .line 411
    new-array v0, p1, [Landroid/telecom/VideoProfile$CameraCapabilities;

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

    .line 392
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p1

    return-object p1
.end method
