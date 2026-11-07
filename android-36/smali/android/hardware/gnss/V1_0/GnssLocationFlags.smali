.class public final Landroid/hardware/gnss/V1_0/GnssLocationFlags;
.super Ljava/lang/Object;
.source "GnssLocationFlags.java"


# static fields
.field public static final blacklist HAS_ALTITUDE:S = 0x2s

.field public static final blacklist HAS_BEARING:S = 0x8s

.field public static final blacklist HAS_BEARING_ACCURACY:S = 0x80s

.field public static final blacklist HAS_HORIZONTAL_ACCURACY:S = 0x10s

.field public static final blacklist HAS_LAT_LONG:S = 0x1s

.field public static final blacklist HAS_SPEED:S = 0x4s

.field public static final blacklist HAS_SPEED_ACCURACY:S = 0x40s

.field public static final blacklist HAS_VERTICAL_ACCURACY:S = 0x20s


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # S

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":S
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 69
    const-string v2, "HAS_LAT_LONG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 72
    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 73
    const-string v2, "HAS_ALTITUDE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 76
    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    .line 77
    const-string v2, "HAS_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 80
    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 81
    const-string v2, "HAS_BEARING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 84
    :cond_3b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 85
    const-string v2, "HAS_HORIZONTAL_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    .line 88
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_57

    .line 89
    const-string v2, "HAS_VERTICAL_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    .line 92
    :cond_57
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    .line 93
    const-string v2, "HAS_SPEED_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    .line 96
    :cond_65
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_73

    .line 97
    const-string v2, "HAS_BEARING_ACCURACY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v2, v1, 0x80

    int-to-short v1, v2

    .line 100
    :cond_73
    if-eq p0, v1, :cond_96

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_96
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 38
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 39
    const-string v0, "HAS_LAT_LONG"

    return-object v0

    .line 41
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 42
    const-string v0, "HAS_ALTITUDE"

    return-object v0

    .line 44
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 45
    const-string v0, "HAS_SPEED"

    return-object v0

    .line 47
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 48
    const-string v0, "HAS_BEARING"

    return-object v0

    .line 50
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 51
    const-string v0, "HAS_HORIZONTAL_ACCURACY"

    return-object v0

    .line 53
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 54
    const-string v0, "HAS_VERTICAL_ACCURACY"

    return-object v0

    .line 56
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 57
    const-string v0, "HAS_SPEED_ACCURACY"

    return-object v0

    .line 59
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 60
    const-string v0, "HAS_BEARING_ACCURACY"

    return-object v0

    .line 62
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
