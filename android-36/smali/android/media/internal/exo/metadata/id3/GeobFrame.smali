.class public final Landroid/media/internal/exo/metadata/id3/GeobFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "GeobFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/GeobFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist data:[B

.field public final blacklist description:Ljava/lang/String;

.field public final blacklist filename:Ljava/lang/String;

.field public final blacklist mimeType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/media/internal/exo/metadata/id3/GeobFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/GeobFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 45
    const-string v0, "GEOB"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 37
    const-string v0, "GEOB"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

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

    if-eqz p1, :cond_3b

    .line 57
    const-class v2, Landroid/media/internal/exo/metadata/id3/GeobFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3b

    .line 60
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/GeobFrame;

    .line 61
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    .line 62
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    .line 63
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

    .line 64
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 70
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 71
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 72
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 73
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;->data:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
