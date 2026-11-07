.class public final Landroid/hardware/radio/V1_2/IndicationFilter;
.super Ljava/lang/Object;
.source "IndicationFilter.java"


# static fields
.field public static final blacklist ALL:I = -0x1

.field public static final blacklist DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final blacklist FULL_NETWORK_STATE:I = 0x2

.field public static final blacklist LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final blacklist SIGNAL_STRENGTH:I = 0x1


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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 74
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, -0x1

    .line 77
    :cond_17
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 78
    const-string v2, "SIGNAL_STRENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x1

    .line 81
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 82
    const-string v2, "FULL_NETWORK_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x2

    .line 85
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 86
    const-string v2, "DATA_CALL_DORMANCY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x4

    .line 89
    :cond_3b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 90
    const-string v2, "LINK_CAPACITY_ESTIMATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x8

    .line 93
    :cond_48
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_55

    .line 94
    const-string v2, "PHYSICAL_CHANNEL_CONFIG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x10

    .line 97
    :cond_55
    if-eq p0, v1, :cond_73

    .line 98
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

    .line 100
    :cond_73
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 45
    if-nez p0, :cond_5

    .line 46
    const-string v0, "NONE"

    return-object v0

    .line 48
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 49
    const-string v0, "ALL"

    return-object v0

    .line 51
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 52
    const-string v0, "SIGNAL_STRENGTH"

    return-object v0

    .line 54
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 55
    const-string v0, "FULL_NETWORK_STATE"

    return-object v0

    .line 57
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 58
    const-string v0, "DATA_CALL_DORMANCY_CHANGED"

    return-object v0

    .line 60
    :cond_1d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    .line 61
    const-string v0, "LINK_CAPACITY_ESTIMATE"

    return-object v0

    .line 63
    :cond_24
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2b

    .line 64
    const-string v0, "PHYSICAL_CHANNEL_CONFIG"

    return-object v0

    .line 66
    :cond_2b
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
