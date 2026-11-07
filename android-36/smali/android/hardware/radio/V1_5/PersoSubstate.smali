.class public final Landroid/hardware/radio/V1_5/PersoSubstate;
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

.field public static final blacklist SIM_ICCID:I = 0x1d

.field public static final blacklist SIM_ICCID_PUK:I = 0x1e

.field public static final blacklist SIM_IMPI:I = 0x1f

.field public static final blacklist SIM_IMPI_PUK:I = 0x20

.field public static final blacklist SIM_NETWORK:I = 0x3

.field public static final blacklist SIM_NETWORK_PUK:I = 0x8

.field public static final blacklist SIM_NETWORK_SUBSET:I = 0x4

.field public static final blacklist SIM_NETWORK_SUBSET_PUK:I = 0x9

.field public static final blacklist SIM_NS_SP:I = 0x21

.field public static final blacklist SIM_NS_SP_PUK:I = 0x22

.field public static final blacklist SIM_SERVICE_PROVIDER:I = 0x6

.field public static final blacklist SIM_SERVICE_PROVIDER_PUK:I = 0xb

.field public static final blacklist SIM_SIM:I = 0x7

.field public static final blacklist SIM_SIM_PUK:I = 0xc

.field public static final blacklist SIM_SPN:I = 0x19

.field public static final blacklist SIM_SPN_PUK:I = 0x1a

.field public static final blacklist SIM_SP_EHPLMN:I = 0x1b

.field public static final blacklist SIM_SP_EHPLMN_PUK:I = 0x1c

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

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 177
    const-string v2, "IN_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v1, v1, 0x1

    .line 180
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 181
    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    or-int/lit8 v1, v1, 0x2

    .line 184
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 185
    const-string v2, "SIM_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    or-int/lit8 v1, v1, 0x3

    .line 188
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 189
    const-string v2, "SIM_NETWORK_SUBSET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    or-int/lit8 v1, v1, 0x4

    .line 192
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 193
    const-string v2, "SIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    or-int/lit8 v1, v1, 0x5

    .line 196
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 197
    const-string v2, "SIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    or-int/lit8 v1, v1, 0x6

    .line 200
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 201
    const-string v2, "SIM_SIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    or-int/lit8 v1, v1, 0x7

    .line 204
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 205
    const-string v2, "SIM_NETWORK_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    or-int/lit8 v1, v1, 0x8

    .line 208
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 209
    const-string v2, "SIM_NETWORK_SUBSET_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    or-int/lit8 v1, v1, 0x9

    .line 212
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 213
    const-string v2, "SIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    or-int/lit8 v1, v1, 0xa

    .line 216
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 217
    const-string v2, "SIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    or-int/lit8 v1, v1, 0xb

    .line 220
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 221
    const-string v2, "SIM_SIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    or-int/lit8 v1, v1, 0xc

    .line 224
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 225
    const-string v2, "RUIM_NETWORK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    or-int/lit8 v1, v1, 0xd

    .line 228
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 229
    const-string v2, "RUIM_NETWORK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    or-int/lit8 v1, v1, 0xe

    .line 232
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 233
    const-string v2, "RUIM_HRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    or-int/lit8 v1, v1, 0xf

    .line 236
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 237
    const-string v2, "RUIM_CORPORATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    or-int/lit8 v1, v1, 0x10

    .line 240
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 241
    const-string v2, "RUIM_SERVICE_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    or-int/lit8 v1, v1, 0x11

    .line 244
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 245
    const-string v2, "RUIM_RUIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    or-int/lit8 v1, v1, 0x12

    .line 248
    :cond_ee
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_fb

    .line 249
    const-string v2, "RUIM_NETWORK1_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v1, v1, 0x13

    .line 252
    :cond_fb
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_108

    .line 253
    const-string v2, "RUIM_NETWORK2_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v1, v1, 0x14

    .line 256
    :cond_108
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_115

    .line 257
    const-string v2, "RUIM_HRPD_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v1, v1, 0x15

    .line 260
    :cond_115
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_122

    .line 261
    const-string v2, "RUIM_CORPORATE_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit8 v1, v1, 0x16

    .line 264
    :cond_122
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_12f

    .line 265
    const-string v2, "RUIM_SERVICE_PROVIDER_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    or-int/lit8 v1, v1, 0x17

    .line 268
    :cond_12f
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13c

    .line 269
    const-string v2, "RUIM_RUIM_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    or-int/lit8 v1, v1, 0x18

    .line 272
    :cond_13c
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_149

    .line 273
    const-string v2, "SIM_SPN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    or-int/lit8 v1, v1, 0x19

    .line 276
    :cond_149
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_156

    .line 277
    const-string v2, "SIM_SPN_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    or-int/lit8 v1, v1, 0x1a

    .line 280
    :cond_156
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_163

    .line 281
    const-string v2, "SIM_SP_EHPLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    or-int/lit8 v1, v1, 0x1b

    .line 284
    :cond_163
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_170

    .line 285
    const-string v2, "SIM_SP_EHPLMN_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    or-int/lit8 v1, v1, 0x1c

    .line 288
    :cond_170
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_17d

    .line 289
    const-string v2, "SIM_ICCID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    or-int/lit8 v1, v1, 0x1d

    .line 292
    :cond_17d
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_18a

    .line 293
    const-string v2, "SIM_ICCID_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    or-int/lit8 v1, v1, 0x1e

    .line 296
    :cond_18a
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_197

    .line 297
    const-string v2, "SIM_IMPI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    or-int/lit8 v1, v1, 0x1f

    .line 300
    :cond_197
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1a4

    .line 301
    const-string v2, "SIM_IMPI_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    or-int/lit8 v1, v1, 0x20

    .line 304
    :cond_1a4
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1b1

    .line 305
    const-string v2, "SIM_NS_SP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    or-int/lit8 v1, v1, 0x21

    .line 308
    :cond_1b1
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1be

    .line 309
    const-string v2, "SIM_NS_SP_PUK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit8 v1, v1, 0x22

    .line 312
    :cond_1be
    if-eq p0, v1, :cond_1dc

    .line 313
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

    .line 315
    :cond_1dc
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 64
    if-nez p0, :cond_5

    .line 65
    const-string v0, "UNKNOWN"

    return-object v0

    .line 67
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 68
    const-string v0, "IN_PROGRESS"

    return-object v0

    .line 70
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 71
    const-string v0, "READY"

    return-object v0

    .line 73
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 74
    const-string v0, "SIM_NETWORK"

    return-object v0

    .line 76
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 77
    const-string v0, "SIM_NETWORK_SUBSET"

    return-object v0

    .line 79
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 80
    const-string v0, "SIM_CORPORATE"

    return-object v0

    .line 82
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 83
    const-string v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    .line 85
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 86
    const-string v0, "SIM_SIM"

    return-object v0

    .line 88
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 89
    const-string v0, "SIM_NETWORK_PUK"

    return-object v0

    .line 91
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 92
    const-string v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    .line 94
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 95
    const-string v0, "SIM_CORPORATE_PUK"

    return-object v0

    .line 97
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 98
    const-string v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 100
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 101
    const-string v0, "SIM_SIM_PUK"

    return-object v0

    .line 103
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 104
    const-string v0, "RUIM_NETWORK1"

    return-object v0

    .line 106
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 107
    const-string v0, "RUIM_NETWORK2"

    return-object v0

    .line 109
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 110
    const-string v0, "RUIM_HRPD"

    return-object v0

    .line 112
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 113
    const-string v0, "RUIM_CORPORATE"

    return-object v0

    .line 115
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 116
    const-string v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    .line 118
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 119
    const-string v0, "RUIM_RUIM"

    return-object v0

    .line 121
    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    .line 122
    const-string v0, "RUIM_NETWORK1_PUK"

    return-object v0

    .line 124
    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    .line 125
    const-string v0, "RUIM_NETWORK2_PUK"

    return-object v0

    .line 127
    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    .line 128
    const-string v0, "RUIM_HRPD_PUK"

    return-object v0

    .line 130
    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    .line 131
    const-string v0, "RUIM_CORPORATE_PUK"

    return-object v0

    .line 133
    :cond_98
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9f

    .line 134
    const-string v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 136
    :cond_9f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a6

    .line 137
    const-string v0, "RUIM_RUIM_PUK"

    return-object v0

    .line 139
    :cond_a6
    const/16 v0, 0x19

    if-ne p0, v0, :cond_ad

    .line 140
    const-string v0, "SIM_SPN"

    return-object v0

    .line 142
    :cond_ad
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b4

    .line 143
    const-string v0, "SIM_SPN_PUK"

    return-object v0

    .line 145
    :cond_b4
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_bb

    .line 146
    const-string v0, "SIM_SP_EHPLMN"

    return-object v0

    .line 148
    :cond_bb
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_c2

    .line 149
    const-string v0, "SIM_SP_EHPLMN_PUK"

    return-object v0

    .line 151
    :cond_c2
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_c9

    .line 152
    const-string v0, "SIM_ICCID"

    return-object v0

    .line 154
    :cond_c9
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_d0

    .line 155
    const-string v0, "SIM_ICCID_PUK"

    return-object v0

    .line 157
    :cond_d0
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d7

    .line 158
    const-string v0, "SIM_IMPI"

    return-object v0

    .line 160
    :cond_d7
    const/16 v0, 0x20

    if-ne p0, v0, :cond_de

    .line 161
    const-string v0, "SIM_IMPI_PUK"

    return-object v0

    .line 163
    :cond_de
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e5

    .line 164
    const-string v0, "SIM_NS_SP"

    return-object v0

    .line 166
    :cond_e5
    const/16 v0, 0x22

    if-ne p0, v0, :cond_ec

    .line 167
    const-string v0, "SIM_NS_SP_PUK"

    return-object v0

    .line 169
    :cond_ec
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
