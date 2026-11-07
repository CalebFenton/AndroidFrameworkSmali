.class public final Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final blacklist NO_TIMESTAMP_IN_RANGE_RESULT:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field private final blacklist bytePositionToUpdate:J

.field private final blacklist timestampToUpdate:J

.field private final blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 416
    new-instance v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method private constructor blacklist <init>(IJJ)V
    .registers 6

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    .line 440
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 441
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .registers 1

    .line 395
    iget p0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 395
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method static synthetic blacklist access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 395
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static blacklist overestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10

    .line 451
    new-instance v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static blacklist targetFoundResult(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 8

    .line 471
    new-instance v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method

.method public static blacklist underestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10

    .line 462
    new-instance v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v0
.end method
