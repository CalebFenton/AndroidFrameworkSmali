.class final Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;
.super Ljava/lang/Object;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/metadata/id3/Id3Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Id3Header"
.end annotation


# instance fields
.field private final blacklist framesSize:I

.field private final blacklist isUnsynchronized:Z

.field private final blacklist majorVersion:I


# direct methods
.method public constructor blacklist <init>(IZI)V
    .registers 4

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput p1, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    .line 878
    iput-boolean p2, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    .line 879
    iput p3, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I
    .registers 1

    .line 870
    iget p0, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I
    .registers 1

    .line 870
    iget p0, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    return p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)Z
    .registers 1

    .line 870
    iget-boolean p0, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    return p0
.end method
