.class public final Landroid/media/internal/exo/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final blacklist HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field private static final blacklist NAL_START_CODE:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 29
    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    return-void

    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static blacklist buildAvcCodecString(III)Ljava/lang/String;
    .registers 3

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 84
    const-string p1, "avc1.%02X%02X%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildCea708InitializationData(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    .line 56
    new-array p0, v1, [B

    aput-byte v1, p0, v0

    goto :goto_d

    :cond_9
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    :goto_d
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildHevcCodecString(IZII[II)Ljava/lang/String;
    .registers 8

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v1, p0

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_13

    const/16 p1, 0x48

    goto :goto_15

    :cond_13
    const/16 p1, 0x4c

    .line 103
    :goto_15
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 104
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p0, p2, p3, p1, p5}, [Ljava/lang/Object;

    move-result-object p0

    .line 98
    const-string p1, "hvc1.%s%d.%X.%c%d"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    array-length p0, p4

    :goto_2b
    if-lez p0, :cond_36

    add-int/lit8 p1, p0, -0x1

    .line 107
    aget p1, p4, p1

    if-nez p1, :cond_36

    add-int/lit8 p0, p0, -0x1

    goto :goto_2b

    :cond_36
    const/4 p1, 0x0

    :goto_37
    if-ge p1, p0, :cond_4f

    .line 111
    aget p2, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, ".%02X"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    .line 113
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildNalUnit([BII)[B
    .registers 7

    .line 125
    sget-object v0, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 126
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static blacklist parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    const/16 p0, 0x9

    .line 41
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 42
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v1, 0x14

    .line 43
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 44
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
