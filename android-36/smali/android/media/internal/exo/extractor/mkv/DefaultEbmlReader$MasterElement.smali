.class final Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MasterElement"
.end annotation


# instance fields
.field private final blacklist elementEndPosition:J

.field private final blacklist elementId:I


# direct methods
.method private constructor blacklist <init>(IJ)V
    .registers 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    .line 252
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$1;)V
    .registers 5

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;)J
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;)I
    .registers 1

    .line 245
    iget p0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    return p0
.end method
