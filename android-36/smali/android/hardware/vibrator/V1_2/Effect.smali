.class public final Landroid/hardware/vibrator/V1_2/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# static fields
.field public static final blacklist CLICK:I = 0x0

.field public static final blacklist DOUBLE_CLICK:I = 0x1

.field public static final blacklist HEAVY_CLICK:I = 0x5

.field public static final blacklist POP:I = 0x4

.field public static final blacklist RINGTONE_1:I = 0x6

.field public static final blacklist RINGTONE_10:I = 0xf

.field public static final blacklist RINGTONE_11:I = 0x10

.field public static final blacklist RINGTONE_12:I = 0x11

.field public static final blacklist RINGTONE_13:I = 0x12

.field public static final blacklist RINGTONE_14:I = 0x13

.field public static final blacklist RINGTONE_15:I = 0x14

.field public static final blacklist RINGTONE_2:I = 0x7

.field public static final blacklist RINGTONE_3:I = 0x8

.field public static final blacklist RINGTONE_4:I = 0x9

.field public static final blacklist RINGTONE_5:I = 0xa

.field public static final blacklist RINGTONE_6:I = 0xb

.field public static final blacklist RINGTONE_7:I = 0xc

.field public static final blacklist RINGTONE_8:I = 0xd

.field public static final blacklist RINGTONE_9:I = 0xe

.field public static final blacklist THUD:I = 0x3

.field public static final blacklist TICK:I = 0x2


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

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 131
    .local v1, "flipped":I
    const-string v2, "CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 133
    const-string v2, "DOUBLE_CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v1, v1, 0x1

    .line 136
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 137
    const-string v2, "TICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v1, v1, 0x2

    .line 140
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 141
    const-string v2, "THUD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v1, v1, 0x3

    .line 144
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 145
    const-string v2, "POP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v1, v1, 0x4

    .line 148
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 149
    const-string v2, "HEAVY_CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v1, v1, 0x5

    .line 152
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 153
    const-string v2, "RINGTONE_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v1, v1, 0x6

    .line 156
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 157
    const-string v2, "RINGTONE_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0x7

    .line 160
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 161
    const-string v2, "RINGTONE_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x8

    .line 164
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 165
    const-string v2, "RINGTONE_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x9

    .line 168
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 169
    const-string v2, "RINGTONE_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0xa

    .line 172
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 173
    const-string v2, "RINGTONE_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v1, v1, 0xb

    .line 176
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 177
    const-string v2, "RINGTONE_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0xc

    .line 180
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 181
    const-string v2, "RINGTONE_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0xd

    .line 184
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 185
    const-string v2, "RINGTONE_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0xe

    .line 188
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 189
    const-string v2, "RINGTONE_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0xf

    .line 192
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 193
    const-string v2, "RINGTONE_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0x10

    .line 196
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 197
    const-string v2, "RINGTONE_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0x11

    .line 200
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 201
    const-string v2, "RINGTONE_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0x12

    .line 204
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 205
    const-string v2, "RINGTONE_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0x13

    .line 208
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 209
    const-string v2, "RINGTONE_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0x14

    .line 212
    :cond_108
    if-eq p0, v1, :cond_126

    .line 213
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

    .line 215
    :cond_126
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 62
    if-nez p0, :cond_5

    .line 63
    const-string v0, "CLICK"

    return-object v0

    .line 65
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 66
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    .line 68
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 69
    const-string v0, "TICK"

    return-object v0

    .line 71
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 72
    const-string v0, "THUD"

    return-object v0

    .line 74
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 75
    const-string v0, "POP"

    return-object v0

    .line 77
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 78
    const-string v0, "HEAVY_CLICK"

    return-object v0

    .line 80
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 81
    const-string v0, "RINGTONE_1"

    return-object v0

    .line 83
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 84
    const-string v0, "RINGTONE_2"

    return-object v0

    .line 86
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 87
    const-string v0, "RINGTONE_3"

    return-object v0

    .line 89
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 90
    const-string v0, "RINGTONE_4"

    return-object v0

    .line 92
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 93
    const-string v0, "RINGTONE_5"

    return-object v0

    .line 95
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 96
    const-string v0, "RINGTONE_6"

    return-object v0

    .line 98
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 99
    const-string v0, "RINGTONE_7"

    return-object v0

    .line 101
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 102
    const-string v0, "RINGTONE_8"

    return-object v0

    .line 104
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 105
    const-string v0, "RINGTONE_9"

    return-object v0

    .line 107
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 108
    const-string v0, "RINGTONE_10"

    return-object v0

    .line 110
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 111
    const-string v0, "RINGTONE_11"

    return-object v0

    .line 113
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 114
    const-string v0, "RINGTONE_12"

    return-object v0

    .line 116
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 117
    const-string v0, "RINGTONE_13"

    return-object v0

    .line 119
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 120
    const-string v0, "RINGTONE_14"

    return-object v0

    .line 122
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 123
    const-string v0, "RINGTONE_15"

    return-object v0

    .line 125
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
