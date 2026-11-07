.class final Landroid/media/MediaParser$DataReaderAdapter;
.super Ljava/lang/Object;
.source "MediaParser.java"

# interfaces
.implements Landroid/media/MediaParser$InputReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReaderAdapter"
.end annotation


# instance fields
.field private blacklist mCurrentPosition:I

.field private blacklist mDataReader:Landroid/media/internal/exo/upstream/DataReader;

.field private blacklist mLength:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/media/MediaParser$DataReaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getLength()J
    .registers 5

    .line 1913
    iget-wide v0, p0, Landroid/media/MediaParser$DataReaderAdapter;->mLength:J

    iget p0, p0, Landroid/media/MediaParser$DataReaderAdapter;->mCurrentPosition:I

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getPosition()J
    .registers 3

    .line 1908
    iget p0, p0, Landroid/media/MediaParser$DataReaderAdapter;->mCurrentPosition:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public whitelist read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1901
    iget-object v0, p0, Landroid/media/MediaParser$DataReaderAdapter;->mDataReader:Landroid/media/internal/exo/upstream/DataReader;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/internal/exo/upstream/DataReader;->read([BII)I

    move-result p1

    .line 1902
    iget p2, p0, Landroid/media/MediaParser$DataReaderAdapter;->mCurrentPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/media/MediaParser$DataReaderAdapter;->mCurrentPosition:I

    return p1
.end method

.method public blacklist setDataReader(Landroid/media/internal/exo/upstream/DataReader;J)V
    .registers 4

    .line 1891
    iput-object p1, p0, Landroid/media/MediaParser$DataReaderAdapter;->mDataReader:Landroid/media/internal/exo/upstream/DataReader;

    const/4 p1, 0x0

    .line 1892
    iput p1, p0, Landroid/media/MediaParser$DataReaderAdapter;->mCurrentPosition:I

    .line 1893
    iput-wide p2, p0, Landroid/media/MediaParser$DataReaderAdapter;->mLength:J

    return-void
.end method
