.class public final Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;
.super Ljava/lang/Object;
.source "MotionPhotoMetadata.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist photoPresentationTimestampUs:J

.field public final blacklist photoSize:J

.field public final blacklist photoStartPosition:J

.field public final blacklist videoSize:J

.field public final blacklist videoStartPosition:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJ)V
    .registers 11

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 50
    iput-wide p3, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    .line 51
    iput-wide p5, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    .line 52
    iput-wide p7, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 53
    iput-wide p9, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata$1;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;-><init>(Landroid/os/Parcel;)V

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
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 69
    const-class v2, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3b

    .line 72
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;

    .line 73
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    iget-wide p0, p1, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 83
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/primitives/Longs;->hashCode(J)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 84
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    invoke-static {v2, v3}, Landroid/media/internal/guava_common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 85
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    invoke-static {v2, v3}, Landroid/media/internal/guava_common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    invoke-static {v2, v3}, Landroid/media/internal/guava_common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 87
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    invoke-static {v2, v3}, Landroid/media/internal/guava_common/primitives/Longs;->hashCode(J)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Motion photo metadata: photoStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photoPresentationTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 109
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
