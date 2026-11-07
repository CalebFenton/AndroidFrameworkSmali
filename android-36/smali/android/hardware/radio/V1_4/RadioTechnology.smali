.class public final Landroid/hardware/radio/V1_4/RadioTechnology;
.super Ljava/lang/Object;
.source "RadioTechnology.java"


# static fields
.field public static final blacklist EDGE:I = 0x2

.field public static final blacklist EHRPD:I = 0xd

.field public static final blacklist EVDO_0:I = 0x7

.field public static final blacklist EVDO_A:I = 0x8

.field public static final blacklist EVDO_B:I = 0xc

.field public static final blacklist GPRS:I = 0x1

.field public static final blacklist GSM:I = 0x10

.field public static final blacklist HSDPA:I = 0x9

.field public static final blacklist HSPA:I = 0xb

.field public static final blacklist HSPAP:I = 0xf

.field public static final blacklist HSUPA:I = 0xa

.field public static final blacklist IS95A:I = 0x4

.field public static final blacklist IS95B:I = 0x5

.field public static final blacklist IWLAN:I = 0x12

.field public static final blacklist LTE:I = 0xe

.field public static final blacklist LTE_CA:I = 0x13

.field public static final blacklist NR:I = 0x14

.field public static final blacklist ONE_X_RTT:I = 0x6

.field public static final blacklist TD_SCDMA:I = 0x11

.field public static final blacklist UMTS:I = 0x3

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

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 99
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 101
    const-string v2, "GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x1

    .line 104
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 105
    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x2

    .line 108
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 109
    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x3

    .line 112
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 113
    const-string v2, "IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x4

    .line 116
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 117
    const-string v2, "IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x5

    .line 120
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 121
    const-string v2, "ONE_X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x6

    .line 124
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 125
    const-string v2, "EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x7

    .line 128
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 129
    const-string v2, "EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v1, v1, 0x8

    .line 132
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 133
    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v1, v1, 0x9

    .line 136
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 137
    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v1, v1, 0xa

    .line 140
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 141
    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v1, v1, 0xb

    .line 144
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 145
    const-string v2, "EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v1, v1, 0xc

    .line 148
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 149
    const-string v2, "EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v1, v1, 0xd

    .line 152
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 153
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v1, v1, 0xe

    .line 156
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 157
    const-string v2, "HSPAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0xf

    .line 160
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 161
    const-string v2, "GSM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x10

    .line 164
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 165
    const-string v2, "TD_SCDMA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x11

    .line 168
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 169
    const-string v2, "IWLAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x12

    .line 172
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 173
    const-string v2, "LTE_CA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0x13

    .line 176
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 177
    const-string v2, "NR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x14

    .line 180
    :cond_108
    if-eq p0, v1, :cond_126

    .line 181
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

    .line 183
    :cond_126
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 30
    if-nez p0, :cond_5

    .line 31
    const-string v0, "UNKNOWN"

    return-object v0

    .line 33
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 34
    const-string v0, "GPRS"

    return-object v0

    .line 36
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 37
    const-string v0, "EDGE"

    return-object v0

    .line 39
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 40
    const-string v0, "UMTS"

    return-object v0

    .line 42
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 43
    const-string v0, "IS95A"

    return-object v0

    .line 45
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 46
    const-string v0, "IS95B"

    return-object v0

    .line 48
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 49
    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 51
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 52
    const-string v0, "EVDO_0"

    return-object v0

    .line 54
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 55
    const-string v0, "EVDO_A"

    return-object v0

    .line 57
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 58
    const-string v0, "HSDPA"

    return-object v0

    .line 60
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 61
    const-string v0, "HSUPA"

    return-object v0

    .line 63
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 64
    const-string v0, "HSPA"

    return-object v0

    .line 66
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 67
    const-string v0, "EVDO_B"

    return-object v0

    .line 69
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 70
    const-string v0, "EHRPD"

    return-object v0

    .line 72
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 73
    const-string v0, "LTE"

    return-object v0

    .line 75
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 76
    const-string v0, "HSPAP"

    return-object v0

    .line 78
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 79
    const-string v0, "GSM"

    return-object v0

    .line 81
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 82
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 84
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 85
    const-string v0, "IWLAN"

    return-object v0

    .line 87
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 88
    const-string v0, "LTE_CA"

    return-object v0

    .line 90
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 91
    const-string v0, "NR"

    return-object v0

    .line 93
    :cond_8a
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
