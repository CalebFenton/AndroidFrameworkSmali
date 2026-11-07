.class public final synthetic Landroid/media/MediaParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaParser$ExtractorFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createInstance()Landroid/media/internal/exo/extractor/Extractor;
    .registers 1

    .line 0
    new-instance p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;-><init>()V

    return-object p0
.end method
