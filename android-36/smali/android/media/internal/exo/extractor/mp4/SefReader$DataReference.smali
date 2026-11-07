.class final Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/SefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReference"
.end annotation


# instance fields
.field public final blacklist dataType:I

.field public final blacklist size:I

.field public final blacklist startOffset:J


# direct methods
.method public constructor blacklist <init>(IJI)V
    .registers 5

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->dataType:I

    .line 274
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->startOffset:J

    .line 275
    iput p4, p0, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->size:I

    return-void
.end method
