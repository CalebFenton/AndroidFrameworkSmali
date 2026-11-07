.class public final Landroid/media/internal/exo/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "PictureFrame.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist colors:I

.field public final blacklist depth:I

.field public final blacklist description:Ljava/lang/String;

.field public final blacklist height:I

.field public final blacklist mimeType:Ljava/lang/String;

.field public final blacklist pictureData:[B

.field public final blacklist pictureType:I

.field public final blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Landroid/media/internal/exo/metadata/flac/PictureFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/flac/PictureFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .registers 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    .line 57
    iput-object p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 59
    iput p4, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    .line 60
    iput p5, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    .line 61
    iput p6, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    .line 62
    iput p7, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    .line 63
    iput-object p8, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

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

    if-eqz p1, :cond_4f

    .line 92
    const-class v2, Landroid/media/internal/exo/metadata/flac/PictureFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_4f

    .line 95
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;

    .line 96
    iget v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    iget v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    iget v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    if-ne v2, v3, :cond_4f

    iget v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    iget v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    if-ne v2, v3, :cond_4f

    iget v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    iget v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    if-ne v2, v3, :cond_4f

    iget v2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    iget v3, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    if-ne v2, v3, :cond_4f

    iget-object p0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

    .line 103
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_4f

    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 109
    iget v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object p0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture: mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 122
    iget p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->depth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p2, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->colors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object p0, p0, Landroid/media/internal/exo/metadata/flac/PictureFrame;->pictureData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
