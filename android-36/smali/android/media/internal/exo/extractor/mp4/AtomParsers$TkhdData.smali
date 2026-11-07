.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final blacklist duration:J

.field private final blacklist id:I

.field private final blacklist rotationDegrees:I


# direct methods
.method public constructor blacklist <init>(IJI)V
    .registers 5

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1898
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->id:I

    .line 1899
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->duration:J

    .line 1900
    iput p4, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)J
    .registers 3

    .line 1891
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->duration:J

    return-wide v0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 1

    .line 1891
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->id:I

    return p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 1

    .line 1891
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return p0
.end method
