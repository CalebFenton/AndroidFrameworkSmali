.class public final Landroid/hardware/radio/V1_0/SuppServiceClass;
.super Ljava/lang/Object;
.source "SuppServiceClass.java"


# static fields
.field public static final blacklist DATA:I = 0x2

.field public static final blacklist DATA_ASYNC:I = 0x20

.field public static final blacklist DATA_SYNC:I = 0x10

.field public static final blacklist FAX:I = 0x4

.field public static final blacklist MAX:I = 0x80

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PACKET:I = 0x40

.field public static final blacklist PAD:I = 0x80

.field public static final blacklist SMS:I = 0x8

.field public static final blacklist VOICE:I = 0x1


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
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 54
    const-string v2, "VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x1

    .line 57
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 58
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x2

    .line 61
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 62
    const-string v2, "FAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x4

    .line 65
    :cond_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3c

    .line 66
    const-string v2, "SMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x8

    .line 69
    :cond_3c
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 70
    const-string v2, "DATA_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x10

    .line 73
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 74
    const-string v2, "DATA_ASYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x20

    .line 77
    :cond_56
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_63

    .line 78
    const-string v2, "PACKET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x40

    .line 81
    :cond_63
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_70

    .line 82
    const-string v2, "PAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit16 v1, v1, 0x80

    .line 85
    :cond_70
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v3, :cond_7b

    .line 86
    const-string v2, "MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit16 v1, v1, 0x80

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
    const-string v0, "NONE"

    return-object v0

    .line 19
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 20
    const-string v0, "VOICE"

    return-object v0

    .line 22
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 23
    const-string v0, "DATA"

    return-object v0

    .line 25
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 26
    const-string v0, "FAX"

    return-object v0

    .line 28
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 29
    const-string v0, "SMS"

    return-object v0

    .line 31
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    .line 32
    const-string v0, "DATA_SYNC"

    return-object v0

    .line 34
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    .line 35
    const-string v0, "DATA_ASYNC"

    return-object v0

    .line 37
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    .line 38
    const-string v0, "PACKET"

    return-object v0

    .line 40
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    .line 41
    const-string v0, "PAD"

    return-object v0

    .line 43
    :cond_3a
    if-ne p0, v0, :cond_3f

    .line 44
    const-string v0, "MAX"

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
