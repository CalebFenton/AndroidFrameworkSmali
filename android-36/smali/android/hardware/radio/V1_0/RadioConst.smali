.class public final Landroid/hardware/radio/V1_0/RadioConst;
.super Ljava/lang/Object;
.source "RadioConst.java"


# static fields
.field public static final blacklist CARD_MAX_APPS:I = 0x8

.field public static final blacklist CDMA_ALPHA_INFO_BUFFER_LENGTH:I = 0x40

.field public static final blacklist CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa

.field public static final blacklist CDMA_NUMBER_INFO_BUFFER_LENGTH:I = 0x51

.field public static final blacklist MAX_CLIENT_ID_LENGTH:I = 0x2

.field public static final blacklist MAX_DEBUG_SOCKET_NAME_LENGTH:I = 0xc

.field public static final blacklist MAX_QEMU_PIPE_NAME_LENGTH:I = 0xb

.field public static final blacklist MAX_RILDS:I = 0x3

.field public static final blacklist MAX_SOCKET_NAME_LENGTH:I = 0x6

.field public static final blacklist MAX_UUID_LENGTH:I = 0x40

.field public static final blacklist NUM_SERVICE_CLASSES:I = 0x7

.field public static final blacklist NUM_TX_POWER_LEVELS:I = 0x5

.field public static final blacklist SS_INFO_MAX:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 6
    .param p0, "o"    # I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_13

    .line 65
    const-string v2, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x40

    .line 68
    :cond_13
    and-int/lit8 v2, p0, 0x51

    const/16 v4, 0x51

    if-ne v2, v4, :cond_20

    .line 69
    const-string v2, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, 0x51

    .line 72
    :cond_20
    and-int/lit8 v2, p0, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 73
    const-string v2, "MAX_RILDS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x3

    .line 76
    :cond_2c
    and-int/lit8 v2, p0, 0x6

    const/4 v4, 0x6

    if-ne v2, v4, :cond_38

    .line 77
    const-string v2, "MAX_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x6

    .line 80
    :cond_38
    and-int/lit8 v2, p0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_44

    .line 81
    const-string v2, "MAX_CLIENT_ID_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x2

    .line 84
    :cond_44
    and-int/lit8 v2, p0, 0xc

    const/16 v4, 0xc

    if-ne v2, v4, :cond_51

    .line 85
    const-string v2, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0xc

    .line 88
    :cond_51
    and-int/lit8 v2, p0, 0xb

    const/16 v4, 0xb

    if-ne v2, v4, :cond_5e

    .line 89
    const-string v2, "MAX_QEMU_PIPE_NAME_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0xb

    .line 92
    :cond_5e
    and-int/lit8 v2, p0, 0x40

    if-ne v2, v3, :cond_69

    .line 93
    const-string v2, "MAX_UUID_LENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x40

    .line 96
    :cond_69
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_76

    .line 97
    const-string v2, "CARD_MAX_APPS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x8

    .line 100
    :cond_76
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_83

    .line 101
    const-string v2, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0xa

    .line 104
    :cond_83
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8f

    .line 105
    const-string v2, "SS_INFO_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x4

    .line 108
    :cond_8f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9b

    .line 109
    const-string v2, "NUM_SERVICE_CLASSES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x7

    .line 112
    :cond_9b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a7

    .line 113
    const-string v2, "NUM_TX_POWER_LEVELS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x5

    .line 116
    :cond_a7
    if-eq p0, v1, :cond_c5

    .line 117
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

    .line 119
    :cond_c5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 19
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 20
    const-string v0, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    return-object v0

    .line 22
    :cond_7
    const/16 v1, 0x51

    if-ne p0, v1, :cond_e

    .line 23
    const-string v0, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    return-object v0

    .line 25
    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_14

    .line 26
    const-string v0, "MAX_RILDS"

    return-object v0

    .line 28
    :cond_14
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1a

    .line 29
    const-string v0, "MAX_SOCKET_NAME_LENGTH"

    return-object v0

    .line 31
    :cond_1a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_20

    .line 32
    const-string v0, "MAX_CLIENT_ID_LENGTH"

    return-object v0

    .line 34
    :cond_20
    const/16 v1, 0xc

    if-ne p0, v1, :cond_27

    .line 35
    const-string v0, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    return-object v0

    .line 37
    :cond_27
    const/16 v1, 0xb

    if-ne p0, v1, :cond_2e

    .line 38
    const-string v0, "MAX_QEMU_PIPE_NAME_LENGTH"

    return-object v0

    .line 40
    :cond_2e
    if-ne p0, v0, :cond_33

    .line 41
    const-string v0, "MAX_UUID_LENGTH"

    return-object v0

    .line 43
    :cond_33
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3a

    .line 44
    const-string v0, "CARD_MAX_APPS"

    return-object v0

    .line 46
    :cond_3a
    const/16 v0, 0xa

    if-ne p0, v0, :cond_41

    .line 47
    const-string v0, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    return-object v0

    .line 49
    :cond_41
    const/4 v0, 0x4

    if-ne p0, v0, :cond_47

    .line 50
    const-string v0, "SS_INFO_MAX"

    return-object v0

    .line 52
    :cond_47
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4d

    .line 53
    const-string v0, "NUM_SERVICE_CLASSES"

    return-object v0

    .line 55
    :cond_4d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_53

    .line 56
    const-string v0, "NUM_TX_POWER_LEVELS"

    return-object v0

    .line 58
    :cond_53
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
