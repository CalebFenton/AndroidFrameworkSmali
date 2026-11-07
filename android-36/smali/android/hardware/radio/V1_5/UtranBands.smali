.class public final Landroid/hardware/radio/V1_5/UtranBands;
.super Ljava/lang/Object;
.source "UtranBands.java"


# static fields
.field public static final blacklist BAND_1:I = 0x1

.field public static final blacklist BAND_10:I = 0xa

.field public static final blacklist BAND_11:I = 0xb

.field public static final blacklist BAND_12:I = 0xc

.field public static final blacklist BAND_13:I = 0xd

.field public static final blacklist BAND_14:I = 0xe

.field public static final blacklist BAND_19:I = 0x13

.field public static final blacklist BAND_2:I = 0x2

.field public static final blacklist BAND_20:I = 0x14

.field public static final blacklist BAND_21:I = 0x15

.field public static final blacklist BAND_22:I = 0x16

.field public static final blacklist BAND_25:I = 0x19

.field public static final blacklist BAND_26:I = 0x1a

.field public static final blacklist BAND_3:I = 0x3

.field public static final blacklist BAND_4:I = 0x4

.field public static final blacklist BAND_5:I = 0x5

.field public static final blacklist BAND_6:I = 0x6

.field public static final blacklist BAND_7:I = 0x7

.field public static final blacklist BAND_8:I = 0x8

.field public static final blacklist BAND_9:I = 0x9

.field public static final blacklist BAND_A:I = 0x65

.field public static final blacklist BAND_B:I = 0x66

.field public static final blacklist BAND_C:I = 0x67

.field public static final blacklist BAND_D:I = 0x68

.field public static final blacklist BAND_E:I = 0x69

.field public static final blacklist BAND_F:I = 0x6a


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

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 119
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 120
    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0x1

    .line 123
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 124
    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v1, v1, 0x2

    .line 127
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 128
    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit8 v1, v1, 0x3

    .line 131
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 132
    const-string v2, "BAND_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit8 v1, v1, 0x4

    .line 135
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 136
    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit8 v1, v1, 0x5

    .line 139
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 140
    const-string v2, "BAND_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v1, v1, 0x6

    .line 143
    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    .line 144
    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v1, v1, 0x7

    .line 147
    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    .line 148
    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v1, v1, 0x8

    .line 151
    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    .line 152
    const-string v2, "BAND_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v1, v1, 0x9

    .line 155
    :cond_74
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    .line 156
    const-string v2, "BAND_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/lit8 v1, v1, 0xa

    .line 159
    :cond_81
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8e

    .line 160
    const-string v2, "BAND_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit8 v1, v1, 0xb

    .line 163
    :cond_8e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9b

    .line 164
    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v1, v1, 0xc

    .line 167
    :cond_9b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a8

    .line 168
    const-string v2, "BAND_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v1, v1, 0xd

    .line 171
    :cond_a8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b5

    .line 172
    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0xe

    .line 175
    :cond_b5
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_c2

    .line 176
    const-string v2, "BAND_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v1, v1, 0x13

    .line 179
    :cond_c2
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_cf

    .line 180
    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0x14

    .line 183
    :cond_cf
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_dc

    .line 184
    const-string v2, "BAND_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0x15

    .line 187
    :cond_dc
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_e9

    .line 188
    const-string v2, "BAND_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0x16

    .line 191
    :cond_e9
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_f6

    .line 192
    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x19

    .line 195
    :cond_f6
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_103

    .line 196
    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x1a

    .line 199
    :cond_103
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_110

    .line 200
    const-string v2, "BAND_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0x65

    .line 203
    :cond_110
    and-int/lit8 v2, p0, 0x66

    const/16 v3, 0x66

    if-ne v2, v3, :cond_11d

    .line 204
    const-string v2, "BAND_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0x66

    .line 207
    :cond_11d
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_12a

    .line 208
    const-string v2, "BAND_C"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x67

    .line 211
    :cond_12a
    and-int/lit8 v2, p0, 0x68

    const/16 v3, 0x68

    if-ne v2, v3, :cond_137

    .line 212
    const-string v2, "BAND_D"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x68

    .line 215
    :cond_137
    and-int/lit8 v2, p0, 0x69

    const/16 v3, 0x69

    if-ne v2, v3, :cond_144

    .line 216
    const-string v2, "BAND_E"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0x69

    .line 219
    :cond_144
    and-int/lit8 v2, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_151

    .line 220
    const-string v2, "BAND_F"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0x6a

    .line 223
    :cond_151
    if-eq p0, v1, :cond_16f

    .line 224
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

    .line 226
    :cond_16f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 35
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 36
    const-string v0, "BAND_1"

    return-object v0

    .line 38
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 39
    const-string v0, "BAND_2"

    return-object v0

    .line 41
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 42
    const-string v0, "BAND_3"

    return-object v0

    .line 44
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 45
    const-string v0, "BAND_4"

    return-object v0

    .line 47
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 48
    const-string v0, "BAND_5"

    return-object v0

    .line 50
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 51
    const-string v0, "BAND_6"

    return-object v0

    .line 53
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 54
    const-string v0, "BAND_7"

    return-object v0

    .line 56
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 57
    const-string v0, "BAND_8"

    return-object v0

    .line 59
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 60
    const-string v0, "BAND_9"

    return-object v0

    .line 62
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 63
    const-string v0, "BAND_10"

    return-object v0

    .line 65
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 66
    const-string v0, "BAND_11"

    return-object v0

    .line 68
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 69
    const-string v0, "BAND_12"

    return-object v0

    .line 71
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 72
    const-string v0, "BAND_13"

    return-object v0

    .line 74
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 75
    const-string v0, "BAND_14"

    return-object v0

    .line 77
    :cond_5b
    const/16 v0, 0x13

    if-ne p0, v0, :cond_62

    .line 78
    const-string v0, "BAND_19"

    return-object v0

    .line 80
    :cond_62
    const/16 v0, 0x14

    if-ne p0, v0, :cond_69

    .line 81
    const-string v0, "BAND_20"

    return-object v0

    .line 83
    :cond_69
    const/16 v0, 0x15

    if-ne p0, v0, :cond_70

    .line 84
    const-string v0, "BAND_21"

    return-object v0

    .line 86
    :cond_70
    const/16 v0, 0x16

    if-ne p0, v0, :cond_77

    .line 87
    const-string v0, "BAND_22"

    return-object v0

    .line 89
    :cond_77
    const/16 v0, 0x19

    if-ne p0, v0, :cond_7e

    .line 90
    const-string v0, "BAND_25"

    return-object v0

    .line 92
    :cond_7e
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_85

    .line 93
    const-string v0, "BAND_26"

    return-object v0

    .line 95
    :cond_85
    const/16 v0, 0x65

    if-ne p0, v0, :cond_8c

    .line 96
    const-string v0, "BAND_A"

    return-object v0

    .line 98
    :cond_8c
    const/16 v0, 0x66

    if-ne p0, v0, :cond_93

    .line 99
    const-string v0, "BAND_B"

    return-object v0

    .line 101
    :cond_93
    const/16 v0, 0x67

    if-ne p0, v0, :cond_9a

    .line 102
    const-string v0, "BAND_C"

    return-object v0

    .line 104
    :cond_9a
    const/16 v0, 0x68

    if-ne p0, v0, :cond_a1

    .line 105
    const-string v0, "BAND_D"

    return-object v0

    .line 107
    :cond_a1
    const/16 v0, 0x69

    if-ne p0, v0, :cond_a8

    .line 108
    const-string v0, "BAND_E"

    return-object v0

    .line 110
    :cond_a8
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_af

    .line 111
    const-string v0, "BAND_F"

    return-object v0

    .line 113
    :cond_af
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
