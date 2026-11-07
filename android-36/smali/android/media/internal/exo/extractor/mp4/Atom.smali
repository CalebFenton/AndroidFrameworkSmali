.class abstract Landroid/media/internal/exo/extractor/mp4/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;,
        Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;
    }
.end annotation


# instance fields
.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    return-void
.end method

.method public static blacklist getAtomTypeString(I)Ljava/lang/String;
    .registers 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFullAtomFlags(I)I
    .registers 2

    .line 0
    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist parseFullAtomVersion(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 427
    iget p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
