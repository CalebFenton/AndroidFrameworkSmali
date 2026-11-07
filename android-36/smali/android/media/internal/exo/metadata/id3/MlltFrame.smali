.class public final Landroid/media/internal/exo/metadata/id3/MlltFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "MlltFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/MlltFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist bytesBetweenReference:I

.field public final blacklist bytesDeviations:[I

.field public final blacklist millisecondsBetweenReference:I

.field public final blacklist millisecondsDeviations:[I

.field public final blacklist mpegFramesBetweenReference:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/media/internal/exo/metadata/id3/MlltFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/MlltFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III[I[I)V
    .registers 7

    .line 40
    const-string v0, "MLLT"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    .line 42
    iput p2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    .line 43
    iput p3, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    .line 44
    iput-object p4, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 45
    iput-object p5, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 49
    const-string v0, "MLLT"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 62
    const-class v2, Landroid/media/internal/exo/metadata/id3/MlltFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_39

    .line 65
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;

    .line 66
    iget v2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    .line 69
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    .line 70
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_39

    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 76
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 88
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->mpegFramesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->bytesDeviations:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 92
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
