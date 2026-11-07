.class final Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;
.super Landroid/media/internal/exo/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final blacklist data:Landroid/media/internal/exo/util/ParsableByteArray;


# direct methods
.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 3

    .line 441
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp4/Atom;-><init>(I)V

    .line 442
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method
