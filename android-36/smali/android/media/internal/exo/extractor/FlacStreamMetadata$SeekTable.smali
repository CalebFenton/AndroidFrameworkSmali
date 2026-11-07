.class public Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/FlacStreamMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekTable"
.end annotation


# instance fields
.field public final blacklist pointOffsets:[J

.field public final blacklist pointSampleNumbers:[J


# direct methods
.method public constructor blacklist <init>([J[J)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 55
    iput-object p2, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    return-void
.end method
