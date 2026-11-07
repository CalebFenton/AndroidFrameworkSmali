.class public final Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/FlacMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacStreamMetadataHolder"
.end annotation


# instance fields
.field public blacklist flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return-void
.end method
