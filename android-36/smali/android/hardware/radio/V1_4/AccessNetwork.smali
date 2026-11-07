.class public final Landroid/hardware/radio/V1_4/AccessNetwork;
.super Ljava/lang/Object;
.source "AccessNetwork.java"


# static fields
.field public static final blacklist CDMA2000:I = 0x4

.field public static final blacklist EUTRAN:I = 0x3

.field public static final blacklist GERAN:I = 0x1

.field public static final blacklist IWLAN:I = 0x5

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UTRAN:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 55
    const-string v2, "GERAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    or-int/lit8 v1, v1, 0x1

    .line 58
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 59
    const-string v2, "UTRAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    or-int/lit8 v1, v1, 0x2

    .line 62
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 63
    const-string v2, "EUTRAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    or-int/lit8 v1, v1, 0x3

    .line 66
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 67
    const-string v2, "CDMA2000"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/lit8 v1, v1, 0x4

    .line 70
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 71
    const-string v2, "IWLAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    or-int/lit8 v1, v1, 0x5

    .line 74
    :cond_42
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    if-eq p0, v1, :cond_65

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_65
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 30
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 31
    const-string v0, "GERAN"

    return-object v0

    .line 33
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 34
    const-string v0, "UTRAN"

    return-object v0

    .line 36
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 37
    const-string v0, "EUTRAN"

    return-object v0

    .line 39
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 40
    const-string v0, "CDMA2000"

    return-object v0

    .line 42
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 43
    const-string v0, "IWLAN"

    return-object v0

    .line 45
    :cond_1e
    if-nez p0, :cond_23

    .line 46
    const-string v0, "UNKNOWN"

    return-object v0

    .line 48
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
