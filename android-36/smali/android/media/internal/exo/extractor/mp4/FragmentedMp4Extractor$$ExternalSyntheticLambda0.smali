.class public final synthetic Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/internal/guava_common/base/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->f$0:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->f$0:Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;

    check-cast p1, Landroid/media/internal/exo/extractor/mp4/Track;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mp4/FragmentedMp4Extractor;->modifyTrack(Landroid/media/internal/exo/extractor/mp4/Track;)Landroid/media/internal/exo/extractor/mp4/Track;

    move-result-object p0

    return-object p0
.end method
