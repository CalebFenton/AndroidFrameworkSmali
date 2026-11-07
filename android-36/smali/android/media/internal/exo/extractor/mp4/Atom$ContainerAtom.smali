.class final Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;
.super Landroid/media/internal/exo/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerAtom"
.end annotation


# instance fields
.field public final blacklist containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist endPosition:J

.field public final blacklist leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(IJ)V
    .registers 4

    .line 458
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/Atom;-><init>(I)V

    .line 459
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 460
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 461
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)V
    .registers 2

    .line 479
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist add(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;)V
    .registers 2

    .line 470
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;
    .registers 6

    .line 514
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 516
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    .line 517
    iget v3, v2, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;
    .registers 6

    .line 493
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 495
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    .line 496
    iget v3, v2, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 553
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 555
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
