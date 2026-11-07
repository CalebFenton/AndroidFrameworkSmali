.class final Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final blacklist presentationTimeDeltaUs:J

.field public final blacklist size:I


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 4

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    .line 1580
    iput p3, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    return-void
.end method
