.class public final Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist children:[Ljava/lang/String;

.field public final blacklist elementId:Ljava/lang/String;

.field public final blacklist isOrdered:Z

.field public final blacklist isRoot:Z

.field private final blacklist subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 51
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    iput-boolean v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    new-array v2, v0, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    iput-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    :goto_3c
    if-ge v1, v0, :cond_51

    .line 59
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    const-class v3, Landroid/media/internal/exo/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroid/media/internal/exo/metadata/id3/Id3Frame;)V
    .registers 7

    .line 42
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 45
    iput-boolean p3, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 46
    iput-object p4, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 47
    iput-object p5, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

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

    if-eqz p1, :cond_3d

    .line 78
    const-class v2, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3d

    .line 81
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;

    .line 82
    iget-boolean v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_3d

    iget-boolean v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 84
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 85
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    .line 86
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 92
    iget-boolean v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget-boolean v0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 100
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-boolean p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isRoot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-boolean p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->isOrdered:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;->subFrames:[Landroid/media/internal/exo/metadata/id3/Id3Frame;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_21
    if-ge v1, p2, :cond_2b

    aget-object v2, p0, v1

    .line 106
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    return-void
.end method
