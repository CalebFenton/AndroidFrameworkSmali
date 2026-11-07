.class final Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;
.super Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/util/TimestampAdjuster;JJII)V
    .registers 24

    .line 47
    new-instance v1, Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    move-object/from16 v0, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v2, v3, v0, v4}, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;I)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;-><init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
