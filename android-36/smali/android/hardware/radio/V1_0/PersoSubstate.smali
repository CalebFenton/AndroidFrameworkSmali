.class public final Landroid/hardware/radio/V1_0/PersoSubstate;
.super Ljava/lang/Object;
.source "PersoSubstate.java"


# static fields
.field public static final blacklist IN_PROGRESS:I = 0x1

.field public static final blacklist READY:I = 0x2

.field public static final blacklist RUIM_CORPORATE:I = 0x10

.field public static final blacklist RUIM_CORPORATE_PUK:I = 0x16

.field public static final blacklist RUIM_HRPD:I = 0xf

.field public static final blacklist RUIM_HRPD_PUK:I = 0x15

.field public static final blacklist RUIM_NETWORK1:I = 0xd

.field public static final blacklist RUIM_NETWORK1_PUK:I = 0x13

.field public static final blacklist RUIM_NETWORK2:I = 0xe

.field public static final blacklist RUIM_NETWORK2_PUK:I = 0x14

.field public static final blacklist RUIM_RUIM:I = 0x12

.field public static final blacklist RUIM_RUIM_PUK:I = 0x18

.field public static final blacklist RUIM_SERVICE_PROVIDER:I = 0x11

.field public static final blacklist RUIM_SERVICE_PROVIDER_PUK:I = 0x17

.field public static final blacklist SIM_CORPORATE:I = 0x5

.field public static final blacklist SIM_CORPORATE_PUK:I = 0xa

.field public static final blacklist SIM_NETWORK:I = 0x3

.field public static final blacklist SIM_NETWORK_PUK:I = 0x8

.field public static final blacklist SIM_NETWORK_SUBSET:I = 0x4

.field public static final blacklist SIM_NETWORK_SUBSET_PUK:I = 0x9

.field public static final blacklist SIM_SERVICE_PROVIDER:I = 0x6

.field public static final blacklist SIM_SERVICE_PROVIDER_PUK:I = 0xb

.field public static final blacklist SIM_SIM:I = 0x7

.field public static final blacklist SIM_SIM_PUK:I = 0xc

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

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 112
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 114
    const-string v2, "IN_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x1

    .line 117
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 118
    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x2

    .line 121
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 122
    const-string v2, "SIM_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x3

    .line 125
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 126
    const-string v2, "SIM_NETWORK_SUBSET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x4

    .line 129
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 130
    const-string v2, "SIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x5

    .line 133
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 134
    const-string v2, "SIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x6

    .line 137
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 138
    const-string v2, "SIM_SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x7

    .line 141
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 142
    const-string v2, "SIM_NETWORK_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x8

    .line 145
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 146
    const-string v2, "SIM_NETWORK_SUBSET_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0x9

    .line 149
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 150
    const-string v2, "SIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0xa

    .line 153
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 154
    const-string v2, "SIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0xb

    .line 157
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 158
    const-string v2, "SIM_SIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xc

    .line 161
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 162
    const-string v2, "RUIM_NETWORK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xd

    .line 165
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 166
    const-string v2, "RUIM_NETWORK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0xe

    .line 169
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 170
    const-string v2, "RUIM_HRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0xf

    .line 173
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 174
    const-string v2, "RUIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0x10

    .line 177
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 178
    const-string v2, "RUIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v1, v1, 0x11

    .line 181
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 182
    const-string v2, "RUIM_RUIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v1, v1, 0x12

    .line 185
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 186
    const-string v2, "RUIM_NETWORK1_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v1, v1, 0x13

    .line 189
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 190
    const-string v2, "RUIM_NETWORK2_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v1, v1, 0x14

    .line 193
    :cond_108
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_115

    .line 194
    const-string v2, "RUIM_HRPD_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/lit8 v1, v1, 0x15

    .line 197
    :cond_115
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_122

    .line 198
    const-string v2, "RUIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/lit8 v1, v1, 0x16

    .line 201
    :cond_122
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_12f

    .line 202
    const-string v2, "RUIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    or-int/lit8 v1, v1, 0x17

    .line 205
    :cond_12f
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13c

    .line 206
    const-string v2, "RUIM_RUIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    or-int/lit8 v1, v1, 0x18

    .line 209
    :cond_13c
    if-eq p0, v1, :cond_15a

    .line 210
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

    .line 212
    :cond_15a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 31
    if-nez p0, :cond_5

    .line 32
    const-string v0, "UNKNOWN"

    return-object v0

    .line 34
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 35
    const-string v0, "IN_PROGRESS"

    return-object v0

    .line 37
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 38
    const-string v0, "READY"

    return-object v0

    .line 40
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 41
    const-string v0, "SIM_NETWORK"

    return-object v0

    .line 43
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 44
    const-string v0, "SIM_NETWORK_SUBSET"

    return-object v0

    .line 46
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 47
    const-string v0, "SIM_CORPORATE"

    return-object v0

    .line 49
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 50
    const-string v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    .line 52
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 53
    const-string v0, "SIM_SIM"

    return-object v0

    .line 55
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 56
    const-string v0, "SIM_NETWORK_PUK"

    return-object v0

    .line 58
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 59
    const-string v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    .line 61
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 62
    const-string v0, "SIM_CORPORATE_PUK"

    return-object v0

    .line 64
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 65
    const-string v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 67
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 68
    const-string v0, "SIM_SIM_PUK"

    return-object v0

    .line 70
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 71
    const-string v0, "RUIM_NETWORK1"

    return-object v0

    .line 73
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 74
    const-string v0, "RUIM_NETWORK2"

    return-object v0

    .line 76
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 77
    const-string v0, "RUIM_HRPD"

    return-object v0

    .line 79
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 80
    const-string v0, "RUIM_CORPORATE"

    return-object v0

    .line 82
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 83
    const-string v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    .line 85
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 86
    const-string v0, "RUIM_RUIM"

    return-object v0

    .line 88
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 89
    const-string v0, "RUIM_NETWORK1_PUK"

    return-object v0

    .line 91
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 92
    const-string v0, "RUIM_NETWORK2_PUK"

    return-object v0

    .line 94
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 95
    const-string v0, "RUIM_HRPD_PUK"

    return-object v0

    .line 97
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 98
    const-string v0, "RUIM_CORPORATE_PUK"

    return-object v0

    .line 100
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    .line 101
    const-string v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 103
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    .line 104
    const-string v0, "RUIM_RUIM_PUK"

    return-object v0

    .line 106
    :cond_a6
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
