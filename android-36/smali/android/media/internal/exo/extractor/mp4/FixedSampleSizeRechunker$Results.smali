.class public final Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final blacklist duration:J

.field public final blacklist flags:[I

.field public final blacklist maximumSize:I

.field public final blacklist offsets:[J

.field public final blacklist sizes:[I

.field public final blacklist timestamps:[J


# direct methods
.method private constructor blacklist <init>([J[II[J[IJ)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 47
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 48
    iput p3, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 49
    iput-object p4, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 50
    iput-object p5, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 51
    iput-wide p6, p0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    return-void
.end method

.method synthetic constructor blacklist <init>([J[II[J[IJLandroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .registers 9

    .line 30
    invoke-direct/range {p0 .. p7}, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJ)V

    return-void
.end method
