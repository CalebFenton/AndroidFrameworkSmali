.class final Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodeBook"
.end annotation


# instance fields
.field public final blacklist dimensions:I

.field public final blacklist entries:I

.field public final blacklist isOrdered:Z

.field public final blacklist lengthMap:[J

.field public final blacklist lookupType:I


# direct methods
.method public constructor blacklist <init>(II[JIZ)V
    .registers 6

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput p1, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;->dimensions:I

    .line 566
    iput p2, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;->entries:I

    .line 567
    iput-object p3, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;->lengthMap:[J

    .line 568
    iput p4, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;->lookupType:I

    .line 569
    iput-boolean p5, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;->isOrdered:Z

    return-void
.end method
