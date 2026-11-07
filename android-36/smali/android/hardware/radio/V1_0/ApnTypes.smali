.class public final Landroid/hardware/radio/V1_0/ApnTypes;
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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 62
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x1

    .line 65
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 66
    const-string v2, "MMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x2

    .line 69
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 70
    const-string v2, "SUPL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x4

    .line 73
    :cond_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3c

    .line 74
    const-string v2, "DUN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x8

    .line 77
    :cond_3c
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 78
    const-string v2, "HIPRI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x10

    .line 81
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 82
    const-string v2, "FOTA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x20

    .line 85
    :cond_56
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_63

    .line 86
    const-string v2, "IMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x40

    .line 89
    :cond_63
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_70

    .line 90
    const-string v2, "CBS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit16 v1, v1, 0x80

    .line 93
    :cond_70
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7d

    .line 94
    const-string v2, "IA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit16 v1, v1, 0x100

    .line 97
    :cond_7d
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_8a

    .line 98
    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit16 v1, v1, 0x200

    .line 101
    :cond_8a
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_97

    .line 102
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit16 v1, v1, 0x3ff

    .line 105
    :cond_97
    if-eq p0, v1, :cond_b5

    .line 106
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

    .line 108
    :cond_b5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 18
    if-nez p0, :cond_5

    .line 19
    const-string v0, "NONE"

    return-object v0

    .line 21
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 22
    const-string v0, "DEFAULT"

    return-object v0

    .line 24
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 25
    const-string v0, "MMS"

    return-object v0

    .line 27
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 28
    const-string v0, "SUPL"

    return-object v0

    .line 30
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 31
    const-string v0, "DUN"

    return-object v0

    .line 33
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    .line 34
    const-string v0, "HIPRI"

    return-object v0

    .line 36
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    .line 37
    const-string v0, "FOTA"

    return-object v0

    .line 39
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    .line 40
    const-string v0, "IMS"

    return-object v0

    .line 42
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    .line 43
    const-string v0, "CBS"

    return-object v0

    .line 45
    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    .line 46
    const-string v0, "IA"

    return-object v0

    .line 48
    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    .line 49
    const-string v0, "EMERGENCY"

    return-object v0

    .line 51
    :cond_48
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_4f

    .line 52
    const-string v0, "ALL"

    return-object v0

    .line 54
    :cond_4f
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
