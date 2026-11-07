.class public final Landroid/media/internal/exo/metadata/id3/ApicFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist description:Ljava/lang/String;

.field public final blacklist mimeType:Ljava/lang/String;

.field public final blacklist pictureData:[B

.field public final blacklist pictureType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Landroid/media/internal/exo/metadata/id3/ApicFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/ApicFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 47
    const-string v0, "APIC"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 6

    .line 39
    const-string v0, "APIC"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 42
    iput p3, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    .line 43
    iput-object p4, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 64
    const-class v2, Landroid/media/internal/exo/metadata/id3/ApicFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_37

    .line 67
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/ApicFrame;

    .line 68
    iget v2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 69
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/16 v0, 0x20f

    .line 77
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 93
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;->pictureData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
