.class final Landroid/telecom/VideoProfile$CameraCapabilities$1;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile$CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/VideoProfile$CameraCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 377
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 378
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    .line 379
    .local v2, "supportsZoom":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@12
    move-result v1

    #@13
    .line 381
    .local v1, "maxZoom":F
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@15
    invoke-direct {v4, v3, v0, v2, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    #@18
    return-object v4

    #@19
    .line 378
    .end local v1    # "maxZoom":F
    .end local v2    # "supportsZoom":Z
    :cond_0
    const/4 v2, 0x0

    #@1a
    .restart local v2    # "supportsZoom":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 386
    new-array v0, p1, [Landroid/telecom/VideoProfile$CameraCapabilities;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$CameraCapabilities$1;->newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
