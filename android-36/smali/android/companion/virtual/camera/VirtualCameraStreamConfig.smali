.class public final Landroid/companion/virtual/camera/VirtualCameraStreamConfig;
.super Ljava/lang/Object;
.source "VirtualCameraStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_FPS_UPPER_LIMIT:I = 0x3c


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mHeight:I

.field private final blacklist mMaxFps:I

.field private final blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxFps"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    .line 63
    iput p2, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    .line 64
    iput p3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    .line 65
    iput p4, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/camera/VirtualCameraStreamConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 117
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 118
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 119
    .local v2, "that":Landroid/companion/virtual/camera/VirtualCameraStreamConfig;
    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    iget v4, v2, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 117
    .end local v2    # "that":Landroid/companion/virtual/camera/VirtualCameraStreamConfig;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    return v0
.end method

.method public whitelist getMaximumFramesPerSecond()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 125
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->mMaxFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
