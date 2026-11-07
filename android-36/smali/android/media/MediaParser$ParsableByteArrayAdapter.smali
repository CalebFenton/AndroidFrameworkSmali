.class final Landroid/media/MediaParser$ParsableByteArrayAdapter;
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
    name = "ParsableByteArrayAdapter"
.end annotation


# instance fields
.field private blacklist mByteArray:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist mCurrentPosition:I

.field private blacklist mLength:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaParser-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/media/MediaParser$ParsableByteArrayAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getLength()J
    .registers 5

    .line 1945
    iget-wide v0, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mLength:J

    iget p0, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mCurrentPosition:I

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getPosition()J
    .registers 3

    .line 1940
    iget p0, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mCurrentPosition:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public whitelist read([BII)I
    .registers 5

    .line 1933
    iget-object v0, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mByteArray:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1934
    iget p1, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mCurrentPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mCurrentPosition:I

    return p3
.end method

.method public blacklist resetWithByteArray(Landroid/media/internal/exo/util/ParsableByteArray;J)V
    .registers 4

    .line 1924
    iput-object p1, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mByteArray:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 p1, 0x0

    .line 1925
    iput p1, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mCurrentPosition:I

    .line 1926
    iput-wide p2, p0, Landroid/media/MediaParser$ParsableByteArrayAdapter;->mLength:J

    return-void
.end method
