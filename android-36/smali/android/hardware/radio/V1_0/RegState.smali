.class public final Landroid/hardware/radio/V1_0/RegState;
.super Ljava/lang/Object;
.source "RegState.java"


# static fields
.field public static final blacklist NOT_REG_MT_NOT_SEARCHING_OP:I = 0x0

.field public static final blacklist NOT_REG_MT_NOT_SEARCHING_OP_EM:I = 0xa

.field public static final blacklist NOT_REG_MT_SEARCHING_OP:I = 0x2

.field public static final blacklist NOT_REG_MT_SEARCHING_OP_EM:I = 0xc

.field public static final blacklist REG_DENIED:I = 0x3

.field public static final blacklist REG_DENIED_EM:I = 0xd

.field public static final blacklist REG_HOME:I = 0x1

.field public static final blacklist REG_ROAMING:I = 0x5

.field public static final blacklist UNKNOWN:I = 0x4

.field public static final blacklist UNKNOWN_EM:I = 0xe


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

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "flipped":I
    const-string v2, "NOT_REG_MT_NOT_SEARCHING_OP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 54
    const-string v2, "REG_HOME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x1

    .line 57
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 58
    const-string v2, "NOT_REG_MT_SEARCHING_OP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x2

    .line 61
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 62
    const-string v2, "REG_DENIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x3

    .line 65
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 66
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x4

    .line 69
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 70
    const-string v2, "REG_ROAMING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x5

    .line 73
    :cond_47
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_54

    .line 74
    const-string v2, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0xa

    .line 77
    :cond_54
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_61

    .line 78
    const-string v2, "NOT_REG_MT_SEARCHING_OP_EM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0xc

    .line 81
    :cond_61
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_6e

    .line 82
    const-string v2, "REG_DENIED_EM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0xd

    .line 85
    :cond_6e
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_7b

    .line 86
    const-string v2, "UNKNOWN_EM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0xe

    .line 89
    :cond_7b
    if-eq p0, v1, :cond_99

    .line 90
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

    .line 92
    :cond_99
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 16
    if-nez p0, :cond_5

    .line 17
    const-string v0, "NOT_REG_MT_NOT_SEARCHING_OP"

    return-object v0

    .line 19
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 20
    const-string v0, "REG_HOME"

    return-object v0

    .line 22
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 23
    const-string v0, "NOT_REG_MT_SEARCHING_OP"

    return-object v0

    .line 25
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 26
    const-string v0, "REG_DENIED"

    return-object v0

    .line 28
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 29
    const-string v0, "UNKNOWN"

    return-object v0

    .line 31
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 32
    const-string v0, "REG_ROAMING"

    return-object v0

    .line 34
    :cond_23
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2a

    .line 35
    const-string v0, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    return-object v0

    .line 37
    :cond_2a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_31

    .line 38
    const-string v0, "NOT_REG_MT_SEARCHING_OP_EM"

    return-object v0

    .line 40
    :cond_31
    const/16 v0, 0xd

    if-ne p0, v0, :cond_38

    .line 41
    const-string v0, "REG_DENIED_EM"

    return-object v0

    .line 43
    :cond_38
    const/16 v0, 0xe

    if-ne p0, v0, :cond_3f

    .line 44
    const-string v0, "UNKNOWN_EM"

    return-object v0

    .line 46
    :cond_3f
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
