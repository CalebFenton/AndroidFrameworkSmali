.class public final Landroid/hardware/radio/V1_4/ApnTypes;
.super Ljava/lang/Object;
.source "ApnTypes.java"


# static fields
.field public static final blacklist ALL:I = 0x3ff

.field public static final blacklist CBS:I = 0x80

.field public static final blacklist DEFAULT:I = 0x1

.field public static final blacklist DUN:I = 0x8

.field public static final blacklist EMERGENCY:I = 0x200

.field public static final blacklist FOTA:I = 0x20

.field public static final blacklist HIPRI:I = 0x10

.field public static final blacklist IA:I = 0x100

.field public static final blacklist IMS:I = 0x40

.field public static final blacklist MCX:I = 0x400

.field public static final blacklist MMS:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist SUPL:I = 0x4


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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 70
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x1

    .line 73
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 74
    const-string v2, "MMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x2

    .line 77
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 78
    const-string v2, "SUPL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x4

    .line 81
    :cond_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3c

    .line 82
    const-string v2, "DUN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x8

    .line 85
    :cond_3c
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 86
    const-string v2, "HIPRI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x10

    .line 89
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 90
    const-string v2, "FOTA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x20

    .line 93
    :cond_56
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_63

    .line 94
    const-string v2, "IMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x40

    .line 97
    :cond_63
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_70

    .line 98
    const-string v2, "CBS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit16 v1, v1, 0x80

    .line 101
    :cond_70
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7d

    .line 102
    const-string v2, "IA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit16 v1, v1, 0x100

    .line 105
    :cond_7d
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_8a

    .line 106
    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit16 v1, v1, 0x200

    .line 109
    :cond_8a
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_97

    .line 110
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit16 v1, v1, 0x3ff

    .line 113
    :cond_97
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a4

    .line 114
    const-string v2, "MCX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit16 v1, v1, 0x400

    .line 117
    :cond_a4
    if-eq p0, v1, :cond_c2

    .line 118
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

    .line 120
    :cond_c2
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 23
    if-nez p0, :cond_5

    .line 24
    const-string v0, "NONE"

    return-object v0

    .line 26
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 27
    const-string v0, "DEFAULT"

    return-object v0

    .line 29
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 30
    const-string v0, "MMS"

    return-object v0

    .line 32
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 33
    const-string v0, "SUPL"

    return-object v0

    .line 35
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 36
    const-string v0, "DUN"

    return-object v0

    .line 38
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    .line 39
    const-string v0, "HIPRI"

    return-object v0

    .line 41
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    .line 42
    const-string v0, "FOTA"

    return-object v0

    .line 44
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    .line 45
    const-string v0, "IMS"

    return-object v0

    .line 47
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    .line 48
    const-string v0, "CBS"

    return-object v0

    .line 50
    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    .line 51
    const-string v0, "IA"

    return-object v0

    .line 53
    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    .line 54
    const-string v0, "EMERGENCY"

    return-object v0

    .line 56
    :cond_48
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_4f

    .line 57
    const-string v0, "ALL"

    return-object v0

    .line 59
    :cond_4f
    const/16 v0, 0x400

    if-ne p0, v0, :cond_56

    .line 60
    const-string v0, "MCX"

    return-object v0

    .line 62
    :cond_56
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
