.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;
.super Ljava/lang/Object;
.source "JpegUtil.java"


# static fields
.field private static final JPEG_QUANT_TABLES:[[B

.field private static final imageIoScaleFactor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x12

    #@2
    const/16 v8, 0x10

    #@4
    const/16 v7, 0xe

    #@6
    const/16 v6, 0x18

    #@8
    const/16 v5, 0x63

    #@a
    const/4 v0, 0x2

    #@b
    .line 31
    new-array v0, v0, [[B

    #@d
    const/4 v1, 0x0

    #@e
    const/16 v2, 0x40

    #@10
    new-array v2, v2, [B

    #@12
    const/4 v3, 0x0

    #@13
    aput-byte v8, v2, v3

    #@15
    const/4 v3, 0x1

    #@16
    const/16 v4, 0xb

    #@18
    aput-byte v4, v2, v3

    #@1a
    const/4 v3, 0x2

    #@1b
    const/16 v4, 0xc

    #@1d
    aput-byte v4, v2, v3

    #@1f
    const/4 v3, 0x3

    #@20
    aput-byte v7, v2, v3

    #@22
    const/4 v3, 0x4

    #@23
    const/16 v4, 0xc

    #@25
    aput-byte v4, v2, v3

    #@27
    const/4 v3, 0x5

    #@28
    const/16 v4, 0xa

    #@2a
    aput-byte v4, v2, v3

    #@2c
    const/4 v3, 0x6

    #@2d
    aput-byte v8, v2, v3

    #@2f
    const/4 v3, 0x7

    #@30
    aput-byte v7, v2, v3

    #@32
    const/16 v3, 0x8

    #@34
    const/16 v4, 0xd

    #@36
    aput-byte v4, v2, v3

    #@38
    const/16 v3, 0x9

    #@3a
    aput-byte v7, v2, v3

    #@3c
    const/16 v3, 0xa

    #@3e
    aput-byte v9, v2, v3

    #@40
    const/16 v3, 0xb

    #@42
    const/16 v4, 0x11

    #@44
    aput-byte v4, v2, v3

    #@46
    const/16 v3, 0xc

    #@48
    aput-byte v8, v2, v3

    #@4a
    const/16 v3, 0xd

    #@4c
    const/16 v4, 0x13

    #@4e
    aput-byte v4, v2, v3

    #@50
    aput-byte v6, v2, v7

    #@52
    const/16 v3, 0xf

    #@54
    const/16 v4, 0x28

    #@56
    aput-byte v4, v2, v3

    #@58
    const/16 v3, 0x1a

    #@5a
    aput-byte v3, v2, v8

    #@5c
    const/16 v3, 0x11

    #@5e
    aput-byte v6, v2, v3

    #@60
    const/16 v3, 0x16

    #@62
    aput-byte v3, v2, v9

    #@64
    const/16 v3, 0x13

    #@66
    const/16 v4, 0x16

    #@68
    aput-byte v4, v2, v3

    #@6a
    const/16 v3, 0x14

    #@6c
    aput-byte v6, v2, v3

    #@6e
    const/16 v3, 0x15

    #@70
    const/16 v4, 0x31

    #@72
    aput-byte v4, v2, v3

    #@74
    const/16 v3, 0x16

    #@76
    const/16 v4, 0x23

    #@78
    aput-byte v4, v2, v3

    #@7a
    const/16 v3, 0x17

    #@7c
    const/16 v4, 0x25

    #@7e
    aput-byte v4, v2, v3

    #@80
    const/16 v3, 0x1d

    #@82
    aput-byte v3, v2, v6

    #@84
    const/16 v3, 0x19

    #@86
    const/16 v4, 0x28

    #@88
    aput-byte v4, v2, v3

    #@8a
    const/16 v3, 0x1a

    #@8c
    const/16 v4, 0x3a

    #@8e
    aput-byte v4, v2, v3

    #@90
    const/16 v3, 0x1b

    #@92
    const/16 v4, 0x33

    #@94
    aput-byte v4, v2, v3

    #@96
    const/16 v3, 0x1c

    #@98
    const/16 v4, 0x3d

    #@9a
    aput-byte v4, v2, v3

    #@9c
    const/16 v3, 0x1d

    #@9e
    const/16 v4, 0x3c

    #@a0
    aput-byte v4, v2, v3

    #@a2
    const/16 v3, 0x1e

    #@a4
    const/16 v4, 0x39

    #@a6
    aput-byte v4, v2, v3

    #@a8
    const/16 v3, 0x1f

    #@aa
    const/16 v4, 0x33

    #@ac
    aput-byte v4, v2, v3

    #@ae
    const/16 v3, 0x20

    #@b0
    const/16 v4, 0x38

    #@b2
    aput-byte v4, v2, v3

    #@b4
    const/16 v3, 0x21

    #@b6
    const/16 v4, 0x37

    #@b8
    aput-byte v4, v2, v3

    #@ba
    const/16 v3, 0x22

    #@bc
    const/16 v4, 0x40

    #@be
    aput-byte v4, v2, v3

    #@c0
    const/16 v3, 0x23

    #@c2
    const/16 v4, 0x48

    #@c4
    aput-byte v4, v2, v3

    #@c6
    const/16 v3, 0x24

    #@c8
    const/16 v4, 0x5c

    #@ca
    aput-byte v4, v2, v3

    #@cc
    const/16 v3, 0x25

    #@ce
    const/16 v4, 0x4e

    #@d0
    aput-byte v4, v2, v3

    #@d2
    const/16 v3, 0x26

    #@d4
    const/16 v4, 0x40

    #@d6
    aput-byte v4, v2, v3

    #@d8
    const/16 v3, 0x27

    #@da
    const/16 v4, 0x44

    #@dc
    aput-byte v4, v2, v3

    #@de
    const/16 v3, 0x28

    #@e0
    const/16 v4, 0x57

    #@e2
    aput-byte v4, v2, v3

    #@e4
    const/16 v3, 0x29

    #@e6
    const/16 v4, 0x45

    #@e8
    aput-byte v4, v2, v3

    #@ea
    const/16 v3, 0x2a

    #@ec
    const/16 v4, 0x37

    #@ee
    aput-byte v4, v2, v3

    #@f0
    const/16 v3, 0x2b

    #@f2
    const/16 v4, 0x38

    #@f4
    aput-byte v4, v2, v3

    #@f6
    const/16 v3, 0x2c

    #@f8
    const/16 v4, 0x50

    #@fa
    aput-byte v4, v2, v3

    #@fc
    const/16 v3, 0x2d

    #@fe
    const/16 v4, 0x6d

    #@100
    aput-byte v4, v2, v3

    #@102
    const/16 v3, 0x2e

    #@104
    const/16 v4, 0x51

    #@106
    aput-byte v4, v2, v3

    #@108
    const/16 v3, 0x2f

    #@10a
    const/16 v4, 0x57

    #@10c
    aput-byte v4, v2, v3

    #@10e
    const/16 v3, 0x30

    #@110
    const/16 v4, 0x5f

    #@112
    aput-byte v4, v2, v3

    #@114
    const/16 v3, 0x31

    #@116
    const/16 v4, 0x62

    #@118
    aput-byte v4, v2, v3

    #@11a
    const/16 v3, 0x32

    #@11c
    const/16 v4, 0x67

    #@11e
    aput-byte v4, v2, v3

    #@120
    const/16 v3, 0x33

    #@122
    const/16 v4, 0x68

    #@124
    aput-byte v4, v2, v3

    #@126
    const/16 v3, 0x34

    #@128
    const/16 v4, 0x67

    #@12a
    aput-byte v4, v2, v3

    #@12c
    const/16 v3, 0x35

    #@12e
    const/16 v4, 0x3e

    #@130
    aput-byte v4, v2, v3

    #@132
    const/16 v3, 0x36

    #@134
    const/16 v4, 0x4d

    #@136
    aput-byte v4, v2, v3

    #@138
    const/16 v3, 0x37

    #@13a
    const/16 v4, 0x71

    #@13c
    aput-byte v4, v2, v3

    #@13e
    const/16 v3, 0x38

    #@140
    const/16 v4, 0x79

    #@142
    aput-byte v4, v2, v3

    #@144
    const/16 v3, 0x39

    #@146
    const/16 v4, 0x70

    #@148
    aput-byte v4, v2, v3

    #@14a
    const/16 v3, 0x3a

    #@14c
    const/16 v4, 0x64

    #@14e
    aput-byte v4, v2, v3

    #@150
    const/16 v3, 0x3b

    #@152
    const/16 v4, 0x78

    #@154
    aput-byte v4, v2, v3

    #@156
    const/16 v3, 0x3c

    #@158
    const/16 v4, 0x5c

    #@15a
    aput-byte v4, v2, v3

    #@15c
    const/16 v3, 0x3d

    #@15e
    const/16 v4, 0x65

    #@160
    aput-byte v4, v2, v3

    #@162
    const/16 v3, 0x3e

    #@164
    const/16 v4, 0x67

    #@166
    aput-byte v4, v2, v3

    #@168
    const/16 v3, 0x3f

    #@16a
    aput-byte v5, v2, v3

    #@16c
    aput-object v2, v0, v1

    #@16e
    const/4 v1, 0x1

    #@16f
    const/16 v2, 0x40

    #@171
    new-array v2, v2, [B

    #@173
    const/4 v3, 0x0

    #@174
    const/16 v4, 0x11

    #@176
    aput-byte v4, v2, v3

    #@178
    const/4 v3, 0x1

    #@179
    aput-byte v9, v2, v3

    #@17b
    const/4 v3, 0x2

    #@17c
    aput-byte v9, v2, v3

    #@17e
    const/4 v3, 0x3

    #@17f
    aput-byte v6, v2, v3

    #@181
    const/4 v3, 0x4

    #@182
    const/16 v4, 0x15

    #@184
    aput-byte v4, v2, v3

    #@186
    const/4 v3, 0x5

    #@187
    aput-byte v6, v2, v3

    #@189
    const/4 v3, 0x6

    #@18a
    const/16 v4, 0x2f

    #@18c
    aput-byte v4, v2, v3

    #@18e
    const/4 v3, 0x7

    #@18f
    const/16 v4, 0x1a

    #@191
    aput-byte v4, v2, v3

    #@193
    const/16 v3, 0x8

    #@195
    const/16 v4, 0x1a

    #@197
    aput-byte v4, v2, v3

    #@199
    const/16 v3, 0x9

    #@19b
    const/16 v4, 0x2f

    #@19d
    aput-byte v4, v2, v3

    #@19f
    const/16 v3, 0xa

    #@1a1
    aput-byte v5, v2, v3

    #@1a3
    const/16 v3, 0xb

    #@1a5
    const/16 v4, 0x42

    #@1a7
    aput-byte v4, v2, v3

    #@1a9
    const/16 v3, 0xc

    #@1ab
    const/16 v4, 0x38

    #@1ad
    aput-byte v4, v2, v3

    #@1af
    const/16 v3, 0xd

    #@1b1
    const/16 v4, 0x42

    #@1b3
    aput-byte v4, v2, v3

    #@1b5
    aput-byte v5, v2, v7

    #@1b7
    const/16 v3, 0xf

    #@1b9
    aput-byte v5, v2, v3

    #@1bb
    aput-byte v5, v2, v8

    #@1bd
    const/16 v3, 0x11

    #@1bf
    aput-byte v5, v2, v3

    #@1c1
    aput-byte v5, v2, v9

    #@1c3
    const/16 v3, 0x13

    #@1c5
    aput-byte v5, v2, v3

    #@1c7
    const/16 v3, 0x14

    #@1c9
    aput-byte v5, v2, v3

    #@1cb
    const/16 v3, 0x15

    #@1cd
    aput-byte v5, v2, v3

    #@1cf
    const/16 v3, 0x16

    #@1d1
    aput-byte v5, v2, v3

    #@1d3
    const/16 v3, 0x17

    #@1d5
    aput-byte v5, v2, v3

    #@1d7
    aput-byte v5, v2, v6

    #@1d9
    const/16 v3, 0x19

    #@1db
    aput-byte v5, v2, v3

    #@1dd
    const/16 v3, 0x1a

    #@1df
    aput-byte v5, v2, v3

    #@1e1
    const/16 v3, 0x1b

    #@1e3
    aput-byte v5, v2, v3

    #@1e5
    const/16 v3, 0x1c

    #@1e7
    aput-byte v5, v2, v3

    #@1e9
    const/16 v3, 0x1d

    #@1eb
    aput-byte v5, v2, v3

    #@1ed
    const/16 v3, 0x1e

    #@1ef
    aput-byte v5, v2, v3

    #@1f1
    const/16 v3, 0x1f

    #@1f3
    aput-byte v5, v2, v3

    #@1f5
    const/16 v3, 0x20

    #@1f7
    aput-byte v5, v2, v3

    #@1f9
    const/16 v3, 0x21

    #@1fb
    aput-byte v5, v2, v3

    #@1fd
    const/16 v3, 0x22

    #@1ff
    aput-byte v5, v2, v3

    #@201
    const/16 v3, 0x23

    #@203
    aput-byte v5, v2, v3

    #@205
    const/16 v3, 0x24

    #@207
    aput-byte v5, v2, v3

    #@209
    const/16 v3, 0x25

    #@20b
    aput-byte v5, v2, v3

    #@20d
    const/16 v3, 0x26

    #@20f
    aput-byte v5, v2, v3

    #@211
    const/16 v3, 0x27

    #@213
    aput-byte v5, v2, v3

    #@215
    const/16 v3, 0x28

    #@217
    aput-byte v5, v2, v3

    #@219
    const/16 v3, 0x29

    #@21b
    aput-byte v5, v2, v3

    #@21d
    const/16 v3, 0x2a

    #@21f
    aput-byte v5, v2, v3

    #@221
    const/16 v3, 0x2b

    #@223
    aput-byte v5, v2, v3

    #@225
    const/16 v3, 0x2c

    #@227
    aput-byte v5, v2, v3

    #@229
    const/16 v3, 0x2d

    #@22b
    aput-byte v5, v2, v3

    #@22d
    const/16 v3, 0x2e

    #@22f
    aput-byte v5, v2, v3

    #@231
    const/16 v3, 0x2f

    #@233
    aput-byte v5, v2, v3

    #@235
    const/16 v3, 0x30

    #@237
    aput-byte v5, v2, v3

    #@239
    const/16 v3, 0x31

    #@23b
    aput-byte v5, v2, v3

    #@23d
    const/16 v3, 0x32

    #@23f
    aput-byte v5, v2, v3

    #@241
    const/16 v3, 0x33

    #@243
    aput-byte v5, v2, v3

    #@245
    const/16 v3, 0x34

    #@247
    aput-byte v5, v2, v3

    #@249
    const/16 v3, 0x35

    #@24b
    aput-byte v5, v2, v3

    #@24d
    const/16 v3, 0x36

    #@24f
    aput-byte v5, v2, v3

    #@251
    const/16 v3, 0x37

    #@253
    aput-byte v5, v2, v3

    #@255
    const/16 v3, 0x38

    #@257
    aput-byte v5, v2, v3

    #@259
    const/16 v3, 0x39

    #@25b
    aput-byte v5, v2, v3

    #@25d
    const/16 v3, 0x3a

    #@25f
    aput-byte v5, v2, v3

    #@261
    const/16 v3, 0x3b

    #@263
    aput-byte v5, v2, v3

    #@265
    const/16 v3, 0x3c

    #@267
    aput-byte v5, v2, v3

    #@269
    const/16 v3, 0x3d

    #@26b
    aput-byte v5, v2, v3

    #@26d
    const/16 v3, 0x3e

    #@26f
    aput-byte v5, v2, v3

    #@271
    const/16 v3, 0x3f

    #@273
    aput-byte v5, v2, v3

    #@275
    aput-object v2, v0, v1

    #@277
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    #@279
    const/16 v0, 0x65

    #@27b
    .line 81
    new-array v0, v0, [I

    #@27d
    const/4 v1, 0x0

    #@27e
    const/4 v2, -0x1

    #@27f
    aput v2, v0, v1

    #@281
    const/4 v1, 0x1

    #@282
    const v2, 0x64000001

    #@285
    aput v2, v0, v1

    #@287
    const/4 v1, 0x2

    #@288
    const v2, 0x32000001

    #@28b
    aput v2, v0, v1

    #@28d
    const/4 v1, 0x3

    #@28e
    const v2, 0x21555581

    #@291
    aput v2, v0, v1

    #@293
    const/4 v1, 0x4

    #@294
    const v2, 0x19000001

    #@297
    aput v2, v0, v1

    #@299
    const/4 v1, 0x5

    #@29a
    const v2, 0x14000001

    #@29d
    aput v2, v0, v1

    #@29f
    const/4 v1, 0x6

    #@2a0
    const v2, 0x10aaaac1

    #@2a3
    aput v2, v0, v1

    #@2a5
    const/4 v1, 0x7

    #@2a6
    const v2, 0xe492491

    #@2a9
    aput v2, v0, v1

    #@2ab
    const/16 v1, 0x8

    #@2ad
    const v2, 0xc800001

    #@2b0
    aput v2, v0, v1

    #@2b2
    const/16 v1, 0x9

    #@2b4
    const v2, 0xb1c71c1

    #@2b7
    aput v2, v0, v1

    #@2b9
    const/16 v1, 0xa

    #@2bb
    const v2, 0xa000001

    #@2be
    aput v2, v0, v1

    #@2c0
    const/16 v1, 0xb

    #@2c2
    const v2, 0x91745d1

    #@2c5
    aput v2, v0, v1

    #@2c7
    const/16 v1, 0xc

    #@2c9
    const v2, 0x8555561

    #@2cc
    aput v2, v0, v1

    #@2ce
    const/16 v1, 0xd

    #@2d0
    const v2, 0x7b13b19

    #@2d3
    aput v2, v0, v1

    #@2d5
    const v1, 0x7249249

    #@2d8
    aput v1, v0, v7

    #@2da
    const/16 v1, 0xf

    #@2dc
    const v2, 0x6aaaaa9

    #@2df
    aput v2, v0, v1

    #@2e1
    const v1, 0x6400001

    #@2e4
    aput v1, v0, v8

    #@2e6
    const/16 v1, 0x11

    #@2e8
    const v2, 0x5e1e1e1

    #@2eb
    aput v2, v0, v1

    #@2ed
    const v1, 0x58e38e1

    #@2f0
    aput v1, v0, v9

    #@2f2
    const/16 v1, 0x13

    #@2f4
    const v2, 0x5435e51

    #@2f7
    aput v2, v0, v1

    #@2f9
    const/16 v1, 0x14

    #@2fb
    const v2, 0x5000001

    #@2fe
    aput v2, v0, v1

    #@300
    const/16 v1, 0x15

    #@302
    const v2, 0x4c30c31

    #@305
    aput v2, v0, v1

    #@307
    const/16 v1, 0x16

    #@309
    const v2, 0x48ba2e9

    #@30c
    aput v2, v0, v1

    #@30e
    const/16 v1, 0x17

    #@310
    const v2, 0x4590b21

    #@313
    aput v2, v0, v1

    #@315
    const v1, 0x42aaab1

    #@318
    aput v1, v0, v6

    #@31a
    const/16 v1, 0x19

    #@31c
    const v2, 0x4000001

    #@31f
    aput v2, v0, v1

    #@321
    const/16 v1, 0x1a

    #@323
    const v2, 0x3d89d8d

    #@326
    aput v2, v0, v1

    #@328
    const/16 v1, 0x1b

    #@32a
    const v2, 0x3b425ed

    #@32d
    aput v2, v0, v1

    #@32f
    const/16 v1, 0x1c

    #@331
    const v2, 0x3924925

    #@334
    aput v2, v0, v1

    #@336
    const/16 v1, 0x1d

    #@338
    const v2, 0x372c239

    #@33b
    aput v2, v0, v1

    #@33d
    const/16 v1, 0x1e

    #@33f
    const v2, 0x3555555

    #@342
    aput v2, v0, v1

    #@344
    const/16 v1, 0x1f

    #@346
    const v2, 0x339ce75

    #@349
    aput v2, v0, v1

    #@34b
    const/16 v1, 0x20

    #@34d
    const v2, 0x3200001

    #@350
    aput v2, v0, v1

    #@352
    const/16 v1, 0x21

    #@354
    const v2, 0x307c1f1

    #@357
    aput v2, v0, v1

    #@359
    const/16 v1, 0x22

    #@35b
    const v2, 0x2f0f0f1

    #@35e
    aput v2, v0, v1

    #@360
    const/16 v1, 0x23

    #@362
    const v2, 0x2db6db9

    #@365
    aput v2, v0, v1

    #@367
    const/16 v1, 0x24

    #@369
    const v2, 0x2c71c71

    #@36c
    aput v2, v0, v1

    #@36e
    const/16 v1, 0x25

    #@370
    const v2, 0x2b3e455

    #@373
    aput v2, v0, v1

    #@375
    const/16 v1, 0x26

    #@377
    const v2, 0x2a1af29

    #@37a
    aput v2, v0, v1

    #@37c
    const/16 v1, 0x27

    #@37e
    const v2, 0x2906909

    #@381
    aput v2, v0, v1

    #@383
    const/16 v1, 0x28

    #@385
    const v2, 0x2800001

    #@388
    aput v2, v0, v1

    #@38a
    const/16 v1, 0x29

    #@38c
    const v2, 0x27063e9

    #@38f
    aput v2, v0, v1

    #@391
    const/16 v1, 0x2a

    #@393
    const v2, 0x2618619

    #@396
    aput v2, v0, v1

    #@398
    const/16 v1, 0x2b

    #@39a
    const v2, 0x253594d

    #@39d
    aput v2, v0, v1

    #@39f
    const/16 v1, 0x2c

    #@3a1
    const v2, 0x245d175

    #@3a4
    aput v2, v0, v1

    #@3a6
    const/16 v1, 0x2d

    #@3a8
    const v2, 0x238e391

    #@3ab
    aput v2, v0, v1

    #@3ad
    const/16 v1, 0x2e

    #@3af
    const v2, 0x22c8591

    #@3b2
    aput v2, v0, v1

    #@3b4
    const/16 v1, 0x2f

    #@3b6
    const v2, 0x220ae4d

    #@3b9
    aput v2, v0, v1

    #@3bb
    const/16 v1, 0x30

    #@3bd
    const v2, 0x2155559

    #@3c0
    aput v2, v0, v1

    #@3c2
    const/16 v1, 0x31

    #@3c4
    const v2, 0x20a72f1

    #@3c7
    aput v2, v0, v1

    #@3c9
    const/16 v1, 0x32

    #@3cb
    const v2, 0x2000001

    #@3ce
    aput v2, v0, v1

    #@3d0
    const/16 v1, 0x33

    #@3d2
    const v2, 0x1f5c291

    #@3d5
    aput v2, v0, v1

    #@3d7
    const/16 v1, 0x34

    #@3d9
    const v2, 0x1eb8521

    #@3dc
    aput v2, v0, v1

    #@3de
    const/16 v1, 0x35

    #@3e0
    const v2, 0x1e147b1

    #@3e3
    aput v2, v0, v1

    #@3e5
    const/16 v1, 0x36

    #@3e7
    const v2, 0x1d70a3d

    #@3ea
    aput v2, v0, v1

    #@3ec
    const/16 v1, 0x37

    #@3ee
    const v2, 0x1cccccd

    #@3f1
    aput v2, v0, v1

    #@3f3
    const/16 v1, 0x38

    #@3f5
    const v2, 0x1c28f5d

    #@3f8
    aput v2, v0, v1

    #@3fa
    const/16 v1, 0x39

    #@3fc
    const v2, 0x1b851ed

    #@3ff
    aput v2, v0, v1

    #@401
    const/16 v1, 0x3a

    #@403
    const v2, 0x1ae147d

    #@406
    aput v2, v0, v1

    #@408
    const/16 v1, 0x3b

    #@40a
    const v2, 0x1a3d70d

    #@40d
    aput v2, v0, v1

    #@40f
    const/16 v1, 0x3c

    #@411
    const v2, 0x1999999

    #@414
    aput v2, v0, v1

    #@416
    const/16 v1, 0x3d

    #@418
    const v2, 0x18f5c29

    #@41b
    aput v2, v0, v1

    #@41d
    const/16 v1, 0x3e

    #@41f
    const v2, 0x1851eb9

    #@422
    aput v2, v0, v1

    #@424
    const/16 v1, 0x3f

    #@426
    const v2, 0x17ae149

    #@429
    aput v2, v0, v1

    #@42b
    const/16 v1, 0x40

    #@42d
    const v2, 0x170a3d9

    #@430
    aput v2, v0, v1

    #@432
    const/16 v1, 0x41

    #@434
    const v2, 0x1666669

    #@437
    aput v2, v0, v1

    #@439
    const/16 v1, 0x42

    #@43b
    const v2, 0x15c28f5

    #@43e
    aput v2, v0, v1

    #@440
    const/16 v1, 0x43

    #@442
    const v2, 0x151eb85

    #@445
    aput v2, v0, v1

    #@447
    const/16 v1, 0x44

    #@449
    const v2, 0x147ae15

    #@44c
    aput v2, v0, v1

    #@44e
    const/16 v1, 0x45

    #@450
    const v2, 0x13d70a5

    #@453
    aput v2, v0, v1

    #@455
    const/16 v1, 0x46

    #@457
    const v2, 0x1333335

    #@45a
    aput v2, v0, v1

    #@45c
    const/16 v1, 0x47

    #@45e
    const v2, 0x128f5c5

    #@461
    aput v2, v0, v1

    #@463
    const/16 v1, 0x48

    #@465
    const v2, 0x11eb851

    #@468
    aput v2, v0, v1

    #@46a
    const/16 v1, 0x49

    #@46c
    const v2, 0x1147ae1

    #@46f
    aput v2, v0, v1

    #@471
    const/16 v1, 0x4a

    #@473
    const v2, 0x10a3d71

    #@476
    aput v2, v0, v1

    #@478
    const/16 v1, 0x4b

    #@47a
    const v2, 0x1000001

    #@47d
    aput v2, v0, v1

    #@47f
    const/16 v1, 0x4c

    #@481
    const v2, 0xf5c291

    #@484
    aput v2, v0, v1

    #@486
    const/16 v1, 0x4d

    #@488
    const v2, 0xeb8521

    #@48b
    aput v2, v0, v1

    #@48d
    const/16 v1, 0x4e

    #@48f
    const v2, 0xe147b1

    #@492
    aput v2, v0, v1

    #@494
    const/16 v1, 0x4f

    #@496
    const v2, 0xd70a3d

    #@499
    aput v2, v0, v1

    #@49b
    const/16 v1, 0x50

    #@49d
    const v2, 0xcccccd

    #@4a0
    aput v2, v0, v1

    #@4a2
    const/16 v1, 0x51

    #@4a4
    const v2, 0xc28f5d

    #@4a7
    aput v2, v0, v1

    #@4a9
    const/16 v1, 0x52

    #@4ab
    const v2, 0xb851ed

    #@4ae
    aput v2, v0, v1

    #@4b0
    const/16 v1, 0x53

    #@4b2
    const v2, 0xae147d

    #@4b5
    aput v2, v0, v1

    #@4b7
    const/16 v1, 0x54

    #@4b9
    const v2, 0xa3d70d

    #@4bc
    aput v2, v0, v1

    #@4be
    const/16 v1, 0x55

    #@4c0
    const v2, 0x999999

    #@4c3
    aput v2, v0, v1

    #@4c5
    const/16 v1, 0x56

    #@4c7
    const v2, 0x8f5c29

    #@4ca
    aput v2, v0, v1

    #@4cc
    const/16 v1, 0x57

    #@4ce
    const v2, 0x851eb9

    #@4d1
    aput v2, v0, v1

    #@4d3
    const/16 v1, 0x58

    #@4d5
    const v2, 0x7ae149

    #@4d8
    aput v2, v0, v1

    #@4da
    const/16 v1, 0x59

    #@4dc
    const v2, 0x70a3d9

    #@4df
    aput v2, v0, v1

    #@4e1
    const/16 v1, 0x5a

    #@4e3
    const v2, 0x666669

    #@4e6
    aput v2, v0, v1

    #@4e8
    const/16 v1, 0x5b

    #@4ea
    const v2, 0x5c28f5

    #@4ed
    aput v2, v0, v1

    #@4ef
    const/16 v1, 0x5c

    #@4f1
    const v2, 0x51eb85

    #@4f4
    aput v2, v0, v1

    #@4f6
    const/16 v1, 0x5d

    #@4f8
    const v2, 0x47ae15

    #@4fb
    aput v2, v0, v1

    #@4fd
    const/16 v1, 0x5e

    #@4ff
    const v2, 0x3d70a5

    #@502
    aput v2, v0, v1

    #@504
    const/16 v1, 0x5f

    #@506
    const v2, 0x333335

    #@509
    aput v2, v0, v1

    #@50b
    const/16 v1, 0x60

    #@50d
    const v2, 0x28f5c5

    #@510
    aput v2, v0, v1

    #@512
    const/16 v1, 0x61

    #@514
    const v2, 0x1eb851

    #@517
    aput v2, v0, v1

    #@519
    const/16 v1, 0x62

    #@51b
    const v2, 0x147ae1

    #@51e
    aput v2, v0, v1

    #@520
    const v1, 0xa3d71

    #@523
    aput v1, v0, v5

    #@525
    const/16 v1, 0x64

    #@527
    const/4 v2, 0x1

    #@528
    aput v2, v0, v1

    #@52a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    #@52c
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getQuantTable(III)[B
    .locals 8
    .param p0, "quantType"    # I
    .param p1, "quality"    # I
    .param p2, "qualityAlgorithm"    # I

    #@0
    .prologue
    const/16 v7, 0x40

    #@2
    const-class v5, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;

    #@4
    monitor-enter v5

    #@5
    .line 188
    mul-int/lit16 v4, p0, 0x9a

    #@7
    mul-int/lit8 v6, p2, 0x4d

    #@9
    add-int/2addr v4, v6

    #@a
    add-int/lit8 v6, p1, -0x18

    #@c
    add-int v0, v4, v6

    #@e
    .local v0, "index":I
    const/16 v4, 0x40

    #@10
    .line 189
    :try_start_0
    new-array v2, v4, [B

    #@12
    .line 190
    .local v2, "qtable":[B
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    #@14
    aget-object v3, v4, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .local v3, "rawTable":[B
    const/4 v1, 0x0

    #@17
    .line 191
    .local v1, "j":I
    :goto_0
    if-lt v1, v7, :cond_0

    #@19
    monitor-exit v5

    #@1a
    .line 195
    return-object v2

    #@1b
    .line 192
    :cond_0
    :try_start_1
    aget-byte v4, v3, v1

    #@1d
    and-int/lit16 v4, v4, 0xff

    #@1f
    invoke-static {v4, p1, p2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->getScaledQuantizationFactor(III)B

    #@22
    move-result v4

    #@23
    int-to-byte v4, v4

    #@24
    aput-byte v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 191
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .end local v1    # "j":I
    .end local v2    # "qtable":[B
    .end local v3    # "rawTable":[B
    :catchall_0
    move-exception v4

    #@2a
    monitor-exit v5

    #@2b
    throw v4
.end method

.method public static getScaledQuantizationFactor(III)B
    .locals 6
    .param p0, "q"    # I
    .param p1, "quality"    # I
    .param p2, "qualityAlgorithm"    # I

    #@0
    .prologue
    const/16 v3, 0x1388

    #@2
    .line 139
    packed-switch p2, :pswitch_data_0

    #@5
    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "qualityAlgorithm"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    :pswitch_0
    const/16 v2, 0x63

    #@10
    .line 146
    if-eq p0, v2, :cond_1

    #@12
    .line 149
    :cond_0
    int-to-long v2, p0

    #@13
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    #@15
    aget v4, v4, p1

    #@17
    int-to-long v4, v4

    #@18
    mul-long/2addr v2, v4

    #@19
    const-wide/32 v4, 0x1000000

    #@1c
    div-long/2addr v2, v4

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v2, v4

    #@20
    const-wide/16 v4, 0x2

    #@22
    div-long/2addr v2, v4

    #@23
    long-to-int v1, v2

    #@24
    .local v1, "val":I
    :goto_0
    const/4 v2, 0x1

    #@25
    .line 169
    if-lt v1, v2, :cond_3

    #@27
    const/16 v2, 0xff

    #@29
    .line 171
    if-gt v1, v2, :cond_4

    #@2b
    .line 174
    :goto_1
    int-to-byte v2, v1

    #@2c
    return v2

    #@2d
    .end local v1    # "val":I
    :cond_1
    const/16 v2, 0x24

    #@2f
    .line 146
    if-ne p1, v2, :cond_0

    #@31
    const/16 v1, 0x8a

    #@33
    .line 147
    .restart local v1    # "val":I
    goto :goto_0

    #@34
    .end local v1    # "val":I
    :pswitch_1
    const/16 v2, 0x32

    #@36
    .line 156
    if-lt p1, v2, :cond_2

    #@38
    .line 159
    mul-int/lit8 v2, p1, 0x2

    #@3a
    rsub-int v2, v2, 0xc8

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v0

    #@41
    .line 161
    .local v0, "iscale":I
    :goto_2
    mul-int v2, p0, v0

    #@43
    add-int/lit8 v2, v2, 0x32

    #@45
    div-int/lit8 v1, v2, 0x64

    #@47
    .restart local v1    # "val":I
    goto :goto_0

    #@48
    .line 157
    .end local v0    # "iscale":I
    .end local v1    # "val":I
    :cond_2
    div-int v2, v3, p1

    #@4a
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v0

    #@4e
    .restart local v0    # "iscale":I
    goto :goto_2

    #@4f
    .end local v0    # "iscale":I
    .restart local v1    # "val":I
    :cond_3
    const/4 v1, 0x1

    #@50
    .line 170
    goto :goto_1

    #@51
    :cond_4
    const/16 v1, 0xff

    #@53
    .line 172
    goto :goto_1

    #@54
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V
    .locals 8
    .param p0, "src"    # [B
    .param p1, "soff"    # I
    .param p2, "len"    # I
    .param p3, "dst"    # [B
    .param p4, "doff"    # I
    .param p5, "params"    # Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;

    #@0
    .prologue
    .line 218
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getVariant()I

    #@3
    move-result v2

    #@4
    .line 219
    .local v2, "variant":I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getWidth()I

    #@7
    move-result v3

    #@8
    .line 220
    .local v3, "width":I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getHeight()I

    #@b
    move-result v4

    #@c
    .line 221
    .local v4, "height":I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQuality()I

    #@f
    move-result v5

    #@10
    .line 222
    .local v5, "quality":I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQualityAlgorithm()I

    #@13
    move-result v6

    #@14
    .line 223
    .local v6, "qualityAlgorithm":I
    if-nez v2, :cond_0

    #@16
    .line 226
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I

    #@19
    move-result v7

    #@1a
    .line 230
    .local v7, "hlen":I
    add-int v0, p4, v7

    #@1c
    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    move-object v0, p3

    #@20
    move v1, p4

    #@21
    .line 232
    invoke-static/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->generate([BIIIIII)I

    #@24
    .line 234
    return-void

    #@25
    .line 224
    .end local v7    # "hlen":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "variant"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method

.method public static uncompactJpeg([B)[B
    .locals 2
    .param p0, "compactJpegData"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 382
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([BII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static uncompactJpeg([BII)[B
    .locals 19
    .param p0, "compactJpegData"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 333
    aget-byte v11, p0, p1

    #@2
    const/4 v12, -0x1

    #@3
    if-eq v11, v12, :cond_2

    #@5
    .line 341
    :cond_0
    aget-byte v11, p0, p1

    #@7
    const/16 v12, 0x43

    #@9
    if-eq v11, v12, :cond_3

    #@b
    .line 343
    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v12, "Input is not in compact JPEG format"

    #@10
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v11

    #@14
    .line 333
    :cond_2
    add-int/lit8 v11, p1, 0x1

    #@16
    aget-byte v11, p0, v11

    #@18
    const/16 v12, -0x28

    #@1a
    if-ne v11, v12, :cond_0

    #@1c
    .line 336
    move/from16 v0, p2

    #@1e
    new-array v0, v0, [B

    #@20
    move-object/from16 v17, v0

    #@22
    .local v17, "data":[B
    const/4 v11, 0x0

    #@23
    .line 337
    move-object/from16 v0, p0

    #@25
    move/from16 v1, p1

    #@27
    move-object/from16 v2, v17

    #@29
    move/from16 v3, p2

    #@2b
    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 338
    return-object v17

    #@2f
    .line 341
    .end local v17    # "data":[B
    :cond_3
    add-int/lit8 v11, p1, 0x1

    #@31
    aget-byte v11, p0, v11

    #@33
    const/16 v12, 0x4a

    #@35
    if-ne v11, v12, :cond_1

    #@37
    add-int/lit8 v11, p1, 0x2

    #@39
    aget-byte v11, p0, v11

    #@3b
    const/16 v12, 0x50

    #@3d
    if-ne v11, v12, :cond_1

    #@3f
    add-int/lit8 v11, p1, 0x3

    #@41
    aget-byte v11, p0, v11

    #@43
    const/16 v12, 0x47

    #@45
    if-ne v11, v12, :cond_1

    #@47
    .line 346
    add-int/lit8 v11, p1, 0x4

    #@49
    aget-byte v11, p0, v11

    #@4b
    and-int/lit16 v5, v11, 0xff

    #@4d
    .line 347
    .local v5, "variant":I
    add-int/lit8 v11, p1, 0x5

    #@4f
    aget-byte v11, p0, v11

    #@51
    and-int/lit16 v11, v11, 0xff

    #@53
    shl-int/lit8 v11, v11, 0x8

    #@55
    add-int/lit8 v12, p1, 0x6

    #@57
    aget-byte v12, p0, v12

    #@59
    and-int/lit16 v12, v12, 0xff

    #@5b
    or-int v6, v11, v12

    #@5d
    .line 349
    .local v6, "width":I
    add-int/lit8 v11, p1, 0x7

    #@5f
    aget-byte v11, p0, v11

    #@61
    and-int/lit16 v11, v11, 0xff

    #@63
    shl-int/lit8 v11, v11, 0x8

    #@65
    add-int/lit8 v12, p1, 0x8

    #@67
    aget-byte v12, p0, v12

    #@69
    and-int/lit16 v12, v12, 0xff

    #@6b
    or-int v7, v11, v12

    #@6d
    .line 351
    .local v7, "height":I
    add-int/lit8 v11, p1, 0x9

    #@6f
    aget-byte v11, p0, v11

    #@71
    and-int/lit16 v8, v11, 0xff

    #@73
    .line 352
    .local v8, "quality":I
    add-int/lit8 v11, p1, 0xa

    #@75
    aget-byte v11, p0, v11

    #@77
    and-int/lit16 v9, v11, 0xff

    #@79
    .line 356
    .local v9, "qualityAlgorithm":I
    :try_start_0
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    move-result v10

    #@7d
    .line 361
    .local v10, "hlen":I
    add-int v11, v10, p2

    #@7f
    add-int/lit8 v11, v11, -0xb

    #@81
    new-array v14, v11, [B

    #@83
    .line 362
    .local v14, "jpegData":[B
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;

    #@85
    invoke-direct/range {v4 .. v10}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;-><init>(IIIIII)V

    #@88
    .line 364
    .local v4, "params":Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
    add-int/lit8 v12, p1, 0xb

    #@8a
    add-int/lit8 v13, p2, -0xb

    #@8c
    const/4 v15, 0x0

    #@8d
    move-object/from16 v11, p0

    #@8f
    move-object/from16 v16, v4

    #@91
    invoke-static/range {v11 .. v16}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V

    #@94
    .line 366
    return-object v14

    #@95
    .line 359
    .end local v4    # "params":Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
    .end local v10    # "hlen":I
    .end local v14    # "jpegData":[B
    :catch_0
    move-exception v18

    #@96
    .line 358
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@98
    new-instance v12, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v13, "Unknown variant "

    #@a0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v12

    #@a8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v12

    #@ac
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@af
    throw v11
.end method
