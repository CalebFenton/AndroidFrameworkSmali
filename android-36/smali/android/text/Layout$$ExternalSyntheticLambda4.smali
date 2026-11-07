.class public final synthetic Landroid/text/Layout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[F


# direct methods
.method public synthetic constructor blacklist <init>(II[F)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$0:I

    iput p2, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$2:[F

    return-void
.end method


# virtual methods
.method public final blacklist onCharacterBounds(IIFFFF)V
    .registers 16

    .line 0
    iget v0, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$0:I

    iget v1, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Landroid/text/Layout$$ExternalSyntheticLambda4;->f$2:[F

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/text/Layout;->lambda$fillCharacterBounds$2(II[FIIFFFF)V

    return-void
.end method
