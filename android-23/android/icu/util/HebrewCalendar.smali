.class public Landroid/icu/util/HebrewCalendar;
.super Landroid/icu/util/Calendar;
.source "HebrewCalendar.java"


# static fields
.field public static final ADAR:I = 0x6

.field public static final ADAR_1:I = 0x5

.field public static final AV:I = 0xb

.field private static final BAHARAD:J = 0x2f34L

.field private static final DAY_PARTS:J = 0x6540L

.field public static final ELUL:I = 0xc

.field public static final HESHVAN:I = 0x1

.field private static final HOUR_PARTS:J = 0x438L

.field public static final IYAR:I = 0x8

.field public static final KISLEV:I = 0x2

.field private static final LEAP_MONTH_START:[[I

.field private static final LIMITS:[[I

.field private static final MONTH_DAYS:I = 0x1d

.field private static final MONTH_FRACT:J = 0x35b9L

.field private static final MONTH_LENGTH:[[I

.field private static final MONTH_PARTS:J = 0xbadf9L

.field private static final MONTH_START:[[I

.field public static final NISAN:I = 0x7

.field public static final SHEVAT:I = 0x4

.field public static final SIVAN:I = 0x9

.field public static final TAMUZ:I = 0xa

.field public static final TEVET:I = 0x3

.field public static final TISHRI:I = 0x0

.field private static cache:Landroid/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x1b18c2be311f64d8L


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const v9, -0x4c4b40

    #@3
    const/4 v8, 0x1

    #@4
    const/16 v7, 0x1d

    #@6
    const/16 v6, 0x1e

    #@8
    const/4 v5, 0x0

    #@9
    .line 171
    const/16 v0, 0x16

    #@b
    new-array v0, v0, [[I

    #@d
    .line 174
    filled-new-array {v5, v5, v5, v5}, [I

    #@10
    move-result-object v1

    #@11
    aput-object v1, v0, v5

    #@13
    .line 175
    const v1, 0x4c4b40

    #@16
    const v2, 0x4c4b40

    #@19
    filled-new-array {v9, v9, v1, v2}, [I

    #@1c
    move-result-object v1

    #@1d
    aput-object v1, v0, v8

    #@1f
    .line 176
    const/16 v1, 0xc

    #@21
    const/16 v2, 0xc

    #@23
    filled-new-array {v5, v5, v1, v2}, [I

    #@26
    move-result-object v1

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 177
    const/16 v1, 0x33

    #@2c
    const/16 v2, 0x38

    #@2e
    filled-new-array {v8, v8, v1, v2}, [I

    #@31
    move-result-object v1

    #@32
    const/4 v2, 0x3

    #@33
    aput-object v1, v0, v2

    #@35
    .line 178
    new-array v1, v5, [I

    #@37
    const/4 v2, 0x4

    #@38
    aput-object v1, v0, v2

    #@3a
    .line 179
    filled-new-array {v8, v8, v7, v6}, [I

    #@3d
    move-result-object v1

    #@3e
    const/4 v2, 0x5

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 180
    const/16 v1, 0x161

    #@43
    const/16 v2, 0x181

    #@45
    filled-new-array {v8, v8, v1, v2}, [I

    #@48
    move-result-object v1

    #@49
    const/4 v2, 0x6

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 181
    new-array v1, v5, [I

    #@4e
    const/4 v2, 0x7

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 182
    const/4 v1, -0x1

    #@52
    const/4 v2, -0x1

    #@53
    const/4 v3, 0x5

    #@54
    const/4 v4, 0x5

    #@55
    filled-new-array {v1, v2, v3, v4}, [I

    #@58
    move-result-object v1

    #@59
    const/16 v2, 0x8

    #@5b
    aput-object v1, v0, v2

    #@5d
    .line 183
    new-array v1, v5, [I

    #@5f
    const/16 v2, 0x9

    #@61
    aput-object v1, v0, v2

    #@63
    .line 184
    new-array v1, v5, [I

    #@65
    const/16 v2, 0xa

    #@67
    aput-object v1, v0, v2

    #@69
    .line 185
    new-array v1, v5, [I

    #@6b
    const/16 v2, 0xb

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 186
    new-array v1, v5, [I

    #@71
    const/16 v2, 0xc

    #@73
    aput-object v1, v0, v2

    #@75
    .line 187
    new-array v1, v5, [I

    #@77
    const/16 v2, 0xd

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 188
    new-array v1, v5, [I

    #@7d
    const/16 v2, 0xe

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 189
    new-array v1, v5, [I

    #@83
    const/16 v2, 0xf

    #@85
    aput-object v1, v0, v2

    #@87
    .line 190
    new-array v1, v5, [I

    #@89
    const/16 v2, 0x10

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 191
    const v1, 0x4c4b40

    #@90
    const v2, 0x4c4b40

    #@93
    filled-new-array {v9, v9, v1, v2}, [I

    #@96
    move-result-object v1

    #@97
    const/16 v2, 0x11

    #@99
    aput-object v1, v0, v2

    #@9b
    .line 192
    new-array v1, v5, [I

    #@9d
    const/16 v2, 0x12

    #@9f
    aput-object v1, v0, v2

    #@a1
    .line 193
    const v1, 0x4c4b40

    #@a4
    const v2, 0x4c4b40

    #@a7
    filled-new-array {v9, v9, v1, v2}, [I

    #@aa
    move-result-object v1

    #@ab
    const/16 v2, 0x13

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 194
    new-array v1, v5, [I

    #@b1
    const/16 v2, 0x14

    #@b3
    aput-object v1, v0, v2

    #@b5
    .line 195
    new-array v1, v5, [I

    #@b7
    const/16 v2, 0x15

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 171
    sput-object v0, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    #@bd
    .line 205
    const/16 v0, 0xd

    #@bf
    new-array v0, v0, [[I

    #@c1
    .line 207
    filled-new-array {v6, v6, v6}, [I

    #@c4
    move-result-object v1

    #@c5
    aput-object v1, v0, v5

    #@c7
    .line 208
    filled-new-array {v7, v7, v6}, [I

    #@ca
    move-result-object v1

    #@cb
    aput-object v1, v0, v8

    #@cd
    .line 209
    filled-new-array {v7, v6, v6}, [I

    #@d0
    move-result-object v1

    #@d1
    const/4 v2, 0x2

    #@d2
    aput-object v1, v0, v2

    #@d4
    .line 210
    filled-new-array {v7, v7, v7}, [I

    #@d7
    move-result-object v1

    #@d8
    const/4 v2, 0x3

    #@d9
    aput-object v1, v0, v2

    #@db
    .line 211
    filled-new-array {v6, v6, v6}, [I

    #@de
    move-result-object v1

    #@df
    const/4 v2, 0x4

    #@e0
    aput-object v1, v0, v2

    #@e2
    .line 212
    filled-new-array {v6, v6, v6}, [I

    #@e5
    move-result-object v1

    #@e6
    const/4 v2, 0x5

    #@e7
    aput-object v1, v0, v2

    #@e9
    .line 213
    filled-new-array {v7, v7, v7}, [I

    #@ec
    move-result-object v1

    #@ed
    const/4 v2, 0x6

    #@ee
    aput-object v1, v0, v2

    #@f0
    .line 214
    filled-new-array {v6, v6, v6}, [I

    #@f3
    move-result-object v1

    #@f4
    const/4 v2, 0x7

    #@f5
    aput-object v1, v0, v2

    #@f7
    .line 215
    filled-new-array {v7, v7, v7}, [I

    #@fa
    move-result-object v1

    #@fb
    const/16 v2, 0x8

    #@fd
    aput-object v1, v0, v2

    #@ff
    .line 216
    filled-new-array {v6, v6, v6}, [I

    #@102
    move-result-object v1

    #@103
    const/16 v2, 0x9

    #@105
    aput-object v1, v0, v2

    #@107
    .line 217
    filled-new-array {v7, v7, v7}, [I

    #@10a
    move-result-object v1

    #@10b
    const/16 v2, 0xa

    #@10d
    aput-object v1, v0, v2

    #@10f
    .line 218
    filled-new-array {v6, v6, v6}, [I

    #@112
    move-result-object v1

    #@113
    const/16 v2, 0xb

    #@115
    aput-object v1, v0, v2

    #@117
    .line 219
    filled-new-array {v7, v7, v7}, [I

    #@11a
    move-result-object v1

    #@11b
    const/16 v2, 0xc

    #@11d
    aput-object v1, v0, v2

    #@11f
    .line 205
    sput-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    #@121
    .line 227
    const/16 v0, 0xe

    #@123
    new-array v0, v0, [[I

    #@125
    .line 229
    filled-new-array {v5, v5, v5}, [I

    #@128
    move-result-object v1

    #@129
    aput-object v1, v0, v5

    #@12b
    .line 230
    filled-new-array {v6, v6, v6}, [I

    #@12e
    move-result-object v1

    #@12f
    aput-object v1, v0, v8

    #@131
    .line 231
    const/16 v1, 0x3b

    #@133
    const/16 v2, 0x3b

    #@135
    const/16 v3, 0x3c

    #@137
    filled-new-array {v1, v2, v3}, [I

    #@13a
    move-result-object v1

    #@13b
    const/4 v2, 0x2

    #@13c
    aput-object v1, v0, v2

    #@13e
    .line 232
    const/16 v1, 0x58

    #@140
    const/16 v2, 0x59

    #@142
    const/16 v3, 0x5a

    #@144
    filled-new-array {v1, v2, v3}, [I

    #@147
    move-result-object v1

    #@148
    const/4 v2, 0x3

    #@149
    aput-object v1, v0, v2

    #@14b
    .line 233
    const/16 v1, 0x75

    #@14d
    const/16 v2, 0x76

    #@14f
    const/16 v3, 0x77

    #@151
    filled-new-array {v1, v2, v3}, [I

    #@154
    move-result-object v1

    #@155
    const/4 v2, 0x4

    #@156
    aput-object v1, v0, v2

    #@158
    .line 234
    const/16 v1, 0x93

    #@15a
    const/16 v2, 0x94

    #@15c
    const/16 v3, 0x95

    #@15e
    filled-new-array {v1, v2, v3}, [I

    #@161
    move-result-object v1

    #@162
    const/4 v2, 0x5

    #@163
    aput-object v1, v0, v2

    #@165
    .line 235
    const/16 v1, 0x93

    #@167
    const/16 v2, 0x94

    #@169
    const/16 v3, 0x95

    #@16b
    filled-new-array {v1, v2, v3}, [I

    #@16e
    move-result-object v1

    #@16f
    const/4 v2, 0x6

    #@170
    aput-object v1, v0, v2

    #@172
    .line 236
    const/16 v1, 0xb0

    #@174
    const/16 v2, 0xb1

    #@176
    const/16 v3, 0xb2

    #@178
    filled-new-array {v1, v2, v3}, [I

    #@17b
    move-result-object v1

    #@17c
    const/4 v2, 0x7

    #@17d
    aput-object v1, v0, v2

    #@17f
    .line 237
    const/16 v1, 0xce

    #@181
    const/16 v2, 0xcf

    #@183
    const/16 v3, 0xd0

    #@185
    filled-new-array {v1, v2, v3}, [I

    #@188
    move-result-object v1

    #@189
    const/16 v2, 0x8

    #@18b
    aput-object v1, v0, v2

    #@18d
    .line 238
    const/16 v1, 0xeb

    #@18f
    const/16 v2, 0xec

    #@191
    const/16 v3, 0xed

    #@193
    filled-new-array {v1, v2, v3}, [I

    #@196
    move-result-object v1

    #@197
    const/16 v2, 0x9

    #@199
    aput-object v1, v0, v2

    #@19b
    .line 239
    const/16 v1, 0x109

    #@19d
    const/16 v2, 0x10a

    #@19f
    const/16 v3, 0x10b

    #@1a1
    filled-new-array {v1, v2, v3}, [I

    #@1a4
    move-result-object v1

    #@1a5
    const/16 v2, 0xa

    #@1a7
    aput-object v1, v0, v2

    #@1a9
    .line 240
    const/16 v1, 0x126

    #@1ab
    const/16 v2, 0x127

    #@1ad
    const/16 v3, 0x128

    #@1af
    filled-new-array {v1, v2, v3}, [I

    #@1b2
    move-result-object v1

    #@1b3
    const/16 v2, 0xb

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    .line 241
    const/16 v1, 0x144

    #@1b9
    const/16 v2, 0x145

    #@1bb
    const/16 v3, 0x146

    #@1bd
    filled-new-array {v1, v2, v3}, [I

    #@1c0
    move-result-object v1

    #@1c1
    const/16 v2, 0xc

    #@1c3
    aput-object v1, v0, v2

    #@1c5
    .line 242
    const/16 v1, 0x161

    #@1c7
    const/16 v2, 0x162

    #@1c9
    const/16 v3, 0x163

    #@1cb
    filled-new-array {v1, v2, v3}, [I

    #@1ce
    move-result-object v1

    #@1cf
    const/16 v2, 0xd

    #@1d1
    aput-object v1, v0, v2

    #@1d3
    .line 227
    sput-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    #@1d5
    .line 248
    const/16 v0, 0xe

    #@1d7
    new-array v0, v0, [[I

    #@1d9
    .line 250
    filled-new-array {v5, v5, v5}, [I

    #@1dc
    move-result-object v1

    #@1dd
    aput-object v1, v0, v5

    #@1df
    .line 251
    filled-new-array {v6, v6, v6}, [I

    #@1e2
    move-result-object v1

    #@1e3
    aput-object v1, v0, v8

    #@1e5
    .line 252
    const/16 v1, 0x3b

    #@1e7
    const/16 v2, 0x3b

    #@1e9
    const/16 v3, 0x3c

    #@1eb
    filled-new-array {v1, v2, v3}, [I

    #@1ee
    move-result-object v1

    #@1ef
    const/4 v2, 0x2

    #@1f0
    aput-object v1, v0, v2

    #@1f2
    .line 253
    const/16 v1, 0x58

    #@1f4
    const/16 v2, 0x59

    #@1f6
    const/16 v3, 0x5a

    #@1f8
    filled-new-array {v1, v2, v3}, [I

    #@1fb
    move-result-object v1

    #@1fc
    const/4 v2, 0x3

    #@1fd
    aput-object v1, v0, v2

    #@1ff
    .line 254
    const/16 v1, 0x75

    #@201
    const/16 v2, 0x76

    #@203
    const/16 v3, 0x77

    #@205
    filled-new-array {v1, v2, v3}, [I

    #@208
    move-result-object v1

    #@209
    const/4 v2, 0x4

    #@20a
    aput-object v1, v0, v2

    #@20c
    .line 255
    const/16 v1, 0x93

    #@20e
    const/16 v2, 0x94

    #@210
    const/16 v3, 0x95

    #@212
    filled-new-array {v1, v2, v3}, [I

    #@215
    move-result-object v1

    #@216
    const/4 v2, 0x5

    #@217
    aput-object v1, v0, v2

    #@219
    .line 256
    const/16 v1, 0xb1

    #@21b
    const/16 v2, 0xb2

    #@21d
    const/16 v3, 0xb3

    #@21f
    filled-new-array {v1, v2, v3}, [I

    #@222
    move-result-object v1

    #@223
    const/4 v2, 0x6

    #@224
    aput-object v1, v0, v2

    #@226
    .line 257
    const/16 v1, 0xce

    #@228
    const/16 v2, 0xcf

    #@22a
    const/16 v3, 0xd0

    #@22c
    filled-new-array {v1, v2, v3}, [I

    #@22f
    move-result-object v1

    #@230
    const/4 v2, 0x7

    #@231
    aput-object v1, v0, v2

    #@233
    .line 258
    const/16 v1, 0xec

    #@235
    const/16 v2, 0xed

    #@237
    const/16 v3, 0xee

    #@239
    filled-new-array {v1, v2, v3}, [I

    #@23c
    move-result-object v1

    #@23d
    const/16 v2, 0x8

    #@23f
    aput-object v1, v0, v2

    #@241
    .line 259
    const/16 v1, 0x109

    #@243
    const/16 v2, 0x10a

    #@245
    const/16 v3, 0x10b

    #@247
    filled-new-array {v1, v2, v3}, [I

    #@24a
    move-result-object v1

    #@24b
    const/16 v2, 0x9

    #@24d
    aput-object v1, v0, v2

    #@24f
    .line 260
    const/16 v1, 0x127

    #@251
    const/16 v2, 0x128

    #@253
    const/16 v3, 0x129

    #@255
    filled-new-array {v1, v2, v3}, [I

    #@258
    move-result-object v1

    #@259
    const/16 v2, 0xa

    #@25b
    aput-object v1, v0, v2

    #@25d
    .line 261
    const/16 v1, 0x144

    #@25f
    const/16 v2, 0x145

    #@261
    const/16 v3, 0x146

    #@263
    filled-new-array {v1, v2, v3}, [I

    #@266
    move-result-object v1

    #@267
    const/16 v2, 0xb

    #@269
    aput-object v1, v0, v2

    #@26b
    .line 262
    const/16 v1, 0x162

    #@26d
    const/16 v2, 0x163

    #@26f
    const/16 v3, 0x164

    #@271
    filled-new-array {v1, v2, v3}, [I

    #@274
    move-result-object v1

    #@275
    const/16 v2, 0xc

    #@277
    aput-object v1, v0, v2

    #@279
    .line 263
    const/16 v1, 0x17f

    #@27b
    const/16 v2, 0x180

    #@27d
    const/16 v3, 0x181

    #@27f
    filled-new-array {v1, v2, v3}, [I

    #@282
    move-result-object v1

    #@283
    const/16 v2, 0xd

    #@285
    aput-object v1, v0, v2

    #@287
    .line 248
    sput-object v0, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    #@289
    .line 270
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@28b
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@28e
    sput-object v0, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@290
    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 283
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 282
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 362
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 363
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@11
    .line 364
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@15
    .line 365
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@19
    .line 361
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 403
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 404
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@11
    .line 405
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@15
    .line 406
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@19
    .line 407
    const/16 v0, 0xb

    #@1b
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@1e
    .line 408
    const/16 v0, 0xc

    #@20
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@23
    .line 409
    const/16 v0, 0xd

    #@25
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@28
    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 295
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    #@a
    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    #@a
    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 317
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 377
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 378
    invoke-virtual {p0, p1}, Landroid/icu/util/HebrewCalendar;->setTime(Ljava/util/Date;)V

    #@10
    .line 376
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 306
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 305
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 692
    mul-int/lit8 v2, p0, 0xc

    #@3
    add-int/lit8 v2, v2, 0x11

    #@5
    rem-int/lit8 v0, v2, 0x13

    #@7
    .line 693
    .local v0, "x":I
    if-gez v0, :cond_1

    #@9
    const/4 v2, -0x7

    #@a
    :goto_0
    if-lt v0, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    return v1

    #@e
    :cond_1
    const/16 v2, 0xc

    #@10
    goto :goto_0
.end method

.method private static monthsInYear(I)I
    .locals 1
    .param p0, "year"    # I

    #@0
    .prologue
    .line 697
    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0xd

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/16 v0, 0xc

    #@b
    goto :goto_0
.end method

.method private static startOfYear(I)J
    .locals 10
    .param p0, "year"    # I

    #@0
    .prologue
    .line 606
    sget-object v6, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@2
    int-to-long v8, p0

    #@3
    invoke-virtual {v6, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    #@6
    move-result-wide v0

    #@7
    .line 608
    .local v0, "day":J
    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@9
    cmp-long v6, v0, v6

    #@b
    if-nez v6, :cond_4

    #@d
    .line 609
    mul-int/lit16 v6, p0, 0xeb

    #@f
    add-int/lit16 v6, v6, -0xea

    #@11
    div-int/lit8 v4, v6, 0x13

    #@13
    .line 611
    .local v4, "months":I
    int-to-long v6, v4

    #@14
    const-wide/16 v8, 0x35b9

    #@16
    mul-long/2addr v6, v8

    #@17
    const-wide/16 v8, 0x2f34

    #@19
    add-long v2, v6, v8

    #@1b
    .line 612
    .local v2, "frac":J
    mul-int/lit8 v6, v4, 0x1d

    #@1d
    int-to-long v6, v6

    #@1e
    const-wide/16 v8, 0x6540

    #@20
    div-long v8, v2, v8

    #@22
    add-long v0, v6, v8

    #@24
    .line 613
    const-wide/16 v6, 0x6540

    #@26
    rem-long/2addr v2, v6

    #@27
    .line 615
    const-wide/16 v6, 0x7

    #@29
    rem-long v6, v0, v6

    #@2b
    long-to-int v5, v6

    #@2c
    .line 617
    .local v5, "wd":I
    const/4 v6, 0x2

    #@2d
    if-eq v5, v6, :cond_0

    #@2f
    const/4 v6, 0x4

    #@30
    if-ne v5, v6, :cond_5

    #@32
    .line 619
    :cond_0
    :goto_0
    const-wide/16 v6, 0x1

    #@34
    add-long/2addr v0, v6

    #@35
    .line 620
    const-wide/16 v6, 0x7

    #@37
    rem-long v6, v0, v6

    #@39
    long-to-int v5, v6

    #@3a
    .line 622
    :cond_1
    const/4 v6, 0x1

    #@3b
    if-ne v5, v6, :cond_2

    #@3d
    const-wide/16 v6, 0x4014

    #@3f
    cmp-long v6, v2, v6

    #@41
    if-lez v6, :cond_2

    #@43
    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_6

    #@49
    .line 628
    :cond_2
    if-nez v5, :cond_3

    #@4b
    const-wide/16 v6, 0x5ae5

    #@4d
    cmp-long v6, v2, v6

    #@4f
    if-lez v6, :cond_3

    #@51
    add-int/lit8 v6, p0, -0x1

    #@53
    invoke-static {v6}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_3

    #@59
    .line 632
    const-wide/16 v6, 0x1

    #@5b
    add-long/2addr v0, v6

    #@5c
    .line 634
    :cond_3
    :goto_1
    sget-object v6, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@5e
    int-to-long v8, p0

    #@5f
    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    #@62
    .line 636
    .end local v2    # "frac":J
    .end local v4    # "months":I
    .end local v5    # "wd":I
    :cond_4
    return-wide v0

    #@63
    .line 617
    .restart local v2    # "frac":J
    .restart local v4    # "months":I
    .restart local v5    # "wd":I
    :cond_5
    const/4 v6, 0x6

    #@64
    if-ne v5, v6, :cond_1

    #@66
    goto :goto_0

    #@67
    .line 626
    :cond_6
    const-wide/16 v6, 0x2

    #@69
    add-long/2addr v0, v6

    #@6a
    .line 622
    goto :goto_1
.end method

.method private final yearType(I)I
    .locals 5
    .param p1, "year"    # I

    #@0
    .prologue
    .line 659
    invoke-virtual {p0, p1}, Landroid/icu/util/HebrewCalendar;->handleGetYearLength(I)I

    #@3
    move-result v1

    #@4
    .line 661
    .local v1, "yearLength":I
    const/16 v2, 0x17c

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 662
    add-int/lit8 v1, v1, -0x1e

    #@a
    .line 665
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 667
    .local v0, "type":I
    packed-switch v1, :pswitch_data_0

    #@e
    .line 675
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Illegal year length "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " in year "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 669
    :pswitch_0
    const/4 v0, 0x0

    #@34
    .line 678
    :goto_0
    return v0

    #@35
    .line 671
    :pswitch_1
    const/4 v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 673
    :pswitch_2
    const/4 v0, 0x2

    #@38
    goto :goto_0

    #@39
    .line 667
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x161
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(II)V
    .locals 7
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x5

    #@3
    .line 448
    packed-switch p1, :pswitch_data_0

    #@6
    .line 495
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    #@9
    .line 446
    :goto_0
    return-void

    #@a
    .line 456
    :pswitch_0
    invoke-virtual {p0, v6}, Landroid/icu/util/HebrewCalendar;->get(I)I

    #@d
    move-result v1

    #@e
    .line 457
    .local v1, "month":I
    invoke-virtual {p0, v5}, Landroid/icu/util/HebrewCalendar;->get(I)I

    #@11
    move-result v2

    #@12
    .line 459
    .local v2, "year":I
    if-lez p2, :cond_5

    #@14
    .line 460
    if-ge v1, v4, :cond_2

    #@16
    const/4 v0, 0x1

    #@17
    .line 461
    .local v0, "acrossAdar1":Z
    :goto_1
    add-int/2addr v1, p2

    #@18
    .line 463
    :goto_2
    if-eqz v0, :cond_0

    #@1a
    if-lt v1, v4, :cond_0

    #@1c
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_3

    #@22
    .line 466
    :cond_0
    :goto_3
    const/16 v3, 0xc

    #@24
    if-gt v1, v3, :cond_4

    #@26
    .line 488
    :cond_1
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@29
    .line 489
    invoke-virtual {p0, v5, v2}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@2c
    .line 490
    invoke-virtual {p0, v4}, Landroid/icu/util/HebrewCalendar;->pinField(I)V

    #@2f
    goto :goto_0

    #@30
    .line 460
    .end local v0    # "acrossAdar1":Z
    :cond_2
    const/4 v0, 0x0

    #@31
    .restart local v0    # "acrossAdar1":Z
    goto :goto_1

    #@32
    .line 464
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_3

    #@35
    .line 469
    :cond_4
    add-int/lit8 v1, v1, -0xd

    #@37
    .line 470
    add-int/lit8 v2, v2, 0x1

    #@39
    .line 471
    const/4 v0, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 474
    .end local v0    # "acrossAdar1":Z
    :cond_5
    if-le v1, v4, :cond_7

    #@3d
    const/4 v0, 0x1

    #@3e
    .line 475
    .restart local v0    # "acrossAdar1":Z
    :goto_4
    add-int/2addr v1, p2

    #@3f
    .line 477
    :goto_5
    if-eqz v0, :cond_6

    #@41
    if-gt v1, v4, :cond_6

    #@43
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_8

    #@49
    .line 480
    :cond_6
    :goto_6
    if-gez v1, :cond_1

    #@4b
    .line 483
    add-int/lit8 v1, v1, 0xd

    #@4d
    .line 484
    add-int/lit8 v2, v2, -0x1

    #@4f
    .line 485
    const/4 v0, 0x1

    #@50
    goto :goto_5

    #@51
    .line 474
    .end local v0    # "acrossAdar1":Z
    :cond_7
    const/4 v0, 0x0

    #@52
    .restart local v0    # "acrossAdar1":Z
    goto :goto_4

    #@53
    .line 478
    :cond_8
    add-int/lit8 v1, v1, -0x1

    #@55
    goto :goto_6

    #@56
    .line 448
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 880
    const-string/jumbo v0, "hebrew"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 18
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 793
    const v14, 0x54f5d

    #@3
    sub-int v14, p1, v14

    #@5
    int-to-long v2, v14

    #@6
    .line 794
    .local v2, "d":J
    const-wide/16 v14, 0x6540

    #@8
    mul-long/2addr v14, v2

    #@9
    const-wide/32 v16, 0xbadf9

    #@c
    div-long v6, v14, v16

    #@e
    .line 795
    .local v6, "m":J
    const-wide/16 v14, 0x13

    #@10
    mul-long/2addr v14, v6

    #@11
    const-wide/16 v16, 0xea

    #@13
    add-long v14, v14, v16

    #@15
    const-wide/16 v16, 0xeb

    #@17
    div-long v14, v14, v16

    #@19
    long-to-int v14, v14

    #@1a
    add-int/lit8 v10, v14, 0x1

    #@1c
    .line 796
    .local v10, "year":I
    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    #@1f
    move-result-wide v12

    #@20
    .line 797
    .local v12, "ys":J
    sub-long v14, v2, v12

    #@22
    long-to-int v5, v14

    #@23
    .line 800
    .local v5, "dayOfYear":I
    :goto_0
    const/4 v14, 0x1

    #@24
    if-ge v5, v14, :cond_0

    #@26
    .line 801
    add-int/lit8 v10, v10, -0x1

    #@28
    .line 802
    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    #@2b
    move-result-wide v12

    #@2c
    .line 803
    sub-long v14, v2, v12

    #@2e
    long-to-int v5, v14

    #@2f
    goto :goto_0

    #@30
    .line 807
    :cond_0
    move-object/from16 v0, p0

    #@32
    invoke-direct {v0, v10}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    #@35
    move-result v11

    #@36
    .line 808
    .local v11, "yearType":I
    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@39
    move-result v14

    #@3a
    if-eqz v14, :cond_1

    #@3c
    sget-object v9, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    #@3e
    .line 810
    .local v9, "monthStart":[[I
    :goto_1
    const/4 v8, 0x0

    #@3f
    .line 811
    .local v8, "month":I
    :goto_2
    aget-object v14, v9, v8

    #@41
    aget v14, v14, v11

    #@43
    if-le v5, v14, :cond_2

    #@45
    .line 812
    add-int/lit8 v8, v8, 0x1

    #@47
    goto :goto_2

    #@48
    .line 808
    .end local v8    # "month":I
    .end local v9    # "monthStart":[[I
    :cond_1
    sget-object v9, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    #@4a
    .restart local v9    # "monthStart":[[I
    goto :goto_1

    #@4b
    .line 814
    .restart local v8    # "month":I
    :cond_2
    add-int/lit8 v8, v8, -0x1

    #@4d
    .line 815
    aget-object v14, v9, v8

    #@4f
    aget v14, v14, v11

    #@51
    sub-int v4, v5, v14

    #@53
    .line 817
    .local v4, "dayOfMonth":I
    const/4 v14, 0x0

    #@54
    const/4 v15, 0x0

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-virtual {v0, v14, v15}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@5a
    .line 818
    const/4 v14, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    invoke-virtual {v0, v14, v10}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@60
    .line 819
    const/16 v14, 0x13

    #@62
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v14, v10}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@67
    .line 820
    const/4 v14, 0x2

    #@68
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v14, v8}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@6d
    .line 821
    const/4 v14, 0x5

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v14, v4}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@73
    .line 822
    const/4 v14, 0x6

    #@74
    move-object/from16 v0, p0

    #@76
    invoke-virtual {v0, v14, v5}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    #@79
    .line 792
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 6
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 854
    :goto_0
    if-gez p2, :cond_3

    #@2
    .line 855
    add-int/lit8 p1, p1, -0x1

    #@4
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    #@7
    move-result v3

    #@8
    add-int/2addr p2, v3

    #@9
    goto :goto_0

    #@a
    .line 858
    .end local p1    # "eyear":I
    .local v2, "eyear":I
    :goto_1
    const/16 v3, 0xc

    #@c
    if-le p2, v3, :cond_0

    #@e
    .line 859
    add-int/lit8 p1, v2, 0x1

    #@10
    .end local v2    # "eyear":I
    .restart local p1    # "eyear":I
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    #@13
    move-result v3

    #@14
    sub-int/2addr p2, v3

    #@15
    move v2, p1

    #@16
    .end local p1    # "eyear":I
    .restart local v2    # "eyear":I
    goto :goto_1

    #@17
    .line 862
    :cond_0
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    #@1a
    move-result-wide v0

    #@1b
    .line 864
    .local v0, "day":J
    if-eqz p2, :cond_1

    #@1d
    .line 865
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 866
    sget-object v3, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    #@25
    aget-object v3, v3, p2

    #@27
    invoke-direct {p0, v2}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    #@2a
    move-result v4

    #@2b
    aget v3, v3, v4

    #@2d
    int-to-long v4, v3

    #@2e
    add-long/2addr v0, v4

    #@2f
    .line 872
    :cond_1
    :goto_2
    const-wide/32 v4, 0x54f5d

    #@32
    add-long/2addr v4, v0

    #@33
    long-to-int v3, v4

    #@34
    return v3

    #@35
    .line 868
    :cond_2
    sget-object v3, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    #@37
    aget-object v3, v3, p2

    #@39
    invoke-direct {p0, v2}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    #@3c
    move-result v4

    #@3d
    aget v3, v3, v4

    #@3f
    int-to-long v4, v3

    #@40
    add-long/2addr v0, v4

    #@41
    goto :goto_2

    #@42
    .end local v0    # "day":J
    .end local v2    # "eyear":I
    .restart local p1    # "eyear":I
    :cond_3
    move v2, p1

    #@43
    .end local p1    # "eyear":I
    .restart local v2    # "eyear":I
    goto :goto_1
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x13

    #@2
    const/4 v2, 0x1

    #@3
    .line 834
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/HebrewCalendar;->newerField(II)I

    #@6
    move-result v1

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 835
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/HebrewCalendar;->internalGet(II)I

    #@c
    move-result v0

    #@d
    .line 839
    .local v0, "year":I
    :goto_0
    return v0

    #@e
    .line 837
    .end local v0    # "year":I
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/HebrewCalendar;->internalGet(II)I

    #@11
    move-result v0

    #@12
    .restart local v0    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    .line 708
    sget-object v0, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    aget v0, v0, p2

    #@6
    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 3
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 722
    :goto_0
    if-gez p2, :cond_1

    #@3
    .line 723
    add-int/lit8 p1, p1, -0x1

    #@5
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    #@8
    move-result v1

    #@9
    add-int/2addr p2, v1

    #@a
    goto :goto_0

    #@b
    .line 726
    .end local p1    # "extendedYear":I
    .local v0, "extendedYear":I
    :goto_1
    const/16 v1, 0xc

    #@d
    if-le p2, v1, :cond_0

    #@f
    .line 727
    add-int/lit8 p1, v0, 0x1

    #@11
    .end local v0    # "extendedYear":I
    .restart local p1    # "extendedYear":I
    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    #@14
    move-result v1

    #@15
    sub-int/2addr p2, v1

    #@16
    move v0, p1

    #@17
    .end local p1    # "extendedYear":I
    .restart local v0    # "extendedYear":I
    goto :goto_1

    #@18
    .line 730
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@1b
    .line 738
    sget-object v1, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    #@1d
    aget-object v1, v1, p2

    #@1f
    aget v1, v1, v2

    #@21
    return v1

    #@22
    .line 734
    :pswitch_0
    sget-object v1, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    #@24
    aget-object v1, v1, p2

    #@26
    invoke-direct {p0, v0}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    #@29
    move-result v2

    #@2a
    aget v1, v1, v2

    #@2c
    return v1

    #@2d
    .end local v0    # "extendedYear":I
    .restart local p1    # "extendedYear":I
    :cond_1
    move v0, p1

    #@2e
    .end local p1    # "extendedYear":I
    .restart local v0    # "extendedYear":I
    goto :goto_1

    #@2f
    .line 730
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleGetYearLength(I)I
    .locals 4
    .param p1, "eyear"    # I

    #@0
    .prologue
    .line 747
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    #@5
    move-result-wide v0

    #@6
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    #@9
    move-result-wide v2

    #@a
    sub-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method public roll(II)V
    .locals 8
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x5

    #@2
    .line 534
    packed-switch p1, :pswitch_data_0

    #@5
    .line 559
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    #@8
    .line 532
    return-void

    #@9
    .line 537
    :pswitch_0
    invoke-virtual {p0, v7}, Landroid/icu/util/HebrewCalendar;->get(I)I

    #@c
    move-result v1

    #@d
    .line 538
    .local v1, "month":I
    const/4 v5, 0x1

    #@e
    invoke-virtual {p0, v5}, Landroid/icu/util/HebrewCalendar;->get(I)I

    #@11
    move-result v3

    #@12
    .line 540
    .local v3, "year":I
    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@15
    move-result v0

    #@16
    .line 541
    .local v0, "leapYear":Z
    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    #@19
    move-result v4

    #@1a
    .line 542
    .local v4, "yearLength":I
    rem-int v5, p2, v4

    #@1c
    add-int v2, v1, v5

    #@1e
    .line 547
    .local v2, "newMonth":I
    if-nez v0, :cond_0

    #@20
    .line 548
    if-lez p2, :cond_1

    #@22
    if-ge v1, v6, :cond_1

    #@24
    if-lt v2, v6, :cond_1

    #@26
    .line 549
    add-int/lit8 v2, v2, 0x1

    #@28
    .line 554
    :cond_0
    :goto_0
    add-int/lit8 v5, v2, 0xd

    #@2a
    rem-int/lit8 v5, v5, 0xd

    #@2c
    invoke-virtual {p0, v7, v5}, Landroid/icu/util/HebrewCalendar;->set(II)V

    #@2f
    .line 555
    invoke-virtual {p0, v6}, Landroid/icu/util/HebrewCalendar;->pinField(I)V

    #@32
    .line 556
    return-void

    #@33
    .line 550
    :cond_1
    if-gez p2, :cond_0

    #@35
    if-le v1, v6, :cond_0

    #@37
    if-gt v2, v6, :cond_0

    #@39
    .line 551
    add-int/lit8 v2, v2, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 534
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected validateField(I)V
    .locals 2
    .param p1, "field"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 760
    if-ne p1, v1, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 764
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->validateField(I)V

    #@10
    .line 759
    return-void

    #@11
    .line 760
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/util/HebrewCalendar;->internalGet(I)I

    #@14
    move-result v0

    #@15
    const/4 v1, 0x5

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "MONTH cannot be ADAR_1(5) except leap years"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method
