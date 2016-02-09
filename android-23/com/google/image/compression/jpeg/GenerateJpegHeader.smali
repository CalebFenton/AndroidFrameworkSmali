.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;
.super Ljava/lang/Object;
.source "GenerateJpegHeader.java"


# static fields
.field private static final JPEG_STANDARD_HEADER:[B

.field private static JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

.field private static JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

.field private static JPEG_STANDARD_HEADER_Y_X_OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/16 v3, 0x32

    #@6
    const/16 v0, 0x26f

    #@8
    .line 76
    new-array v0, v0, [B

    #@a
    const/4 v1, -0x1

    #@b
    aput-byte v1, v0, v4

    #@d
    const/16 v1, -0x28

    #@f
    aput-byte v1, v0, v5

    #@11
    const/4 v1, 0x2

    #@12
    const/4 v2, -0x1

    #@13
    aput-byte v2, v0, v1

    #@15
    const/16 v1, -0x20

    #@17
    aput-byte v1, v0, v6

    #@19
    aput-byte v4, v0, v7

    #@1b
    const/4 v1, 0x5

    #@1c
    const/16 v2, 0x10

    #@1e
    aput-byte v2, v0, v1

    #@20
    const/4 v1, 0x6

    #@21
    const/16 v2, 0x4a

    #@23
    aput-byte v2, v0, v1

    #@25
    const/4 v1, 0x7

    #@26
    const/16 v2, 0x46

    #@28
    aput-byte v2, v0, v1

    #@2a
    const/16 v1, 0x8

    #@2c
    const/16 v2, 0x49

    #@2e
    aput-byte v2, v0, v1

    #@30
    const/16 v1, 0x9

    #@32
    const/16 v2, 0x46

    #@34
    aput-byte v2, v0, v1

    #@36
    const/16 v1, 0xa

    #@38
    aput-byte v4, v0, v1

    #@3a
    const/16 v1, 0xb

    #@3c
    aput-byte v5, v0, v1

    #@3e
    const/16 v1, 0xc

    #@40
    aput-byte v5, v0, v1

    #@42
    const/16 v1, 0xd

    #@44
    aput-byte v4, v0, v1

    #@46
    const/16 v1, 0xe

    #@48
    aput-byte v4, v0, v1

    #@4a
    const/16 v1, 0xf

    #@4c
    aput-byte v5, v0, v1

    #@4e
    const/16 v1, 0x10

    #@50
    aput-byte v4, v0, v1

    #@52
    const/16 v1, 0x11

    #@54
    aput-byte v5, v0, v1

    #@56
    const/16 v1, 0x12

    #@58
    aput-byte v4, v0, v1

    #@5a
    const/16 v1, 0x13

    #@5c
    aput-byte v4, v0, v1

    #@5e
    const/16 v1, 0x14

    #@60
    const/4 v2, -0x1

    #@61
    aput-byte v2, v0, v1

    #@63
    const/16 v1, 0x15

    #@65
    const/16 v2, -0x25

    #@67
    aput-byte v2, v0, v1

    #@69
    const/16 v1, 0x16

    #@6b
    aput-byte v4, v0, v1

    #@6d
    const/16 v1, 0x17

    #@6f
    const/16 v2, 0x43

    #@71
    aput-byte v2, v0, v1

    #@73
    const/16 v1, 0x18

    #@75
    aput-byte v4, v0, v1

    #@77
    const/16 v1, 0x19

    #@79
    const/16 v2, 0x8

    #@7b
    aput-byte v2, v0, v1

    #@7d
    const/16 v1, 0x1a

    #@7f
    const/4 v2, 0x6

    #@80
    aput-byte v2, v0, v1

    #@82
    const/16 v1, 0x1b

    #@84
    const/4 v2, 0x6

    #@85
    aput-byte v2, v0, v1

    #@87
    const/16 v1, 0x1c

    #@89
    const/4 v2, 0x7

    #@8a
    aput-byte v2, v0, v1

    #@8c
    const/16 v1, 0x1d

    #@8e
    const/4 v2, 0x6

    #@8f
    aput-byte v2, v0, v1

    #@91
    const/16 v1, 0x1e

    #@93
    const/4 v2, 0x5

    #@94
    aput-byte v2, v0, v1

    #@96
    const/16 v1, 0x1f

    #@98
    const/16 v2, 0x8

    #@9a
    aput-byte v2, v0, v1

    #@9c
    const/16 v1, 0x20

    #@9e
    const/4 v2, 0x7

    #@9f
    aput-byte v2, v0, v1

    #@a1
    const/16 v1, 0x21

    #@a3
    const/4 v2, 0x7

    #@a4
    aput-byte v2, v0, v1

    #@a6
    const/16 v1, 0x22

    #@a8
    const/4 v2, 0x7

    #@a9
    aput-byte v2, v0, v1

    #@ab
    const/16 v1, 0x23

    #@ad
    const/16 v2, 0x9

    #@af
    aput-byte v2, v0, v1

    #@b1
    const/16 v1, 0x24

    #@b3
    const/16 v2, 0x9

    #@b5
    aput-byte v2, v0, v1

    #@b7
    const/16 v1, 0x25

    #@b9
    const/16 v2, 0x8

    #@bb
    aput-byte v2, v0, v1

    #@bd
    const/16 v1, 0x26

    #@bf
    const/16 v2, 0xa

    #@c1
    aput-byte v2, v0, v1

    #@c3
    const/16 v1, 0x27

    #@c5
    const/16 v2, 0xc

    #@c7
    aput-byte v2, v0, v1

    #@c9
    const/16 v1, 0x28

    #@cb
    const/16 v2, 0x14

    #@cd
    aput-byte v2, v0, v1

    #@cf
    const/16 v1, 0x29

    #@d1
    const/16 v2, 0xd

    #@d3
    aput-byte v2, v0, v1

    #@d5
    const/16 v1, 0x2a

    #@d7
    const/16 v2, 0xc

    #@d9
    aput-byte v2, v0, v1

    #@db
    const/16 v1, 0x2b

    #@dd
    const/16 v2, 0xb

    #@df
    aput-byte v2, v0, v1

    #@e1
    const/16 v1, 0x2c

    #@e3
    const/16 v2, 0xb

    #@e5
    aput-byte v2, v0, v1

    #@e7
    const/16 v1, 0x2d

    #@e9
    const/16 v2, 0xc

    #@eb
    aput-byte v2, v0, v1

    #@ed
    const/16 v1, 0x2e

    #@ef
    const/16 v2, 0x19

    #@f1
    aput-byte v2, v0, v1

    #@f3
    const/16 v1, 0x2f

    #@f5
    const/16 v2, 0x12

    #@f7
    aput-byte v2, v0, v1

    #@f9
    const/16 v1, 0x30

    #@fb
    const/16 v2, 0x13

    #@fd
    aput-byte v2, v0, v1

    #@ff
    const/16 v1, 0x31

    #@101
    const/16 v2, 0xf

    #@103
    aput-byte v2, v0, v1

    #@105
    const/16 v1, 0x14

    #@107
    aput-byte v1, v0, v3

    #@109
    const/16 v1, 0x33

    #@10b
    const/16 v2, 0x1d

    #@10d
    aput-byte v2, v0, v1

    #@10f
    const/16 v1, 0x34

    #@111
    const/16 v2, 0x1a

    #@113
    aput-byte v2, v0, v1

    #@115
    const/16 v1, 0x35

    #@117
    const/16 v2, 0x1f

    #@119
    aput-byte v2, v0, v1

    #@11b
    const/16 v1, 0x36

    #@11d
    const/16 v2, 0x1e

    #@11f
    aput-byte v2, v0, v1

    #@121
    const/16 v1, 0x37

    #@123
    const/16 v2, 0x1d

    #@125
    aput-byte v2, v0, v1

    #@127
    const/16 v1, 0x38

    #@129
    const/16 v2, 0x1a

    #@12b
    aput-byte v2, v0, v1

    #@12d
    const/16 v1, 0x39

    #@12f
    const/16 v2, 0x1c

    #@131
    aput-byte v2, v0, v1

    #@133
    const/16 v1, 0x3a

    #@135
    const/16 v2, 0x1c

    #@137
    aput-byte v2, v0, v1

    #@139
    const/16 v1, 0x3b

    #@13b
    const/16 v2, 0x20

    #@13d
    aput-byte v2, v0, v1

    #@13f
    const/16 v1, 0x3c

    #@141
    const/16 v2, 0x24

    #@143
    aput-byte v2, v0, v1

    #@145
    const/16 v1, 0x3d

    #@147
    const/16 v2, 0x2e

    #@149
    aput-byte v2, v0, v1

    #@14b
    const/16 v1, 0x3e

    #@14d
    const/16 v2, 0x27

    #@14f
    aput-byte v2, v0, v1

    #@151
    const/16 v1, 0x3f

    #@153
    const/16 v2, 0x20

    #@155
    aput-byte v2, v0, v1

    #@157
    const/16 v1, 0x40

    #@159
    const/16 v2, 0x22

    #@15b
    aput-byte v2, v0, v1

    #@15d
    const/16 v1, 0x41

    #@15f
    const/16 v2, 0x2c

    #@161
    aput-byte v2, v0, v1

    #@163
    const/16 v1, 0x42

    #@165
    const/16 v2, 0x23

    #@167
    aput-byte v2, v0, v1

    #@169
    const/16 v1, 0x43

    #@16b
    const/16 v2, 0x1c

    #@16d
    aput-byte v2, v0, v1

    #@16f
    const/16 v1, 0x44

    #@171
    const/16 v2, 0x1c

    #@173
    aput-byte v2, v0, v1

    #@175
    const/16 v1, 0x45

    #@177
    const/16 v2, 0x28

    #@179
    aput-byte v2, v0, v1

    #@17b
    const/16 v1, 0x46

    #@17d
    const/16 v2, 0x37

    #@17f
    aput-byte v2, v0, v1

    #@181
    const/16 v1, 0x47

    #@183
    const/16 v2, 0x29

    #@185
    aput-byte v2, v0, v1

    #@187
    const/16 v1, 0x48

    #@189
    const/16 v2, 0x2c

    #@18b
    aput-byte v2, v0, v1

    #@18d
    const/16 v1, 0x49

    #@18f
    const/16 v2, 0x30

    #@191
    aput-byte v2, v0, v1

    #@193
    const/16 v1, 0x4a

    #@195
    const/16 v2, 0x31

    #@197
    aput-byte v2, v0, v1

    #@199
    const/16 v1, 0x4b

    #@19b
    const/16 v2, 0x34

    #@19d
    aput-byte v2, v0, v1

    #@19f
    const/16 v1, 0x4c

    #@1a1
    const/16 v2, 0x34

    #@1a3
    aput-byte v2, v0, v1

    #@1a5
    const/16 v1, 0x4d

    #@1a7
    const/16 v2, 0x34

    #@1a9
    aput-byte v2, v0, v1

    #@1ab
    const/16 v1, 0x4e

    #@1ad
    const/16 v2, 0x1f

    #@1af
    aput-byte v2, v0, v1

    #@1b1
    const/16 v1, 0x4f

    #@1b3
    const/16 v2, 0x27

    #@1b5
    aput-byte v2, v0, v1

    #@1b7
    const/16 v1, 0x50

    #@1b9
    const/16 v2, 0x39

    #@1bb
    aput-byte v2, v0, v1

    #@1bd
    const/16 v1, 0x51

    #@1bf
    const/16 v2, 0x3d

    #@1c1
    aput-byte v2, v0, v1

    #@1c3
    const/16 v1, 0x52

    #@1c5
    const/16 v2, 0x38

    #@1c7
    aput-byte v2, v0, v1

    #@1c9
    const/16 v1, 0x53

    #@1cb
    aput-byte v3, v0, v1

    #@1cd
    const/16 v1, 0x54

    #@1cf
    const/16 v2, 0x3c

    #@1d1
    aput-byte v2, v0, v1

    #@1d3
    const/16 v1, 0x55

    #@1d5
    const/16 v2, 0x2e

    #@1d7
    aput-byte v2, v0, v1

    #@1d9
    const/16 v1, 0x56

    #@1db
    const/16 v2, 0x33

    #@1dd
    aput-byte v2, v0, v1

    #@1df
    const/16 v1, 0x57

    #@1e1
    const/16 v2, 0x34

    #@1e3
    aput-byte v2, v0, v1

    #@1e5
    const/16 v1, 0x58

    #@1e7
    aput-byte v3, v0, v1

    #@1e9
    const/16 v1, 0x59

    #@1eb
    const/4 v2, -0x1

    #@1ec
    aput-byte v2, v0, v1

    #@1ee
    const/16 v1, 0x5a

    #@1f0
    const/16 v2, -0x25

    #@1f2
    aput-byte v2, v0, v1

    #@1f4
    const/16 v1, 0x5b

    #@1f6
    aput-byte v4, v0, v1

    #@1f8
    const/16 v1, 0x5c

    #@1fa
    const/16 v2, 0x43

    #@1fc
    aput-byte v2, v0, v1

    #@1fe
    const/16 v1, 0x5d

    #@200
    aput-byte v5, v0, v1

    #@202
    const/16 v1, 0x5e

    #@204
    const/16 v2, 0x9

    #@206
    aput-byte v2, v0, v1

    #@208
    const/16 v1, 0x5f

    #@20a
    const/16 v2, 0x9

    #@20c
    aput-byte v2, v0, v1

    #@20e
    const/16 v1, 0x60

    #@210
    const/16 v2, 0x9

    #@212
    aput-byte v2, v0, v1

    #@214
    const/16 v1, 0x61

    #@216
    const/16 v2, 0xc

    #@218
    aput-byte v2, v0, v1

    #@21a
    const/16 v1, 0x62

    #@21c
    const/16 v2, 0xb

    #@21e
    aput-byte v2, v0, v1

    #@220
    const/16 v1, 0x63

    #@222
    const/16 v2, 0xc

    #@224
    aput-byte v2, v0, v1

    #@226
    const/16 v1, 0x64

    #@228
    const/16 v2, 0x18

    #@22a
    aput-byte v2, v0, v1

    #@22c
    const/16 v1, 0x65

    #@22e
    const/16 v2, 0xd

    #@230
    aput-byte v2, v0, v1

    #@232
    const/16 v1, 0x66

    #@234
    const/16 v2, 0xd

    #@236
    aput-byte v2, v0, v1

    #@238
    const/16 v1, 0x67

    #@23a
    const/16 v2, 0x18

    #@23c
    aput-byte v2, v0, v1

    #@23e
    const/16 v1, 0x68

    #@240
    aput-byte v3, v0, v1

    #@242
    const/16 v1, 0x69

    #@244
    const/16 v2, 0x21

    #@246
    aput-byte v2, v0, v1

    #@248
    const/16 v1, 0x6a

    #@24a
    const/16 v2, 0x1c

    #@24c
    aput-byte v2, v0, v1

    #@24e
    const/16 v1, 0x6b

    #@250
    const/16 v2, 0x21

    #@252
    aput-byte v2, v0, v1

    #@254
    const/16 v1, 0x6c

    #@256
    aput-byte v3, v0, v1

    #@258
    const/16 v1, 0x6d

    #@25a
    aput-byte v3, v0, v1

    #@25c
    const/16 v1, 0x6e

    #@25e
    aput-byte v3, v0, v1

    #@260
    const/16 v1, 0x6f

    #@262
    aput-byte v3, v0, v1

    #@264
    const/16 v1, 0x70

    #@266
    aput-byte v3, v0, v1

    #@268
    const/16 v1, 0x71

    #@26a
    aput-byte v3, v0, v1

    #@26c
    const/16 v1, 0x72

    #@26e
    aput-byte v3, v0, v1

    #@270
    const/16 v1, 0x73

    #@272
    aput-byte v3, v0, v1

    #@274
    const/16 v1, 0x74

    #@276
    aput-byte v3, v0, v1

    #@278
    const/16 v1, 0x75

    #@27a
    aput-byte v3, v0, v1

    #@27c
    const/16 v1, 0x76

    #@27e
    aput-byte v3, v0, v1

    #@280
    const/16 v1, 0x77

    #@282
    aput-byte v3, v0, v1

    #@284
    const/16 v1, 0x78

    #@286
    aput-byte v3, v0, v1

    #@288
    const/16 v1, 0x79

    #@28a
    aput-byte v3, v0, v1

    #@28c
    const/16 v1, 0x7a

    #@28e
    aput-byte v3, v0, v1

    #@290
    const/16 v1, 0x7b

    #@292
    aput-byte v3, v0, v1

    #@294
    const/16 v1, 0x7c

    #@296
    aput-byte v3, v0, v1

    #@298
    const/16 v1, 0x7d

    #@29a
    aput-byte v3, v0, v1

    #@29c
    const/16 v1, 0x7e

    #@29e
    aput-byte v3, v0, v1

    #@2a0
    const/16 v1, 0x7f

    #@2a2
    aput-byte v3, v0, v1

    #@2a4
    const/16 v1, 0x80

    #@2a6
    aput-byte v3, v0, v1

    #@2a8
    const/16 v1, 0x81

    #@2aa
    aput-byte v3, v0, v1

    #@2ac
    const/16 v1, 0x82

    #@2ae
    aput-byte v3, v0, v1

    #@2b0
    const/16 v1, 0x83

    #@2b2
    aput-byte v3, v0, v1

    #@2b4
    const/16 v1, 0x84

    #@2b6
    aput-byte v3, v0, v1

    #@2b8
    const/16 v1, 0x85

    #@2ba
    aput-byte v3, v0, v1

    #@2bc
    const/16 v1, 0x86

    #@2be
    aput-byte v3, v0, v1

    #@2c0
    const/16 v1, 0x87

    #@2c2
    aput-byte v3, v0, v1

    #@2c4
    const/16 v1, 0x88

    #@2c6
    aput-byte v3, v0, v1

    #@2c8
    const/16 v1, 0x89

    #@2ca
    aput-byte v3, v0, v1

    #@2cc
    const/16 v1, 0x8a

    #@2ce
    aput-byte v3, v0, v1

    #@2d0
    const/16 v1, 0x8b

    #@2d2
    aput-byte v3, v0, v1

    #@2d4
    const/16 v1, 0x8c

    #@2d6
    aput-byte v3, v0, v1

    #@2d8
    const/16 v1, 0x8d

    #@2da
    aput-byte v3, v0, v1

    #@2dc
    const/16 v1, 0x8e

    #@2de
    aput-byte v3, v0, v1

    #@2e0
    const/16 v1, 0x8f

    #@2e2
    aput-byte v3, v0, v1

    #@2e4
    const/16 v1, 0x90

    #@2e6
    aput-byte v3, v0, v1

    #@2e8
    const/16 v1, 0x91

    #@2ea
    aput-byte v3, v0, v1

    #@2ec
    const/16 v1, 0x92

    #@2ee
    aput-byte v3, v0, v1

    #@2f0
    const/16 v1, 0x93

    #@2f2
    aput-byte v3, v0, v1

    #@2f4
    const/16 v1, 0x94

    #@2f6
    aput-byte v3, v0, v1

    #@2f8
    const/16 v1, 0x95

    #@2fa
    aput-byte v3, v0, v1

    #@2fc
    const/16 v1, 0x96

    #@2fe
    aput-byte v3, v0, v1

    #@300
    const/16 v1, 0x97

    #@302
    aput-byte v3, v0, v1

    #@304
    const/16 v1, 0x98

    #@306
    aput-byte v3, v0, v1

    #@308
    const/16 v1, 0x99

    #@30a
    aput-byte v3, v0, v1

    #@30c
    const/16 v1, 0x9a

    #@30e
    aput-byte v3, v0, v1

    #@310
    const/16 v1, 0x9b

    #@312
    aput-byte v3, v0, v1

    #@314
    const/16 v1, 0x9c

    #@316
    aput-byte v3, v0, v1

    #@318
    const/16 v1, 0x9d

    #@31a
    aput-byte v3, v0, v1

    #@31c
    const/16 v1, 0x9e

    #@31e
    const/4 v2, -0x1

    #@31f
    aput-byte v2, v0, v1

    #@321
    const/16 v1, 0x9f

    #@323
    const/16 v2, -0x40

    #@325
    aput-byte v2, v0, v1

    #@327
    const/16 v1, 0xa0

    #@329
    aput-byte v4, v0, v1

    #@32b
    const/16 v1, 0xa1

    #@32d
    const/16 v2, 0x11

    #@32f
    aput-byte v2, v0, v1

    #@331
    const/16 v1, 0xa2

    #@333
    const/16 v2, 0x8

    #@335
    aput-byte v2, v0, v1

    #@337
    const/16 v1, 0xa3

    #@339
    aput-byte v4, v0, v1

    #@33b
    const/16 v1, 0xa4

    #@33d
    const/16 v2, 0x40

    #@33f
    aput-byte v2, v0, v1

    #@341
    const/16 v1, 0xa5

    #@343
    aput-byte v4, v0, v1

    #@345
    const/16 v1, 0xa6

    #@347
    const/16 v2, 0x40

    #@349
    aput-byte v2, v0, v1

    #@34b
    const/16 v1, 0xa7

    #@34d
    aput-byte v6, v0, v1

    #@34f
    const/16 v1, 0xa8

    #@351
    aput-byte v5, v0, v1

    #@353
    const/16 v1, 0xa9

    #@355
    const/16 v2, 0x22

    #@357
    aput-byte v2, v0, v1

    #@359
    const/16 v1, 0xaa

    #@35b
    aput-byte v4, v0, v1

    #@35d
    const/16 v1, 0xab

    #@35f
    const/4 v2, 0x2

    #@360
    aput-byte v2, v0, v1

    #@362
    const/16 v1, 0xac

    #@364
    const/16 v2, 0x11

    #@366
    aput-byte v2, v0, v1

    #@368
    const/16 v1, 0xad

    #@36a
    aput-byte v5, v0, v1

    #@36c
    const/16 v1, 0xae

    #@36e
    aput-byte v6, v0, v1

    #@370
    const/16 v1, 0xaf

    #@372
    const/16 v2, 0x11

    #@374
    aput-byte v2, v0, v1

    #@376
    const/16 v1, 0xb0

    #@378
    aput-byte v5, v0, v1

    #@37a
    const/16 v1, 0xb1

    #@37c
    const/4 v2, -0x1

    #@37d
    aput-byte v2, v0, v1

    #@37f
    const/16 v1, 0xb2

    #@381
    const/16 v2, -0x3c

    #@383
    aput-byte v2, v0, v1

    #@385
    const/16 v1, 0xb3

    #@387
    aput-byte v4, v0, v1

    #@389
    const/16 v1, 0xb4

    #@38b
    const/16 v2, 0x1f

    #@38d
    aput-byte v2, v0, v1

    #@38f
    const/16 v1, 0xb5

    #@391
    aput-byte v4, v0, v1

    #@393
    const/16 v1, 0xb6

    #@395
    aput-byte v4, v0, v1

    #@397
    const/16 v1, 0xb7

    #@399
    aput-byte v5, v0, v1

    #@39b
    const/16 v1, 0xb8

    #@39d
    const/4 v2, 0x5

    #@39e
    aput-byte v2, v0, v1

    #@3a0
    const/16 v1, 0xb9

    #@3a2
    aput-byte v5, v0, v1

    #@3a4
    const/16 v1, 0xba

    #@3a6
    aput-byte v5, v0, v1

    #@3a8
    const/16 v1, 0xbb

    #@3aa
    aput-byte v5, v0, v1

    #@3ac
    const/16 v1, 0xbc

    #@3ae
    aput-byte v5, v0, v1

    #@3b0
    const/16 v1, 0xbd

    #@3b2
    aput-byte v5, v0, v1

    #@3b4
    const/16 v1, 0xbe

    #@3b6
    aput-byte v5, v0, v1

    #@3b8
    const/16 v1, 0xbf

    #@3ba
    aput-byte v4, v0, v1

    #@3bc
    const/16 v1, 0xc0

    #@3be
    aput-byte v4, v0, v1

    #@3c0
    const/16 v1, 0xc1

    #@3c2
    aput-byte v4, v0, v1

    #@3c4
    const/16 v1, 0xc2

    #@3c6
    aput-byte v4, v0, v1

    #@3c8
    const/16 v1, 0xc3

    #@3ca
    aput-byte v4, v0, v1

    #@3cc
    const/16 v1, 0xc4

    #@3ce
    aput-byte v4, v0, v1

    #@3d0
    const/16 v1, 0xc5

    #@3d2
    aput-byte v4, v0, v1

    #@3d4
    const/16 v1, 0xc6

    #@3d6
    aput-byte v4, v0, v1

    #@3d8
    const/16 v1, 0xc7

    #@3da
    aput-byte v5, v0, v1

    #@3dc
    const/16 v1, 0xc8

    #@3de
    const/4 v2, 0x2

    #@3df
    aput-byte v2, v0, v1

    #@3e1
    const/16 v1, 0xc9

    #@3e3
    aput-byte v6, v0, v1

    #@3e5
    const/16 v1, 0xca

    #@3e7
    aput-byte v7, v0, v1

    #@3e9
    const/16 v1, 0xcb

    #@3eb
    const/4 v2, 0x5

    #@3ec
    aput-byte v2, v0, v1

    #@3ee
    const/16 v1, 0xcc

    #@3f0
    const/4 v2, 0x6

    #@3f1
    aput-byte v2, v0, v1

    #@3f3
    const/16 v1, 0xcd

    #@3f5
    const/4 v2, 0x7

    #@3f6
    aput-byte v2, v0, v1

    #@3f8
    const/16 v1, 0xce

    #@3fa
    const/16 v2, 0x8

    #@3fc
    aput-byte v2, v0, v1

    #@3fe
    const/16 v1, 0xcf

    #@400
    const/16 v2, 0x9

    #@402
    aput-byte v2, v0, v1

    #@404
    const/16 v1, 0xd0

    #@406
    const/16 v2, 0xa

    #@408
    aput-byte v2, v0, v1

    #@40a
    const/16 v1, 0xd1

    #@40c
    const/16 v2, 0xb

    #@40e
    aput-byte v2, v0, v1

    #@410
    const/16 v1, 0xd2

    #@412
    const/4 v2, -0x1

    #@413
    aput-byte v2, v0, v1

    #@415
    const/16 v1, 0xd3

    #@417
    const/16 v2, -0x3c

    #@419
    aput-byte v2, v0, v1

    #@41b
    const/16 v1, 0xd4

    #@41d
    aput-byte v4, v0, v1

    #@41f
    const/16 v1, 0xd5

    #@421
    const/16 v2, -0x4b

    #@423
    aput-byte v2, v0, v1

    #@425
    const/16 v1, 0xd6

    #@427
    const/16 v2, 0x10

    #@429
    aput-byte v2, v0, v1

    #@42b
    const/16 v1, 0xd7

    #@42d
    aput-byte v4, v0, v1

    #@42f
    const/16 v1, 0xd8

    #@431
    const/4 v2, 0x2

    #@432
    aput-byte v2, v0, v1

    #@434
    const/16 v1, 0xd9

    #@436
    aput-byte v5, v0, v1

    #@438
    const/16 v1, 0xda

    #@43a
    aput-byte v6, v0, v1

    #@43c
    const/16 v1, 0xdb

    #@43e
    aput-byte v6, v0, v1

    #@440
    const/16 v1, 0xdc

    #@442
    const/4 v2, 0x2

    #@443
    aput-byte v2, v0, v1

    #@445
    const/16 v1, 0xdd

    #@447
    aput-byte v7, v0, v1

    #@449
    const/16 v1, 0xde

    #@44b
    aput-byte v6, v0, v1

    #@44d
    const/16 v1, 0xdf

    #@44f
    const/4 v2, 0x5

    #@450
    aput-byte v2, v0, v1

    #@452
    const/16 v1, 0xe0

    #@454
    const/4 v2, 0x5

    #@455
    aput-byte v2, v0, v1

    #@457
    const/16 v1, 0xe1

    #@459
    aput-byte v7, v0, v1

    #@45b
    const/16 v1, 0xe2

    #@45d
    aput-byte v7, v0, v1

    #@45f
    const/16 v1, 0xe3

    #@461
    aput-byte v4, v0, v1

    #@463
    const/16 v1, 0xe4

    #@465
    aput-byte v4, v0, v1

    #@467
    const/16 v1, 0xe5

    #@469
    aput-byte v5, v0, v1

    #@46b
    const/16 v1, 0xe6

    #@46d
    const/16 v2, 0x7d

    #@46f
    aput-byte v2, v0, v1

    #@471
    const/16 v1, 0xe7

    #@473
    aput-byte v5, v0, v1

    #@475
    const/16 v1, 0xe8

    #@477
    const/4 v2, 0x2

    #@478
    aput-byte v2, v0, v1

    #@47a
    const/16 v1, 0xe9

    #@47c
    aput-byte v6, v0, v1

    #@47e
    const/16 v1, 0xea

    #@480
    aput-byte v4, v0, v1

    #@482
    const/16 v1, 0xeb

    #@484
    aput-byte v7, v0, v1

    #@486
    const/16 v1, 0xec

    #@488
    const/16 v2, 0x11

    #@48a
    aput-byte v2, v0, v1

    #@48c
    const/16 v1, 0xed

    #@48e
    const/4 v2, 0x5

    #@48f
    aput-byte v2, v0, v1

    #@491
    const/16 v1, 0xee

    #@493
    const/16 v2, 0x12

    #@495
    aput-byte v2, v0, v1

    #@497
    const/16 v1, 0xef

    #@499
    const/16 v2, 0x21

    #@49b
    aput-byte v2, v0, v1

    #@49d
    const/16 v1, 0xf0

    #@49f
    const/16 v2, 0x31

    #@4a1
    aput-byte v2, v0, v1

    #@4a3
    const/16 v1, 0xf1

    #@4a5
    const/16 v2, 0x41

    #@4a7
    aput-byte v2, v0, v1

    #@4a9
    const/16 v1, 0xf2

    #@4ab
    const/4 v2, 0x6

    #@4ac
    aput-byte v2, v0, v1

    #@4ae
    const/16 v1, 0xf3

    #@4b0
    const/16 v2, 0x13

    #@4b2
    aput-byte v2, v0, v1

    #@4b4
    const/16 v1, 0xf4

    #@4b6
    const/16 v2, 0x51

    #@4b8
    aput-byte v2, v0, v1

    #@4ba
    const/16 v1, 0xf5

    #@4bc
    const/16 v2, 0x61

    #@4be
    aput-byte v2, v0, v1

    #@4c0
    const/16 v1, 0xf6

    #@4c2
    const/4 v2, 0x7

    #@4c3
    aput-byte v2, v0, v1

    #@4c5
    const/16 v1, 0xf7

    #@4c7
    const/16 v2, 0x22

    #@4c9
    aput-byte v2, v0, v1

    #@4cb
    const/16 v1, 0xf8

    #@4cd
    const/16 v2, 0x71

    #@4cf
    aput-byte v2, v0, v1

    #@4d1
    const/16 v1, 0xf9

    #@4d3
    const/16 v2, 0x14

    #@4d5
    aput-byte v2, v0, v1

    #@4d7
    const/16 v1, 0xfa

    #@4d9
    aput-byte v3, v0, v1

    #@4db
    const/16 v1, 0xfb

    #@4dd
    const/16 v2, -0x7f

    #@4df
    aput-byte v2, v0, v1

    #@4e1
    const/16 v1, 0xfc

    #@4e3
    const/16 v2, -0x6f

    #@4e5
    aput-byte v2, v0, v1

    #@4e7
    const/16 v1, 0xfd

    #@4e9
    const/16 v2, -0x5f

    #@4eb
    aput-byte v2, v0, v1

    #@4ed
    const/16 v1, 0xfe

    #@4ef
    const/16 v2, 0x8

    #@4f1
    aput-byte v2, v0, v1

    #@4f3
    const/16 v1, 0xff

    #@4f5
    const/16 v2, 0x23

    #@4f7
    aput-byte v2, v0, v1

    #@4f9
    const/16 v1, 0x100

    #@4fb
    const/16 v2, 0x42

    #@4fd
    aput-byte v2, v0, v1

    #@4ff
    const/16 v1, 0x101

    #@501
    const/16 v2, -0x4f

    #@503
    aput-byte v2, v0, v1

    #@505
    const/16 v1, 0x102

    #@507
    const/16 v2, -0x3f

    #@509
    aput-byte v2, v0, v1

    #@50b
    const/16 v1, 0x103

    #@50d
    const/16 v2, 0x15

    #@50f
    aput-byte v2, v0, v1

    #@511
    const/16 v1, 0x104

    #@513
    const/16 v2, 0x52

    #@515
    aput-byte v2, v0, v1

    #@517
    const/16 v1, 0x105

    #@519
    const/16 v2, -0x2f

    #@51b
    aput-byte v2, v0, v1

    #@51d
    const/16 v1, 0x106

    #@51f
    const/16 v2, -0x10

    #@521
    aput-byte v2, v0, v1

    #@523
    const/16 v1, 0x107

    #@525
    const/16 v2, 0x24

    #@527
    aput-byte v2, v0, v1

    #@529
    const/16 v1, 0x108

    #@52b
    const/16 v2, 0x33

    #@52d
    aput-byte v2, v0, v1

    #@52f
    const/16 v1, 0x109

    #@531
    const/16 v2, 0x62

    #@533
    aput-byte v2, v0, v1

    #@535
    const/16 v1, 0x10a

    #@537
    const/16 v2, 0x72

    #@539
    aput-byte v2, v0, v1

    #@53b
    const/16 v1, 0x10b

    #@53d
    const/16 v2, -0x7e

    #@53f
    aput-byte v2, v0, v1

    #@541
    const/16 v1, 0x10c

    #@543
    const/16 v2, 0x9

    #@545
    aput-byte v2, v0, v1

    #@547
    const/16 v1, 0x10d

    #@549
    const/16 v2, 0xa

    #@54b
    aput-byte v2, v0, v1

    #@54d
    const/16 v1, 0x10e

    #@54f
    const/16 v2, 0x16

    #@551
    aput-byte v2, v0, v1

    #@553
    const/16 v1, 0x10f

    #@555
    const/16 v2, 0x17

    #@557
    aput-byte v2, v0, v1

    #@559
    const/16 v1, 0x110

    #@55b
    const/16 v2, 0x18

    #@55d
    aput-byte v2, v0, v1

    #@55f
    const/16 v1, 0x111

    #@561
    const/16 v2, 0x19

    #@563
    aput-byte v2, v0, v1

    #@565
    const/16 v1, 0x112

    #@567
    const/16 v2, 0x1a

    #@569
    aput-byte v2, v0, v1

    #@56b
    const/16 v1, 0x113

    #@56d
    const/16 v2, 0x25

    #@56f
    aput-byte v2, v0, v1

    #@571
    const/16 v1, 0x114

    #@573
    const/16 v2, 0x26

    #@575
    aput-byte v2, v0, v1

    #@577
    const/16 v1, 0x115

    #@579
    const/16 v2, 0x27

    #@57b
    aput-byte v2, v0, v1

    #@57d
    const/16 v1, 0x116

    #@57f
    const/16 v2, 0x28

    #@581
    aput-byte v2, v0, v1

    #@583
    const/16 v1, 0x117

    #@585
    const/16 v2, 0x29

    #@587
    aput-byte v2, v0, v1

    #@589
    const/16 v1, 0x118

    #@58b
    const/16 v2, 0x2a

    #@58d
    aput-byte v2, v0, v1

    #@58f
    const/16 v1, 0x119

    #@591
    const/16 v2, 0x34

    #@593
    aput-byte v2, v0, v1

    #@595
    const/16 v1, 0x11a

    #@597
    const/16 v2, 0x35

    #@599
    aput-byte v2, v0, v1

    #@59b
    const/16 v1, 0x11b

    #@59d
    const/16 v2, 0x36

    #@59f
    aput-byte v2, v0, v1

    #@5a1
    const/16 v1, 0x11c

    #@5a3
    const/16 v2, 0x37

    #@5a5
    aput-byte v2, v0, v1

    #@5a7
    const/16 v1, 0x11d

    #@5a9
    const/16 v2, 0x38

    #@5ab
    aput-byte v2, v0, v1

    #@5ad
    const/16 v1, 0x11e

    #@5af
    const/16 v2, 0x39

    #@5b1
    aput-byte v2, v0, v1

    #@5b3
    const/16 v1, 0x11f

    #@5b5
    const/16 v2, 0x3a

    #@5b7
    aput-byte v2, v0, v1

    #@5b9
    const/16 v1, 0x120

    #@5bb
    const/16 v2, 0x43

    #@5bd
    aput-byte v2, v0, v1

    #@5bf
    const/16 v1, 0x121

    #@5c1
    const/16 v2, 0x44

    #@5c3
    aput-byte v2, v0, v1

    #@5c5
    const/16 v1, 0x122

    #@5c7
    const/16 v2, 0x45

    #@5c9
    aput-byte v2, v0, v1

    #@5cb
    const/16 v1, 0x123

    #@5cd
    const/16 v2, 0x46

    #@5cf
    aput-byte v2, v0, v1

    #@5d1
    const/16 v1, 0x124

    #@5d3
    const/16 v2, 0x47

    #@5d5
    aput-byte v2, v0, v1

    #@5d7
    const/16 v1, 0x125

    #@5d9
    const/16 v2, 0x48

    #@5db
    aput-byte v2, v0, v1

    #@5dd
    const/16 v1, 0x126

    #@5df
    const/16 v2, 0x49

    #@5e1
    aput-byte v2, v0, v1

    #@5e3
    const/16 v1, 0x127

    #@5e5
    const/16 v2, 0x4a

    #@5e7
    aput-byte v2, v0, v1

    #@5e9
    const/16 v1, 0x128

    #@5eb
    const/16 v2, 0x53

    #@5ed
    aput-byte v2, v0, v1

    #@5ef
    const/16 v1, 0x129

    #@5f1
    const/16 v2, 0x54

    #@5f3
    aput-byte v2, v0, v1

    #@5f5
    const/16 v1, 0x12a

    #@5f7
    const/16 v2, 0x55

    #@5f9
    aput-byte v2, v0, v1

    #@5fb
    const/16 v1, 0x12b

    #@5fd
    const/16 v2, 0x56

    #@5ff
    aput-byte v2, v0, v1

    #@601
    const/16 v1, 0x12c

    #@603
    const/16 v2, 0x57

    #@605
    aput-byte v2, v0, v1

    #@607
    const/16 v1, 0x12d

    #@609
    const/16 v2, 0x58

    #@60b
    aput-byte v2, v0, v1

    #@60d
    const/16 v1, 0x12e

    #@60f
    const/16 v2, 0x59

    #@611
    aput-byte v2, v0, v1

    #@613
    const/16 v1, 0x12f

    #@615
    const/16 v2, 0x5a

    #@617
    aput-byte v2, v0, v1

    #@619
    const/16 v1, 0x130

    #@61b
    const/16 v2, 0x63

    #@61d
    aput-byte v2, v0, v1

    #@61f
    const/16 v1, 0x131

    #@621
    const/16 v2, 0x64

    #@623
    aput-byte v2, v0, v1

    #@625
    const/16 v1, 0x132

    #@627
    const/16 v2, 0x65

    #@629
    aput-byte v2, v0, v1

    #@62b
    const/16 v1, 0x133

    #@62d
    const/16 v2, 0x66

    #@62f
    aput-byte v2, v0, v1

    #@631
    const/16 v1, 0x134

    #@633
    const/16 v2, 0x67

    #@635
    aput-byte v2, v0, v1

    #@637
    const/16 v1, 0x135

    #@639
    const/16 v2, 0x68

    #@63b
    aput-byte v2, v0, v1

    #@63d
    const/16 v1, 0x136

    #@63f
    const/16 v2, 0x69

    #@641
    aput-byte v2, v0, v1

    #@643
    const/16 v1, 0x137

    #@645
    const/16 v2, 0x6a

    #@647
    aput-byte v2, v0, v1

    #@649
    const/16 v1, 0x138

    #@64b
    const/16 v2, 0x73

    #@64d
    aput-byte v2, v0, v1

    #@64f
    const/16 v1, 0x139

    #@651
    const/16 v2, 0x74

    #@653
    aput-byte v2, v0, v1

    #@655
    const/16 v1, 0x13a

    #@657
    const/16 v2, 0x75

    #@659
    aput-byte v2, v0, v1

    #@65b
    const/16 v1, 0x13b

    #@65d
    const/16 v2, 0x76

    #@65f
    aput-byte v2, v0, v1

    #@661
    const/16 v1, 0x13c

    #@663
    const/16 v2, 0x77

    #@665
    aput-byte v2, v0, v1

    #@667
    const/16 v1, 0x13d

    #@669
    const/16 v2, 0x78

    #@66b
    aput-byte v2, v0, v1

    #@66d
    const/16 v1, 0x13e

    #@66f
    const/16 v2, 0x79

    #@671
    aput-byte v2, v0, v1

    #@673
    const/16 v1, 0x13f

    #@675
    const/16 v2, 0x7a

    #@677
    aput-byte v2, v0, v1

    #@679
    const/16 v1, 0x140

    #@67b
    const/16 v2, -0x7d

    #@67d
    aput-byte v2, v0, v1

    #@67f
    const/16 v1, 0x141

    #@681
    const/16 v2, -0x7c

    #@683
    aput-byte v2, v0, v1

    #@685
    const/16 v1, 0x142

    #@687
    const/16 v2, -0x7b

    #@689
    aput-byte v2, v0, v1

    #@68b
    const/16 v1, 0x143

    #@68d
    const/16 v2, -0x7a

    #@68f
    aput-byte v2, v0, v1

    #@691
    const/16 v1, 0x144

    #@693
    const/16 v2, -0x79

    #@695
    aput-byte v2, v0, v1

    #@697
    const/16 v1, 0x145

    #@699
    const/16 v2, -0x78

    #@69b
    aput-byte v2, v0, v1

    #@69d
    const/16 v1, 0x146

    #@69f
    const/16 v2, -0x77

    #@6a1
    aput-byte v2, v0, v1

    #@6a3
    const/16 v1, 0x147

    #@6a5
    const/16 v2, -0x76

    #@6a7
    aput-byte v2, v0, v1

    #@6a9
    const/16 v1, 0x148

    #@6ab
    const/16 v2, -0x6e

    #@6ad
    aput-byte v2, v0, v1

    #@6af
    const/16 v1, 0x149

    #@6b1
    const/16 v2, -0x6d

    #@6b3
    aput-byte v2, v0, v1

    #@6b5
    const/16 v1, 0x14a

    #@6b7
    const/16 v2, -0x6c

    #@6b9
    aput-byte v2, v0, v1

    #@6bb
    const/16 v1, 0x14b

    #@6bd
    const/16 v2, -0x6b

    #@6bf
    aput-byte v2, v0, v1

    #@6c1
    const/16 v1, 0x14c

    #@6c3
    const/16 v2, -0x6a

    #@6c5
    aput-byte v2, v0, v1

    #@6c7
    const/16 v1, 0x14d

    #@6c9
    const/16 v2, -0x69

    #@6cb
    aput-byte v2, v0, v1

    #@6cd
    const/16 v1, 0x14e

    #@6cf
    const/16 v2, -0x68

    #@6d1
    aput-byte v2, v0, v1

    #@6d3
    const/16 v1, 0x14f

    #@6d5
    const/16 v2, -0x67

    #@6d7
    aput-byte v2, v0, v1

    #@6d9
    const/16 v1, 0x150

    #@6db
    const/16 v2, -0x66

    #@6dd
    aput-byte v2, v0, v1

    #@6df
    const/16 v1, 0x151

    #@6e1
    const/16 v2, -0x5e

    #@6e3
    aput-byte v2, v0, v1

    #@6e5
    const/16 v1, 0x152

    #@6e7
    const/16 v2, -0x5d

    #@6e9
    aput-byte v2, v0, v1

    #@6eb
    const/16 v1, 0x153

    #@6ed
    const/16 v2, -0x5c

    #@6ef
    aput-byte v2, v0, v1

    #@6f1
    const/16 v1, 0x154

    #@6f3
    const/16 v2, -0x5b

    #@6f5
    aput-byte v2, v0, v1

    #@6f7
    const/16 v1, 0x155

    #@6f9
    const/16 v2, -0x5a

    #@6fb
    aput-byte v2, v0, v1

    #@6fd
    const/16 v1, 0x156

    #@6ff
    const/16 v2, -0x59

    #@701
    aput-byte v2, v0, v1

    #@703
    const/16 v1, 0x157

    #@705
    const/16 v2, -0x58

    #@707
    aput-byte v2, v0, v1

    #@709
    const/16 v1, 0x158

    #@70b
    const/16 v2, -0x57

    #@70d
    aput-byte v2, v0, v1

    #@70f
    const/16 v1, 0x159

    #@711
    const/16 v2, -0x56

    #@713
    aput-byte v2, v0, v1

    #@715
    const/16 v1, 0x15a

    #@717
    const/16 v2, -0x4e

    #@719
    aput-byte v2, v0, v1

    #@71b
    const/16 v1, 0x15b

    #@71d
    const/16 v2, -0x4d

    #@71f
    aput-byte v2, v0, v1

    #@721
    const/16 v1, 0x15c

    #@723
    const/16 v2, -0x4c

    #@725
    aput-byte v2, v0, v1

    #@727
    const/16 v1, 0x15d

    #@729
    const/16 v2, -0x4b

    #@72b
    aput-byte v2, v0, v1

    #@72d
    const/16 v1, 0x15e

    #@72f
    const/16 v2, -0x4a

    #@731
    aput-byte v2, v0, v1

    #@733
    const/16 v1, 0x15f

    #@735
    const/16 v2, -0x49

    #@737
    aput-byte v2, v0, v1

    #@739
    const/16 v1, 0x160

    #@73b
    const/16 v2, -0x48

    #@73d
    aput-byte v2, v0, v1

    #@73f
    const/16 v1, 0x161

    #@741
    const/16 v2, -0x47

    #@743
    aput-byte v2, v0, v1

    #@745
    const/16 v1, 0x162

    #@747
    const/16 v2, -0x46

    #@749
    aput-byte v2, v0, v1

    #@74b
    const/16 v1, 0x163

    #@74d
    const/16 v2, -0x3e

    #@74f
    aput-byte v2, v0, v1

    #@751
    const/16 v1, 0x164

    #@753
    const/16 v2, -0x3d

    #@755
    aput-byte v2, v0, v1

    #@757
    const/16 v1, 0x165

    #@759
    const/16 v2, -0x3c

    #@75b
    aput-byte v2, v0, v1

    #@75d
    const/16 v1, 0x166

    #@75f
    const/16 v2, -0x3b

    #@761
    aput-byte v2, v0, v1

    #@763
    const/16 v1, 0x167

    #@765
    const/16 v2, -0x3a

    #@767
    aput-byte v2, v0, v1

    #@769
    const/16 v1, 0x168

    #@76b
    const/16 v2, -0x39

    #@76d
    aput-byte v2, v0, v1

    #@76f
    const/16 v1, 0x169

    #@771
    const/16 v2, -0x38

    #@773
    aput-byte v2, v0, v1

    #@775
    const/16 v1, 0x16a

    #@777
    const/16 v2, -0x37

    #@779
    aput-byte v2, v0, v1

    #@77b
    const/16 v1, 0x16b

    #@77d
    const/16 v2, -0x36

    #@77f
    aput-byte v2, v0, v1

    #@781
    const/16 v1, 0x16c

    #@783
    const/16 v2, -0x2e

    #@785
    aput-byte v2, v0, v1

    #@787
    const/16 v1, 0x16d

    #@789
    const/16 v2, -0x2d

    #@78b
    aput-byte v2, v0, v1

    #@78d
    const/16 v1, 0x16e

    #@78f
    const/16 v2, -0x2c

    #@791
    aput-byte v2, v0, v1

    #@793
    const/16 v1, 0x16f

    #@795
    const/16 v2, -0x2b

    #@797
    aput-byte v2, v0, v1

    #@799
    const/16 v1, 0x170

    #@79b
    const/16 v2, -0x2a

    #@79d
    aput-byte v2, v0, v1

    #@79f
    const/16 v1, 0x171

    #@7a1
    const/16 v2, -0x29

    #@7a3
    aput-byte v2, v0, v1

    #@7a5
    const/16 v1, 0x172

    #@7a7
    const/16 v2, -0x28

    #@7a9
    aput-byte v2, v0, v1

    #@7ab
    const/16 v1, 0x173

    #@7ad
    const/16 v2, -0x27

    #@7af
    aput-byte v2, v0, v1

    #@7b1
    const/16 v1, 0x174

    #@7b3
    const/16 v2, -0x26

    #@7b5
    aput-byte v2, v0, v1

    #@7b7
    const/16 v1, 0x175

    #@7b9
    const/16 v2, -0x1f

    #@7bb
    aput-byte v2, v0, v1

    #@7bd
    const/16 v1, 0x176

    #@7bf
    const/16 v2, -0x1e

    #@7c1
    aput-byte v2, v0, v1

    #@7c3
    const/16 v1, 0x177

    #@7c5
    const/16 v2, -0x1d

    #@7c7
    aput-byte v2, v0, v1

    #@7c9
    const/16 v1, 0x178

    #@7cb
    const/16 v2, -0x1c

    #@7cd
    aput-byte v2, v0, v1

    #@7cf
    const/16 v1, 0x179

    #@7d1
    const/16 v2, -0x1b

    #@7d3
    aput-byte v2, v0, v1

    #@7d5
    const/16 v1, 0x17a

    #@7d7
    const/16 v2, -0x1a

    #@7d9
    aput-byte v2, v0, v1

    #@7db
    const/16 v1, 0x17b

    #@7dd
    const/16 v2, -0x19

    #@7df
    aput-byte v2, v0, v1

    #@7e1
    const/16 v1, 0x17c

    #@7e3
    const/16 v2, -0x18

    #@7e5
    aput-byte v2, v0, v1

    #@7e7
    const/16 v1, 0x17d

    #@7e9
    const/16 v2, -0x17

    #@7eb
    aput-byte v2, v0, v1

    #@7ed
    const/16 v1, 0x17e

    #@7ef
    const/16 v2, -0x16

    #@7f1
    aput-byte v2, v0, v1

    #@7f3
    const/16 v1, 0x17f

    #@7f5
    const/16 v2, -0xf

    #@7f7
    aput-byte v2, v0, v1

    #@7f9
    const/16 v1, 0x180

    #@7fb
    const/16 v2, -0xe

    #@7fd
    aput-byte v2, v0, v1

    #@7ff
    const/16 v1, 0x181

    #@801
    const/16 v2, -0xd

    #@803
    aput-byte v2, v0, v1

    #@805
    const/16 v1, 0x182

    #@807
    const/16 v2, -0xc

    #@809
    aput-byte v2, v0, v1

    #@80b
    const/16 v1, 0x183

    #@80d
    const/16 v2, -0xb

    #@80f
    aput-byte v2, v0, v1

    #@811
    const/16 v1, 0x184

    #@813
    const/16 v2, -0xa

    #@815
    aput-byte v2, v0, v1

    #@817
    const/16 v1, 0x185

    #@819
    const/16 v2, -0x9

    #@81b
    aput-byte v2, v0, v1

    #@81d
    const/16 v1, 0x186

    #@81f
    const/4 v2, -0x8

    #@820
    aput-byte v2, v0, v1

    #@822
    const/16 v1, 0x187

    #@824
    const/4 v2, -0x7

    #@825
    aput-byte v2, v0, v1

    #@827
    const/16 v1, 0x188

    #@829
    const/4 v2, -0x6

    #@82a
    aput-byte v2, v0, v1

    #@82c
    const/16 v1, 0x189

    #@82e
    const/4 v2, -0x1

    #@82f
    aput-byte v2, v0, v1

    #@831
    const/16 v1, 0x18a

    #@833
    const/16 v2, -0x3c

    #@835
    aput-byte v2, v0, v1

    #@837
    const/16 v1, 0x18b

    #@839
    aput-byte v4, v0, v1

    #@83b
    const/16 v1, 0x18c

    #@83d
    const/16 v2, 0x1f

    #@83f
    aput-byte v2, v0, v1

    #@841
    const/16 v1, 0x18d

    #@843
    aput-byte v5, v0, v1

    #@845
    const/16 v1, 0x18e

    #@847
    aput-byte v4, v0, v1

    #@849
    const/16 v1, 0x18f

    #@84b
    aput-byte v6, v0, v1

    #@84d
    const/16 v1, 0x190

    #@84f
    aput-byte v5, v0, v1

    #@851
    const/16 v1, 0x191

    #@853
    aput-byte v5, v0, v1

    #@855
    const/16 v1, 0x192

    #@857
    aput-byte v5, v0, v1

    #@859
    const/16 v1, 0x193

    #@85b
    aput-byte v5, v0, v1

    #@85d
    const/16 v1, 0x194

    #@85f
    aput-byte v5, v0, v1

    #@861
    const/16 v1, 0x195

    #@863
    aput-byte v5, v0, v1

    #@865
    const/16 v1, 0x196

    #@867
    aput-byte v5, v0, v1

    #@869
    const/16 v1, 0x197

    #@86b
    aput-byte v5, v0, v1

    #@86d
    const/16 v1, 0x198

    #@86f
    aput-byte v5, v0, v1

    #@871
    const/16 v1, 0x199

    #@873
    aput-byte v4, v0, v1

    #@875
    const/16 v1, 0x19a

    #@877
    aput-byte v4, v0, v1

    #@879
    const/16 v1, 0x19b

    #@87b
    aput-byte v4, v0, v1

    #@87d
    const/16 v1, 0x19c

    #@87f
    aput-byte v4, v0, v1

    #@881
    const/16 v1, 0x19d

    #@883
    aput-byte v4, v0, v1

    #@885
    const/16 v1, 0x19e

    #@887
    aput-byte v4, v0, v1

    #@889
    const/16 v1, 0x19f

    #@88b
    aput-byte v5, v0, v1

    #@88d
    const/16 v1, 0x1a0

    #@88f
    const/4 v2, 0x2

    #@890
    aput-byte v2, v0, v1

    #@892
    const/16 v1, 0x1a1

    #@894
    aput-byte v6, v0, v1

    #@896
    const/16 v1, 0x1a2

    #@898
    aput-byte v7, v0, v1

    #@89a
    const/16 v1, 0x1a3

    #@89c
    const/4 v2, 0x5

    #@89d
    aput-byte v2, v0, v1

    #@89f
    const/16 v1, 0x1a4

    #@8a1
    const/4 v2, 0x6

    #@8a2
    aput-byte v2, v0, v1

    #@8a4
    const/16 v1, 0x1a5

    #@8a6
    const/4 v2, 0x7

    #@8a7
    aput-byte v2, v0, v1

    #@8a9
    const/16 v1, 0x1a6

    #@8ab
    const/16 v2, 0x8

    #@8ad
    aput-byte v2, v0, v1

    #@8af
    const/16 v1, 0x1a7

    #@8b1
    const/16 v2, 0x9

    #@8b3
    aput-byte v2, v0, v1

    #@8b5
    const/16 v1, 0x1a8

    #@8b7
    const/16 v2, 0xa

    #@8b9
    aput-byte v2, v0, v1

    #@8bb
    const/16 v1, 0x1a9

    #@8bd
    const/16 v2, 0xb

    #@8bf
    aput-byte v2, v0, v1

    #@8c1
    const/16 v1, 0x1aa

    #@8c3
    const/4 v2, -0x1

    #@8c4
    aput-byte v2, v0, v1

    #@8c6
    const/16 v1, 0x1ab

    #@8c8
    const/16 v2, -0x3c

    #@8ca
    aput-byte v2, v0, v1

    #@8cc
    const/16 v1, 0x1ac

    #@8ce
    aput-byte v4, v0, v1

    #@8d0
    const/16 v1, 0x1ad

    #@8d2
    const/16 v2, -0x4b

    #@8d4
    aput-byte v2, v0, v1

    #@8d6
    const/16 v1, 0x1ae

    #@8d8
    const/16 v2, 0x11

    #@8da
    aput-byte v2, v0, v1

    #@8dc
    const/16 v1, 0x1af

    #@8de
    aput-byte v4, v0, v1

    #@8e0
    const/16 v1, 0x1b0

    #@8e2
    const/4 v2, 0x2

    #@8e3
    aput-byte v2, v0, v1

    #@8e5
    const/16 v1, 0x1b1

    #@8e7
    aput-byte v5, v0, v1

    #@8e9
    const/16 v1, 0x1b2

    #@8eb
    const/4 v2, 0x2

    #@8ec
    aput-byte v2, v0, v1

    #@8ee
    const/16 v1, 0x1b3

    #@8f0
    aput-byte v7, v0, v1

    #@8f2
    const/16 v1, 0x1b4

    #@8f4
    aput-byte v7, v0, v1

    #@8f6
    const/16 v1, 0x1b5

    #@8f8
    aput-byte v6, v0, v1

    #@8fa
    const/16 v1, 0x1b6

    #@8fc
    aput-byte v7, v0, v1

    #@8fe
    const/16 v1, 0x1b7

    #@900
    const/4 v2, 0x7

    #@901
    aput-byte v2, v0, v1

    #@903
    const/16 v1, 0x1b8

    #@905
    const/4 v2, 0x5

    #@906
    aput-byte v2, v0, v1

    #@908
    const/16 v1, 0x1b9

    #@90a
    aput-byte v7, v0, v1

    #@90c
    const/16 v1, 0x1ba

    #@90e
    aput-byte v7, v0, v1

    #@910
    const/16 v1, 0x1bb

    #@912
    aput-byte v4, v0, v1

    #@914
    const/16 v1, 0x1bc

    #@916
    aput-byte v5, v0, v1

    #@918
    const/16 v1, 0x1bd

    #@91a
    const/4 v2, 0x2

    #@91b
    aput-byte v2, v0, v1

    #@91d
    const/16 v1, 0x1be

    #@91f
    const/16 v2, 0x77

    #@921
    aput-byte v2, v0, v1

    #@923
    const/16 v1, 0x1bf

    #@925
    aput-byte v4, v0, v1

    #@927
    const/16 v1, 0x1c0

    #@929
    aput-byte v5, v0, v1

    #@92b
    const/16 v1, 0x1c1

    #@92d
    const/4 v2, 0x2

    #@92e
    aput-byte v2, v0, v1

    #@930
    const/16 v1, 0x1c2

    #@932
    aput-byte v6, v0, v1

    #@934
    const/16 v1, 0x1c3

    #@936
    const/16 v2, 0x11

    #@938
    aput-byte v2, v0, v1

    #@93a
    const/16 v1, 0x1c4

    #@93c
    aput-byte v7, v0, v1

    #@93e
    const/16 v1, 0x1c5

    #@940
    const/4 v2, 0x5

    #@941
    aput-byte v2, v0, v1

    #@943
    const/16 v1, 0x1c6

    #@945
    const/16 v2, 0x21

    #@947
    aput-byte v2, v0, v1

    #@949
    const/16 v1, 0x1c7

    #@94b
    const/16 v2, 0x31

    #@94d
    aput-byte v2, v0, v1

    #@94f
    const/16 v1, 0x1c8

    #@951
    const/4 v2, 0x6

    #@952
    aput-byte v2, v0, v1

    #@954
    const/16 v1, 0x1c9

    #@956
    const/16 v2, 0x12

    #@958
    aput-byte v2, v0, v1

    #@95a
    const/16 v1, 0x1ca

    #@95c
    const/16 v2, 0x41

    #@95e
    aput-byte v2, v0, v1

    #@960
    const/16 v1, 0x1cb

    #@962
    const/16 v2, 0x51

    #@964
    aput-byte v2, v0, v1

    #@966
    const/16 v1, 0x1cc

    #@968
    const/4 v2, 0x7

    #@969
    aput-byte v2, v0, v1

    #@96b
    const/16 v1, 0x1cd

    #@96d
    const/16 v2, 0x61

    #@96f
    aput-byte v2, v0, v1

    #@971
    const/16 v1, 0x1ce

    #@973
    const/16 v2, 0x71

    #@975
    aput-byte v2, v0, v1

    #@977
    const/16 v1, 0x1cf

    #@979
    const/16 v2, 0x13

    #@97b
    aput-byte v2, v0, v1

    #@97d
    const/16 v1, 0x1d0

    #@97f
    const/16 v2, 0x22

    #@981
    aput-byte v2, v0, v1

    #@983
    const/16 v1, 0x1d1

    #@985
    aput-byte v3, v0, v1

    #@987
    const/16 v1, 0x1d2

    #@989
    const/16 v2, -0x7f

    #@98b
    aput-byte v2, v0, v1

    #@98d
    const/16 v1, 0x1d3

    #@98f
    const/16 v2, 0x8

    #@991
    aput-byte v2, v0, v1

    #@993
    const/16 v1, 0x1d4

    #@995
    const/16 v2, 0x14

    #@997
    aput-byte v2, v0, v1

    #@999
    const/16 v1, 0x1d5

    #@99b
    const/16 v2, 0x42

    #@99d
    aput-byte v2, v0, v1

    #@99f
    const/16 v1, 0x1d6

    #@9a1
    const/16 v2, -0x6f

    #@9a3
    aput-byte v2, v0, v1

    #@9a5
    const/16 v1, 0x1d7

    #@9a7
    const/16 v2, -0x5f

    #@9a9
    aput-byte v2, v0, v1

    #@9ab
    const/16 v1, 0x1d8

    #@9ad
    const/16 v2, -0x4f

    #@9af
    aput-byte v2, v0, v1

    #@9b1
    const/16 v1, 0x1d9

    #@9b3
    const/16 v2, -0x3f

    #@9b5
    aput-byte v2, v0, v1

    #@9b7
    const/16 v1, 0x1da

    #@9b9
    const/16 v2, 0x9

    #@9bb
    aput-byte v2, v0, v1

    #@9bd
    const/16 v1, 0x1db

    #@9bf
    const/16 v2, 0x23

    #@9c1
    aput-byte v2, v0, v1

    #@9c3
    const/16 v1, 0x1dc

    #@9c5
    const/16 v2, 0x33

    #@9c7
    aput-byte v2, v0, v1

    #@9c9
    const/16 v1, 0x1dd

    #@9cb
    const/16 v2, 0x52

    #@9cd
    aput-byte v2, v0, v1

    #@9cf
    const/16 v1, 0x1de

    #@9d1
    const/16 v2, -0x10

    #@9d3
    aput-byte v2, v0, v1

    #@9d5
    const/16 v1, 0x1df

    #@9d7
    const/16 v2, 0x15

    #@9d9
    aput-byte v2, v0, v1

    #@9db
    const/16 v1, 0x1e0

    #@9dd
    const/16 v2, 0x62

    #@9df
    aput-byte v2, v0, v1

    #@9e1
    const/16 v1, 0x1e1

    #@9e3
    const/16 v2, 0x72

    #@9e5
    aput-byte v2, v0, v1

    #@9e7
    const/16 v1, 0x1e2

    #@9e9
    const/16 v2, -0x2f

    #@9eb
    aput-byte v2, v0, v1

    #@9ed
    const/16 v1, 0x1e3

    #@9ef
    const/16 v2, 0xa

    #@9f1
    aput-byte v2, v0, v1

    #@9f3
    const/16 v1, 0x1e4

    #@9f5
    const/16 v2, 0x16

    #@9f7
    aput-byte v2, v0, v1

    #@9f9
    const/16 v1, 0x1e5

    #@9fb
    const/16 v2, 0x24

    #@9fd
    aput-byte v2, v0, v1

    #@9ff
    const/16 v1, 0x1e6

    #@a01
    const/16 v2, 0x34

    #@a03
    aput-byte v2, v0, v1

    #@a05
    const/16 v1, 0x1e7

    #@a07
    const/16 v2, -0x1f

    #@a09
    aput-byte v2, v0, v1

    #@a0b
    const/16 v1, 0x1e8

    #@a0d
    const/16 v2, 0x25

    #@a0f
    aput-byte v2, v0, v1

    #@a11
    const/16 v1, 0x1e9

    #@a13
    const/16 v2, -0xf

    #@a15
    aput-byte v2, v0, v1

    #@a17
    const/16 v1, 0x1ea

    #@a19
    const/16 v2, 0x17

    #@a1b
    aput-byte v2, v0, v1

    #@a1d
    const/16 v1, 0x1eb

    #@a1f
    const/16 v2, 0x18

    #@a21
    aput-byte v2, v0, v1

    #@a23
    const/16 v1, 0x1ec

    #@a25
    const/16 v2, 0x19

    #@a27
    aput-byte v2, v0, v1

    #@a29
    const/16 v1, 0x1ed

    #@a2b
    const/16 v2, 0x1a

    #@a2d
    aput-byte v2, v0, v1

    #@a2f
    const/16 v1, 0x1ee

    #@a31
    const/16 v2, 0x26

    #@a33
    aput-byte v2, v0, v1

    #@a35
    const/16 v1, 0x1ef

    #@a37
    const/16 v2, 0x27

    #@a39
    aput-byte v2, v0, v1

    #@a3b
    const/16 v1, 0x1f0

    #@a3d
    const/16 v2, 0x28

    #@a3f
    aput-byte v2, v0, v1

    #@a41
    const/16 v1, 0x1f1

    #@a43
    const/16 v2, 0x29

    #@a45
    aput-byte v2, v0, v1

    #@a47
    const/16 v1, 0x1f2

    #@a49
    const/16 v2, 0x2a

    #@a4b
    aput-byte v2, v0, v1

    #@a4d
    const/16 v1, 0x1f3

    #@a4f
    const/16 v2, 0x35

    #@a51
    aput-byte v2, v0, v1

    #@a53
    const/16 v1, 0x1f4

    #@a55
    const/16 v2, 0x36

    #@a57
    aput-byte v2, v0, v1

    #@a59
    const/16 v1, 0x1f5

    #@a5b
    const/16 v2, 0x37

    #@a5d
    aput-byte v2, v0, v1

    #@a5f
    const/16 v1, 0x1f6

    #@a61
    const/16 v2, 0x38

    #@a63
    aput-byte v2, v0, v1

    #@a65
    const/16 v1, 0x1f7

    #@a67
    const/16 v2, 0x39

    #@a69
    aput-byte v2, v0, v1

    #@a6b
    const/16 v1, 0x1f8

    #@a6d
    const/16 v2, 0x3a

    #@a6f
    aput-byte v2, v0, v1

    #@a71
    const/16 v1, 0x1f9

    #@a73
    const/16 v2, 0x43

    #@a75
    aput-byte v2, v0, v1

    #@a77
    const/16 v1, 0x1fa

    #@a79
    const/16 v2, 0x44

    #@a7b
    aput-byte v2, v0, v1

    #@a7d
    const/16 v1, 0x1fb

    #@a7f
    const/16 v2, 0x45

    #@a81
    aput-byte v2, v0, v1

    #@a83
    const/16 v1, 0x1fc

    #@a85
    const/16 v2, 0x46

    #@a87
    aput-byte v2, v0, v1

    #@a89
    const/16 v1, 0x1fd

    #@a8b
    const/16 v2, 0x47

    #@a8d
    aput-byte v2, v0, v1

    #@a8f
    const/16 v1, 0x1fe

    #@a91
    const/16 v2, 0x48

    #@a93
    aput-byte v2, v0, v1

    #@a95
    const/16 v1, 0x1ff

    #@a97
    const/16 v2, 0x49

    #@a99
    aput-byte v2, v0, v1

    #@a9b
    const/16 v1, 0x200

    #@a9d
    const/16 v2, 0x4a

    #@a9f
    aput-byte v2, v0, v1

    #@aa1
    const/16 v1, 0x201

    #@aa3
    const/16 v2, 0x53

    #@aa5
    aput-byte v2, v0, v1

    #@aa7
    const/16 v1, 0x202

    #@aa9
    const/16 v2, 0x54

    #@aab
    aput-byte v2, v0, v1

    #@aad
    const/16 v1, 0x203

    #@aaf
    const/16 v2, 0x55

    #@ab1
    aput-byte v2, v0, v1

    #@ab3
    const/16 v1, 0x204

    #@ab5
    const/16 v2, 0x56

    #@ab7
    aput-byte v2, v0, v1

    #@ab9
    const/16 v1, 0x205

    #@abb
    const/16 v2, 0x57

    #@abd
    aput-byte v2, v0, v1

    #@abf
    const/16 v1, 0x206

    #@ac1
    const/16 v2, 0x58

    #@ac3
    aput-byte v2, v0, v1

    #@ac5
    const/16 v1, 0x207

    #@ac7
    const/16 v2, 0x59

    #@ac9
    aput-byte v2, v0, v1

    #@acb
    const/16 v1, 0x208

    #@acd
    const/16 v2, 0x5a

    #@acf
    aput-byte v2, v0, v1

    #@ad1
    const/16 v1, 0x209

    #@ad3
    const/16 v2, 0x63

    #@ad5
    aput-byte v2, v0, v1

    #@ad7
    const/16 v1, 0x20a

    #@ad9
    const/16 v2, 0x64

    #@adb
    aput-byte v2, v0, v1

    #@add
    const/16 v1, 0x20b

    #@adf
    const/16 v2, 0x65

    #@ae1
    aput-byte v2, v0, v1

    #@ae3
    const/16 v1, 0x20c

    #@ae5
    const/16 v2, 0x66

    #@ae7
    aput-byte v2, v0, v1

    #@ae9
    const/16 v1, 0x20d

    #@aeb
    const/16 v2, 0x67

    #@aed
    aput-byte v2, v0, v1

    #@aef
    const/16 v1, 0x20e

    #@af1
    const/16 v2, 0x68

    #@af3
    aput-byte v2, v0, v1

    #@af5
    const/16 v1, 0x20f

    #@af7
    const/16 v2, 0x69

    #@af9
    aput-byte v2, v0, v1

    #@afb
    const/16 v1, 0x210

    #@afd
    const/16 v2, 0x6a

    #@aff
    aput-byte v2, v0, v1

    #@b01
    const/16 v1, 0x211

    #@b03
    const/16 v2, 0x73

    #@b05
    aput-byte v2, v0, v1

    #@b07
    const/16 v1, 0x212

    #@b09
    const/16 v2, 0x74

    #@b0b
    aput-byte v2, v0, v1

    #@b0d
    const/16 v1, 0x213

    #@b0f
    const/16 v2, 0x75

    #@b11
    aput-byte v2, v0, v1

    #@b13
    const/16 v1, 0x214

    #@b15
    const/16 v2, 0x76

    #@b17
    aput-byte v2, v0, v1

    #@b19
    const/16 v1, 0x215

    #@b1b
    const/16 v2, 0x77

    #@b1d
    aput-byte v2, v0, v1

    #@b1f
    const/16 v1, 0x216

    #@b21
    const/16 v2, 0x78

    #@b23
    aput-byte v2, v0, v1

    #@b25
    const/16 v1, 0x217

    #@b27
    const/16 v2, 0x79

    #@b29
    aput-byte v2, v0, v1

    #@b2b
    const/16 v1, 0x218

    #@b2d
    const/16 v2, 0x7a

    #@b2f
    aput-byte v2, v0, v1

    #@b31
    const/16 v1, 0x219

    #@b33
    const/16 v2, -0x7e

    #@b35
    aput-byte v2, v0, v1

    #@b37
    const/16 v1, 0x21a

    #@b39
    const/16 v2, -0x7d

    #@b3b
    aput-byte v2, v0, v1

    #@b3d
    const/16 v1, 0x21b

    #@b3f
    const/16 v2, -0x7c

    #@b41
    aput-byte v2, v0, v1

    #@b43
    const/16 v1, 0x21c

    #@b45
    const/16 v2, -0x7b

    #@b47
    aput-byte v2, v0, v1

    #@b49
    const/16 v1, 0x21d

    #@b4b
    const/16 v2, -0x7a

    #@b4d
    aput-byte v2, v0, v1

    #@b4f
    const/16 v1, 0x21e

    #@b51
    const/16 v2, -0x79

    #@b53
    aput-byte v2, v0, v1

    #@b55
    const/16 v1, 0x21f

    #@b57
    const/16 v2, -0x78

    #@b59
    aput-byte v2, v0, v1

    #@b5b
    const/16 v1, 0x220

    #@b5d
    const/16 v2, -0x77

    #@b5f
    aput-byte v2, v0, v1

    #@b61
    const/16 v1, 0x221

    #@b63
    const/16 v2, -0x76

    #@b65
    aput-byte v2, v0, v1

    #@b67
    const/16 v1, 0x222

    #@b69
    const/16 v2, -0x6e

    #@b6b
    aput-byte v2, v0, v1

    #@b6d
    const/16 v1, 0x223

    #@b6f
    const/16 v2, -0x6d

    #@b71
    aput-byte v2, v0, v1

    #@b73
    const/16 v1, 0x224

    #@b75
    const/16 v2, -0x6c

    #@b77
    aput-byte v2, v0, v1

    #@b79
    const/16 v1, 0x225

    #@b7b
    const/16 v2, -0x6b

    #@b7d
    aput-byte v2, v0, v1

    #@b7f
    const/16 v1, 0x226

    #@b81
    const/16 v2, -0x6a

    #@b83
    aput-byte v2, v0, v1

    #@b85
    const/16 v1, 0x227

    #@b87
    const/16 v2, -0x69

    #@b89
    aput-byte v2, v0, v1

    #@b8b
    const/16 v1, 0x228

    #@b8d
    const/16 v2, -0x68

    #@b8f
    aput-byte v2, v0, v1

    #@b91
    const/16 v1, 0x229

    #@b93
    const/16 v2, -0x67

    #@b95
    aput-byte v2, v0, v1

    #@b97
    const/16 v1, 0x22a

    #@b99
    const/16 v2, -0x66

    #@b9b
    aput-byte v2, v0, v1

    #@b9d
    const/16 v1, 0x22b

    #@b9f
    const/16 v2, -0x5e

    #@ba1
    aput-byte v2, v0, v1

    #@ba3
    const/16 v1, 0x22c

    #@ba5
    const/16 v2, -0x5d

    #@ba7
    aput-byte v2, v0, v1

    #@ba9
    const/16 v1, 0x22d

    #@bab
    const/16 v2, -0x5c

    #@bad
    aput-byte v2, v0, v1

    #@baf
    const/16 v1, 0x22e

    #@bb1
    const/16 v2, -0x5b

    #@bb3
    aput-byte v2, v0, v1

    #@bb5
    const/16 v1, 0x22f

    #@bb7
    const/16 v2, -0x5a

    #@bb9
    aput-byte v2, v0, v1

    #@bbb
    const/16 v1, 0x230

    #@bbd
    const/16 v2, -0x59

    #@bbf
    aput-byte v2, v0, v1

    #@bc1
    const/16 v1, 0x231

    #@bc3
    const/16 v2, -0x58

    #@bc5
    aput-byte v2, v0, v1

    #@bc7
    const/16 v1, 0x232

    #@bc9
    const/16 v2, -0x57

    #@bcb
    aput-byte v2, v0, v1

    #@bcd
    const/16 v1, 0x233

    #@bcf
    const/16 v2, -0x56

    #@bd1
    aput-byte v2, v0, v1

    #@bd3
    const/16 v1, 0x234

    #@bd5
    const/16 v2, -0x4e

    #@bd7
    aput-byte v2, v0, v1

    #@bd9
    const/16 v1, 0x235

    #@bdb
    const/16 v2, -0x4d

    #@bdd
    aput-byte v2, v0, v1

    #@bdf
    const/16 v1, 0x236

    #@be1
    const/16 v2, -0x4c

    #@be3
    aput-byte v2, v0, v1

    #@be5
    const/16 v1, 0x237

    #@be7
    const/16 v2, -0x4b

    #@be9
    aput-byte v2, v0, v1

    #@beb
    const/16 v1, 0x238

    #@bed
    const/16 v2, -0x4a

    #@bef
    aput-byte v2, v0, v1

    #@bf1
    const/16 v1, 0x239

    #@bf3
    const/16 v2, -0x49

    #@bf5
    aput-byte v2, v0, v1

    #@bf7
    const/16 v1, 0x23a

    #@bf9
    const/16 v2, -0x48

    #@bfb
    aput-byte v2, v0, v1

    #@bfd
    const/16 v1, 0x23b

    #@bff
    const/16 v2, -0x47

    #@c01
    aput-byte v2, v0, v1

    #@c03
    const/16 v1, 0x23c

    #@c05
    const/16 v2, -0x46

    #@c07
    aput-byte v2, v0, v1

    #@c09
    const/16 v1, 0x23d

    #@c0b
    const/16 v2, -0x3e

    #@c0d
    aput-byte v2, v0, v1

    #@c0f
    const/16 v1, 0x23e

    #@c11
    const/16 v2, -0x3d

    #@c13
    aput-byte v2, v0, v1

    #@c15
    const/16 v1, 0x23f

    #@c17
    const/16 v2, -0x3c

    #@c19
    aput-byte v2, v0, v1

    #@c1b
    const/16 v1, 0x240

    #@c1d
    const/16 v2, -0x3b

    #@c1f
    aput-byte v2, v0, v1

    #@c21
    const/16 v1, 0x241

    #@c23
    const/16 v2, -0x3a

    #@c25
    aput-byte v2, v0, v1

    #@c27
    const/16 v1, 0x242

    #@c29
    const/16 v2, -0x39

    #@c2b
    aput-byte v2, v0, v1

    #@c2d
    const/16 v1, 0x243

    #@c2f
    const/16 v2, -0x38

    #@c31
    aput-byte v2, v0, v1

    #@c33
    const/16 v1, 0x244

    #@c35
    const/16 v2, -0x37

    #@c37
    aput-byte v2, v0, v1

    #@c39
    const/16 v1, 0x245

    #@c3b
    const/16 v2, -0x36

    #@c3d
    aput-byte v2, v0, v1

    #@c3f
    const/16 v1, 0x246

    #@c41
    const/16 v2, -0x2e

    #@c43
    aput-byte v2, v0, v1

    #@c45
    const/16 v1, 0x247

    #@c47
    const/16 v2, -0x2d

    #@c49
    aput-byte v2, v0, v1

    #@c4b
    const/16 v1, 0x248

    #@c4d
    const/16 v2, -0x2c

    #@c4f
    aput-byte v2, v0, v1

    #@c51
    const/16 v1, 0x249

    #@c53
    const/16 v2, -0x2b

    #@c55
    aput-byte v2, v0, v1

    #@c57
    const/16 v1, 0x24a

    #@c59
    const/16 v2, -0x2a

    #@c5b
    aput-byte v2, v0, v1

    #@c5d
    const/16 v1, 0x24b

    #@c5f
    const/16 v2, -0x29

    #@c61
    aput-byte v2, v0, v1

    #@c63
    const/16 v1, 0x24c

    #@c65
    const/16 v2, -0x28

    #@c67
    aput-byte v2, v0, v1

    #@c69
    const/16 v1, 0x24d

    #@c6b
    const/16 v2, -0x27

    #@c6d
    aput-byte v2, v0, v1

    #@c6f
    const/16 v1, 0x24e

    #@c71
    const/16 v2, -0x26

    #@c73
    aput-byte v2, v0, v1

    #@c75
    const/16 v1, 0x24f

    #@c77
    const/16 v2, -0x1e

    #@c79
    aput-byte v2, v0, v1

    #@c7b
    const/16 v1, 0x250

    #@c7d
    const/16 v2, -0x1d

    #@c7f
    aput-byte v2, v0, v1

    #@c81
    const/16 v1, 0x251

    #@c83
    const/16 v2, -0x1c

    #@c85
    aput-byte v2, v0, v1

    #@c87
    const/16 v1, 0x252

    #@c89
    const/16 v2, -0x1b

    #@c8b
    aput-byte v2, v0, v1

    #@c8d
    const/16 v1, 0x253

    #@c8f
    const/16 v2, -0x1a

    #@c91
    aput-byte v2, v0, v1

    #@c93
    const/16 v1, 0x254

    #@c95
    const/16 v2, -0x19

    #@c97
    aput-byte v2, v0, v1

    #@c99
    const/16 v1, 0x255

    #@c9b
    const/16 v2, -0x18

    #@c9d
    aput-byte v2, v0, v1

    #@c9f
    const/16 v1, 0x256

    #@ca1
    const/16 v2, -0x17

    #@ca3
    aput-byte v2, v0, v1

    #@ca5
    const/16 v1, 0x257

    #@ca7
    const/16 v2, -0x16

    #@ca9
    aput-byte v2, v0, v1

    #@cab
    const/16 v1, 0x258

    #@cad
    const/16 v2, -0xe

    #@caf
    aput-byte v2, v0, v1

    #@cb1
    const/16 v1, 0x259

    #@cb3
    const/16 v2, -0xd

    #@cb5
    aput-byte v2, v0, v1

    #@cb7
    const/16 v1, 0x25a

    #@cb9
    const/16 v2, -0xc

    #@cbb
    aput-byte v2, v0, v1

    #@cbd
    const/16 v1, 0x25b

    #@cbf
    const/16 v2, -0xb

    #@cc1
    aput-byte v2, v0, v1

    #@cc3
    const/16 v1, 0x25c

    #@cc5
    const/16 v2, -0xa

    #@cc7
    aput-byte v2, v0, v1

    #@cc9
    const/16 v1, 0x25d

    #@ccb
    const/16 v2, -0x9

    #@ccd
    aput-byte v2, v0, v1

    #@ccf
    const/16 v1, 0x25e

    #@cd1
    const/4 v2, -0x8

    #@cd2
    aput-byte v2, v0, v1

    #@cd4
    const/16 v1, 0x25f

    #@cd6
    const/4 v2, -0x7

    #@cd7
    aput-byte v2, v0, v1

    #@cd9
    const/16 v1, 0x260

    #@cdb
    const/4 v2, -0x6

    #@cdc
    aput-byte v2, v0, v1

    #@cde
    const/16 v1, 0x261

    #@ce0
    const/4 v2, -0x1

    #@ce1
    aput-byte v2, v0, v1

    #@ce3
    const/16 v1, 0x262

    #@ce5
    const/16 v2, -0x26

    #@ce7
    aput-byte v2, v0, v1

    #@ce9
    const/16 v1, 0x263

    #@ceb
    aput-byte v4, v0, v1

    #@ced
    const/16 v1, 0x264

    #@cef
    const/16 v2, 0xc

    #@cf1
    aput-byte v2, v0, v1

    #@cf3
    const/16 v1, 0x265

    #@cf5
    aput-byte v6, v0, v1

    #@cf7
    const/16 v1, 0x266

    #@cf9
    aput-byte v5, v0, v1

    #@cfb
    const/16 v1, 0x267

    #@cfd
    aput-byte v4, v0, v1

    #@cff
    const/16 v1, 0x268

    #@d01
    const/4 v2, 0x2

    #@d02
    aput-byte v2, v0, v1

    #@d04
    const/16 v1, 0x269

    #@d06
    const/16 v2, 0x11

    #@d08
    aput-byte v2, v0, v1

    #@d0a
    const/16 v1, 0x26a

    #@d0c
    aput-byte v6, v0, v1

    #@d0e
    const/16 v1, 0x26b

    #@d10
    const/16 v2, 0x11

    #@d12
    aput-byte v2, v0, v1

    #@d14
    const/16 v1, 0x26c

    #@d16
    aput-byte v4, v0, v1

    #@d18
    const/16 v1, 0x26d

    #@d1a
    const/16 v2, 0x3f

    #@d1c
    aput-byte v2, v0, v1

    #@d1e
    const/16 v1, 0x26e

    #@d20
    aput-byte v4, v0, v1

    #@d22
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    #@d24
    const/16 v0, 0xa3

    #@d26
    .line 227
    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_Y_X_OFFSET:I

    #@d28
    const/16 v0, 0x19

    #@d2a
    .line 232
    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

    #@d2c
    const/16 v0, 0x5e

    #@d2e
    .line 237
    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

    #@d30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static copyQuantTable([BIIII)V
    .locals 3
    .param p0, "dest"    # [B
    .param p1, "off"    # I
    .param p2, "quantType"    # I
    .param p3, "quality"    # I
    .param p4, "qualityAlgorithm"    # I

    #@0
    .prologue
    .line 269
    invoke-static {p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->getQuantTable(III)[B

    #@3
    move-result-object v0

    #@4
    .local v0, "qtable":[B
    const/4 v1, 0x0

    #@5
    .line 271
    array-length v2, v0

    #@6
    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9
    .line 272
    return-void
.end method

.method public static generate([BIIIIII)I
    .locals 8
    .param p0, "dest"    # [B
    .param p1, "off"    # I
    .param p2, "variant"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "quality"    # I
    .param p6, "qualityAlgorithm"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 302
    if-nez p2, :cond_1

    #@4
    const/16 v4, 0x18

    #@6
    .line 305
    if-ge p5, v4, :cond_2

    #@8
    .line 306
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "quality"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 303
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "variant"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    :cond_2
    const/16 v4, 0x64

    #@1c
    .line 305
    if-gt p5, v4, :cond_0

    #@1e
    .line 308
    if-nez p6, :cond_4

    #@20
    .line 313
    :cond_3
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    #@22
    array-length v2, v4

    #@23
    .line 314
    .local v2, "len":I
    add-int v4, p1, v2

    #@25
    array-length v5, p0

    #@26
    if-gt v4, v5, :cond_5

    #@28
    .line 317
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    #@2a
    invoke-static {v4, v6, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 320
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_Y_X_OFFSET:I

    #@2f
    add-int v3, p1, v4

    #@31
    .line 321
    .local v3, "yxOffset":I
    shr-int/lit8 v4, p3, 0x8

    #@33
    int-to-byte v4, v4

    #@34
    int-to-byte v4, v4

    #@35
    aput-byte v4, p0, v3

    #@37
    .line 322
    add-int/lit8 v4, v3, 0x1

    #@39
    and-int/lit16 v5, p3, 0xff

    #@3b
    int-to-byte v5, v5

    #@3c
    int-to-byte v5, v5

    #@3d
    aput-byte v5, p0, v4

    #@3f
    .line 323
    add-int/lit8 v4, v3, 0x2

    #@41
    shr-int/lit8 v5, p4, 0x8

    #@43
    int-to-byte v5, v5

    #@44
    int-to-byte v5, v5

    #@45
    aput-byte v5, p0, v4

    #@47
    .line 324
    add-int/lit8 v4, v3, 0x3

    #@49
    and-int/lit16 v5, p4, 0xff

    #@4b
    int-to-byte v5, v5

    #@4c
    int-to-byte v5, v5

    #@4d
    aput-byte v5, p0, v4

    #@4f
    const/16 v4, 0x4b

    #@51
    .line 329
    if-ne p5, v4, :cond_6

    #@53
    .line 341
    :goto_0
    return v2

    #@54
    .line 308
    .end local v2    # "len":I
    .end local v3    # "yxOffset":I
    :cond_4
    if-eq p6, v7, :cond_3

    #@56
    .line 310
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@58
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v6, "qualityAlgorithm: "

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v4

    #@70
    .line 315
    .restart local v2    # "len":I
    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@72
    const-string/jumbo v5, "dest"

    #@75
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@78
    throw v4

    #@79
    .line 331
    .restart local v3    # "yxOffset":I
    :cond_6
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

    #@7b
    add-int v1, p1, v4

    #@7d
    .line 333
    .local v1, "lOff":I
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

    #@7f
    add-int v0, p1, v4

    #@81
    .line 335
    .local v0, "cOff":I
    invoke-static {p0, v1, v6, p5, p6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->copyQuantTable([BIIII)V

    #@84
    .line 337
    invoke-static {p0, v0, v7, p5, p6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->copyQuantTable([BIIII)V

    #@87
    goto :goto_0
.end method

.method public static getHeaderLength(I)I
    .locals 3
    .param p0, "variant"    # I

    #@0
    .prologue
    .line 250
    if-nez p0, :cond_0

    #@2
    .line 253
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    #@4
    array-length v0, v0

    #@5
    return v0

    #@6
    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown variant "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method
