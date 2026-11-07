.class public final Landroid/hardware/radio/V1_0/CdmaSmsNumberPlan;
.super Ljava/lang/Object;
.source "CdmaSmsNumberPlan.java"


# static fields
.field public static final blacklist DATA:I = 0x3

.field public static final blacklist PRIVATE:I = 0x9

.field public static final blacklist RESERVED_10:I = 0xa

.field public static final blacklist RESERVED_11:I = 0xb

.field public static final blacklist RESERVED_12:I = 0xc

.field public static final blacklist RESERVED_13:I = 0xd

.field public static final blacklist RESERVED_14:I = 0xe

.field public static final blacklist RESERVED_15:I = 0xf

.field public static final blacklist RESERVED_2:I = 0x2

.field public static final blacklist RESERVED_5:I = 0x5

.field public static final blacklist RESERVED_6:I = 0x6

.field public static final blacklist RESERVED_7:I = 0x7

.field public static final blacklist RESERVED_8:I = 0x8

.field public static final blacklist TELEPHONY:I = 0x1

.field public static final blacklist TELEX:I = 0x4

.field public static final blacklist UNKNOWN:I


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

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 78
    const-string v2, "TELEPHONY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x1

    .line 81
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 82
    const-string v2, "RESERVED_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x2

    .line 85
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 86
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x3

    .line 89
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 90
    const-string v2, "TELEX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x4

    .line 93
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 94
    const-string v2, "RESERVED_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x5

    .line 97
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 98
    const-string v2, "RESERVED_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x6

    .line 101
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 102
    const-string v2, "RESERVED_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x7

    .line 105
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 106
    const-string v2, "RESERVED_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x8

    .line 109
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 110
    const-string v2, "PRIVATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x9

    .line 113
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 114
    const-string v2, "RESERVED_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0xa

    .line 117
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 118
    const-string v2, "RESERVED_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0xb

    .line 121
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 122
    const-string v2, "RESERVED_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0xc

    .line 125
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 126
    const-string v2, "RESERVED_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xd

    .line 129
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 130
    const-string v2, "RESERVED_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xe

    .line 133
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 134
    const-string v2, "RESERVED_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xf

    .line 137
    :cond_c7
    if-eq p0, v1, :cond_e5

    .line 138
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

    .line 140
    :cond_e5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 22
    if-nez p0, :cond_5

    .line 23
    const-string v0, "UNKNOWN"

    return-object v0

    .line 25
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 26
    const-string v0, "TELEPHONY"

    return-object v0

    .line 28
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 29
    const-string v0, "RESERVED_2"

    return-object v0

    .line 31
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 32
    const-string v0, "DATA"

    return-object v0

    .line 34
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 35
    const-string v0, "TELEX"

    return-object v0

    .line 37
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 38
    const-string v0, "RESERVED_5"

    return-object v0

    .line 40
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 41
    const-string v0, "RESERVED_6"

    return-object v0

    .line 43
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 44
    const-string v0, "RESERVED_7"

    return-object v0

    .line 46
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 47
    const-string v0, "RESERVED_8"

    return-object v0

    .line 49
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 50
    const-string v0, "PRIVATE"

    return-object v0

    .line 52
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 53
    const-string v0, "RESERVED_10"

    return-object v0

    .line 55
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 56
    const-string v0, "RESERVED_11"

    return-object v0

    .line 58
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 59
    const-string v0, "RESERVED_12"

    return-object v0

    .line 61
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 62
    const-string v0, "RESERVED_13"

    return-object v0

    .line 64
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 65
    const-string v0, "RESERVED_14"

    return-object v0

    .line 67
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 68
    const-string v0, "RESERVED_15"

    return-object v0

    .line 70
    :cond_67
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
