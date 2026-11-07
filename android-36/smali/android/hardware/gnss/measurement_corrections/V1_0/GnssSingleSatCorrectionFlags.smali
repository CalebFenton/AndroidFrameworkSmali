.class public final Landroid/hardware/gnss/measurement_corrections/V1_0/GnssSingleSatCorrectionFlags;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrectionFlags.java"


# static fields
.field public static final blacklist HAS_EXCESS_PATH_LENGTH:S = 0x2s

.field public static final blacklist HAS_EXCESS_PATH_LENGTH_UNC:S = 0x4s

.field public static final blacklist HAS_REFLECTING_PLANE:S = 0x8s

.field public static final blacklist HAS_SAT_IS_LOS_PROBABILITY:S = 0x1s


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

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":S
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 41
    const-string v2, "HAS_SAT_IS_LOS_PROBABILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 44
    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 45
    const-string v2, "HAS_EXCESS_PATH_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 48
    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    .line 49
    const-string v2, "HAS_EXCESS_PATH_LENGTH_UNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 52
    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 53
    const-string v2, "HAS_REFLECTING_PLANE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 56
    :cond_3b
    if-eq p0, v1, :cond_5e

    .line 57
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

    .line 59
    :cond_5e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 22
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 23
    const-string v0, "HAS_SAT_IS_LOS_PROBABILITY"

    return-object v0

    .line 25
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 26
    const-string v0, "HAS_EXCESS_PATH_LENGTH"

    return-object v0

    .line 28
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 29
    const-string v0, "HAS_EXCESS_PATH_LENGTH_UNC"

    return-object v0

    .line 31
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 32
    const-string v0, "HAS_REFLECTING_PLANE"

    return-object v0

    .line 34
    :cond_19
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
