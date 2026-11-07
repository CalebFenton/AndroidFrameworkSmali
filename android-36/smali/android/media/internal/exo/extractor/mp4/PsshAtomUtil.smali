.class public final Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# direct methods
.method private static blacklist parsePsshAtom([B)Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;
    .registers 10

    .line 156
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 157
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_f

    return-object v2

    :cond_f
    const/4 p0, 0x0

    .line 161
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 162
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 163
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v1, v3, :cond_20

    return-object v2

    .line 167
    :cond_20
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v3, 0x70737368    # 3.013775E29f

    if-eq v1, v3, :cond_2a

    return-object v2

    .line 172
    :cond_2a
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_4c

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported pssh version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 177
    :cond_4c
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_64

    .line 179
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 180
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 182
    :cond_64
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 183
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-eq v3, v5, :cond_6f

    return-object v2

    .line 187
    :cond_6f
    new-array v2, v3, [B

    .line 188
    invoke-virtual {v0, v2, p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 189
    new-instance p0, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {p0, v4, v1, v2}, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method

.method public static blacklist parseUuid([B)Ljava/util/UUID;
    .registers 1

    .line 98
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_8
    # getter for: Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Landroid/media/internal/exo/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
