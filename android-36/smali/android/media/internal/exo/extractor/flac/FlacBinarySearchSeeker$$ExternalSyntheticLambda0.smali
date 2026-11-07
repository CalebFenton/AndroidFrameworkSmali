.class public final synthetic Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/internal/exo/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final blacklist timeUsToTargetTime(J)J
    .registers 3

    .line 0
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p0

    return-wide p0
.end method
