.class public final Landroid/media/internal/exo/metadata/id3/ChapterFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "ChapterFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist chapterId:Ljava/lang/String;

.field public final blacklist endOffset:J

.field public final blacklist endTimeMs:I

.field public final blacklist startOffset:J

.field public final blacklist startTimeMs:I

.field private final blacklist subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/media/internal/exo/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 58
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    new-array v1, v0, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    iput-object v1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_47

    .line 67
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    const-class v3, Landroid/media/internal/exo/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIJJ[Landroid/media/internal/exo/metadata/id3/Id3Frame;)V
    .registers 10

    .line 48
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 50
    iput p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 51
    iput p3, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 52
    iput-wide p4, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    .line 53
    iput-wide p6, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    .line 54
    iput-object p8, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

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

    if-eqz p1, :cond_43

    .line 86
    const-class v2, Landroid/media/internal/exo/metadata/id3/ChapterFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_43

    .line 89
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;

    .line 90
    iget v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 94
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    .line 95
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/16 v0, 0x20f

    .line 101
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget v1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-wide v1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-wide v1, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 111
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v1, p2, :cond_2e

    aget-object v2, p0, v1

    .line 118
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method
