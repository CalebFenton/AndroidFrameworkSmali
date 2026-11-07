.class public final synthetic Landroid/media/internal/exo/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/internal/guava_common/base/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/media/internal/exo/extractor/mp4/Track;

    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/Mp4Extractor;->$r8$lambda$TBLxpumCoV7bT7ZdaDOSMfwWMbM(Landroid/media/internal/exo/extractor/mp4/Track;)Landroid/media/internal/exo/extractor/mp4/Track;

    move-result-object p0

    return-object p0
.end method
