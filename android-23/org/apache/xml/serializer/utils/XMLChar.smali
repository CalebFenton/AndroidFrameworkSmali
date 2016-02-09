.class public Lorg/apache/xml/serializer/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final CHARS:[B

.field public static final MASK_CONTENT:I = 0x20

.field public static final MASK_NAME:I = 0x8

.field public static final MASK_NAME_START:I = 0x4

.field public static final MASK_NCNAME:I = 0x80

.field public static final MASK_NCNAME_START:I = 0x40

.field public static final MASK_PUBID:I = 0x10

.field public static final MASK_SPACE:I = 0x2

.field public static final MASK_VALID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x3

    #@1
    const/16 v7, 0x31

    #@3
    const/16 v6, -0x57

    #@5
    const/16 v5, -0x13

    #@7
    const/16 v4, 0x21

    #@9
    .line 56
    const/high16 v0, 0x10000

    #@b
    new-array v0, v0, [B

    #@d
    sput-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f
    .line 98
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11
    const/16 v1, 0x23

    #@13
    const/16 v2, 0x9

    #@15
    aput-byte v1, v0, v2

    #@17
    .line 99
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@19
    const/16 v1, 0x13

    #@1b
    const/16 v2, 0xa

    #@1d
    aput-byte v1, v0, v2

    #@1f
    .line 100
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@21
    const/16 v1, 0x13

    #@23
    const/16 v2, 0xd

    #@25
    aput-byte v1, v0, v2

    #@27
    .line 101
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@29
    const/16 v1, 0x33

    #@2b
    const/16 v2, 0x20

    #@2d
    aput-byte v1, v0, v2

    #@2f
    .line 102
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@31
    aput-byte v7, v0, v4

    #@33
    .line 103
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@35
    const/16 v1, 0x22

    #@37
    aput-byte v4, v0, v1

    #@39
    .line 104
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3b
    const/16 v1, 0x23

    #@3d
    const/16 v2, 0x26

    #@3f
    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    #@42
    .line 105
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@44
    const/4 v1, 0x1

    #@45
    const/16 v2, 0x26

    #@47
    aput-byte v1, v0, v2

    #@49
    .line 106
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4b
    const/16 v1, 0x27

    #@4d
    const/16 v2, 0x2d

    #@4f
    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    #@52
    .line 107
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@54
    const/16 v1, 0x2d

    #@56
    const/16 v2, 0x2f

    #@58
    const/16 v3, -0x47

    #@5a
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@5d
    .line 108
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5f
    const/16 v1, 0x2f

    #@61
    aput-byte v7, v0, v1

    #@63
    .line 109
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@65
    const/16 v1, 0x30

    #@67
    const/16 v2, 0x3a

    #@69
    const/16 v3, -0x47

    #@6b
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@6e
    .line 110
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@70
    const/16 v1, 0x3d

    #@72
    const/16 v2, 0x3a

    #@74
    aput-byte v1, v0, v2

    #@76
    .line 111
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@78
    const/16 v1, 0x3b

    #@7a
    aput-byte v7, v0, v1

    #@7c
    .line 112
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7e
    const/4 v1, 0x1

    #@7f
    const/16 v2, 0x3c

    #@81
    aput-byte v1, v0, v2

    #@83
    .line 113
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@85
    const/16 v1, 0x3d

    #@87
    aput-byte v7, v0, v1

    #@89
    .line 114
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8b
    const/16 v1, 0x3e

    #@8d
    aput-byte v4, v0, v1

    #@8f
    .line 115
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@91
    const/16 v1, 0x3f

    #@93
    const/16 v2, 0x41

    #@95
    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    #@98
    .line 116
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9a
    const/16 v1, 0x41

    #@9c
    const/16 v2, 0x5b

    #@9e
    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    #@a1
    .line 117
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a3
    const/16 v1, 0x5b

    #@a5
    const/16 v2, 0x5d

    #@a7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@aa
    .line 118
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ac
    const/4 v1, 0x1

    #@ad
    const/16 v2, 0x5d

    #@af
    aput-byte v1, v0, v2

    #@b1
    .line 119
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b3
    const/16 v1, 0x5e

    #@b5
    aput-byte v4, v0, v1

    #@b7
    .line 120
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b9
    const/16 v1, 0x5f

    #@bb
    aput-byte v8, v0, v1

    #@bd
    .line 121
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bf
    const/16 v1, 0x60

    #@c1
    aput-byte v4, v0, v1

    #@c3
    .line 122
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c5
    const/16 v1, 0x61

    #@c7
    const/16 v2, 0x7b

    #@c9
    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    #@cc
    .line 123
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ce
    const/16 v1, 0x7b

    #@d0
    const/16 v2, 0xb7

    #@d2
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@d5
    .line 124
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d7
    const/16 v1, 0xb7

    #@d9
    aput-byte v6, v0, v1

    #@db
    .line 125
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dd
    const/16 v1, 0xb8

    #@df
    const/16 v2, 0xc0

    #@e1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e4
    .line 126
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e6
    const/16 v1, 0xc0

    #@e8
    const/16 v2, 0xd7

    #@ea
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@ed
    .line 127
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ef
    const/16 v1, 0xd7

    #@f1
    aput-byte v4, v0, v1

    #@f3
    .line 128
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f5
    const/16 v1, 0xd8

    #@f7
    const/16 v2, 0xf7

    #@f9
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@fc
    .line 129
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fe
    const/16 v1, 0xf7

    #@100
    aput-byte v4, v0, v1

    #@102
    .line 130
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@104
    const/16 v1, 0xf8

    #@106
    const/16 v2, 0x132

    #@108
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@10b
    .line 131
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10d
    const/16 v1, 0x132

    #@10f
    const/16 v2, 0x134

    #@111
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@114
    .line 132
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@116
    const/16 v1, 0x134

    #@118
    const/16 v2, 0x13f

    #@11a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11d
    .line 133
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11f
    const/16 v1, 0x13f

    #@121
    const/16 v2, 0x141

    #@123
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@126
    .line 134
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@128
    const/16 v1, 0x141

    #@12a
    const/16 v2, 0x149

    #@12c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@12f
    .line 135
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@131
    const/16 v1, 0x149

    #@133
    aput-byte v4, v0, v1

    #@135
    .line 136
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@137
    const/16 v1, 0x14a

    #@139
    const/16 v2, 0x17f

    #@13b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@13e
    .line 137
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@140
    const/16 v1, 0x17f

    #@142
    aput-byte v4, v0, v1

    #@144
    .line 138
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@146
    const/16 v1, 0x180

    #@148
    const/16 v2, 0x1c4

    #@14a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@14d
    .line 139
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@14f
    const/16 v1, 0x1c4

    #@151
    const/16 v2, 0x1cd

    #@153
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@156
    .line 140
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@158
    const/16 v1, 0x1cd

    #@15a
    const/16 v2, 0x1f1

    #@15c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@15f
    .line 141
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@161
    const/16 v1, 0x1f1

    #@163
    const/16 v2, 0x1f4

    #@165
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@168
    .line 142
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@16a
    const/16 v1, 0x1f4

    #@16c
    const/16 v2, 0x1f6

    #@16e
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@171
    .line 143
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@173
    const/16 v1, 0x1f6

    #@175
    const/16 v2, 0x1fa

    #@177
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@17a
    .line 144
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@17c
    const/16 v1, 0x1fa

    #@17e
    const/16 v2, 0x218

    #@180
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@183
    .line 145
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@185
    const/16 v1, 0x218

    #@187
    const/16 v2, 0x250

    #@189
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@18c
    .line 146
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@18e
    const/16 v1, 0x250

    #@190
    const/16 v2, 0x2a9

    #@192
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@195
    .line 147
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@197
    const/16 v1, 0x2a9

    #@199
    const/16 v2, 0x2bb

    #@19b
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@19e
    .line 148
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1a0
    const/16 v1, 0x2bb

    #@1a2
    const/16 v2, 0x2c2

    #@1a4
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1a7
    .line 149
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1a9
    const/16 v1, 0x2c2

    #@1ab
    const/16 v2, 0x2d0

    #@1ad
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1b0
    .line 150
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1b2
    const/16 v1, 0x2d0

    #@1b4
    const/16 v2, 0x2d2

    #@1b6
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@1b9
    .line 151
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1bb
    const/16 v1, 0x2d2

    #@1bd
    const/16 v2, 0x300

    #@1bf
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1c2
    .line 152
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1c4
    const/16 v1, 0x300

    #@1c6
    const/16 v2, 0x346

    #@1c8
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@1cb
    .line 153
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1cd
    const/16 v1, 0x346

    #@1cf
    const/16 v2, 0x360

    #@1d1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1d4
    .line 154
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1d6
    const/16 v1, 0x360

    #@1d8
    const/16 v2, 0x362

    #@1da
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@1dd
    .line 155
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1df
    const/16 v1, 0x362

    #@1e1
    const/16 v2, 0x386

    #@1e3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1e6
    .line 156
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1e8
    const/16 v1, 0x386

    #@1ea
    aput-byte v5, v0, v1

    #@1ec
    .line 157
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1ee
    const/16 v1, 0x387

    #@1f0
    aput-byte v6, v0, v1

    #@1f2
    .line 158
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1f4
    const/16 v1, 0x388

    #@1f6
    const/16 v2, 0x38b

    #@1f8
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1fb
    .line 159
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1fd
    const/16 v1, 0x38b

    #@1ff
    aput-byte v4, v0, v1

    #@201
    .line 160
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@203
    const/16 v1, 0x38c

    #@205
    aput-byte v5, v0, v1

    #@207
    .line 161
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@209
    const/16 v1, 0x38d

    #@20b
    aput-byte v4, v0, v1

    #@20d
    .line 162
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@20f
    const/16 v1, 0x38e

    #@211
    const/16 v2, 0x3a2

    #@213
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@216
    .line 163
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@218
    const/16 v1, 0x3a2

    #@21a
    aput-byte v4, v0, v1

    #@21c
    .line 164
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@21e
    const/16 v1, 0x3a3

    #@220
    const/16 v2, 0x3cf

    #@222
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@225
    .line 165
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@227
    const/16 v1, 0x3cf

    #@229
    aput-byte v4, v0, v1

    #@22b
    .line 166
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@22d
    const/16 v1, 0x3d0

    #@22f
    const/16 v2, 0x3d7

    #@231
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@234
    .line 167
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@236
    const/16 v1, 0x3d7

    #@238
    const/16 v2, 0x3da

    #@23a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@23d
    .line 168
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@23f
    const/16 v1, 0x3da

    #@241
    aput-byte v5, v0, v1

    #@243
    .line 169
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@245
    const/16 v1, 0x3db

    #@247
    aput-byte v4, v0, v1

    #@249
    .line 170
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@24b
    const/16 v1, 0x3dc

    #@24d
    aput-byte v5, v0, v1

    #@24f
    .line 171
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@251
    const/16 v1, 0x3dd

    #@253
    aput-byte v4, v0, v1

    #@255
    .line 172
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@257
    const/16 v1, 0x3de

    #@259
    aput-byte v5, v0, v1

    #@25b
    .line 173
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@25d
    const/16 v1, 0x3df

    #@25f
    aput-byte v4, v0, v1

    #@261
    .line 174
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@263
    const/16 v1, 0x3e0

    #@265
    aput-byte v5, v0, v1

    #@267
    .line 175
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@269
    const/16 v1, 0x3e1

    #@26b
    aput-byte v4, v0, v1

    #@26d
    .line 176
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@26f
    const/16 v1, 0x3e2

    #@271
    const/16 v2, 0x3f4

    #@273
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@276
    .line 177
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@278
    const/16 v1, 0x3f4

    #@27a
    const/16 v2, 0x401

    #@27c
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@27f
    .line 178
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@281
    const/16 v1, 0x401

    #@283
    const/16 v2, 0x40d

    #@285
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@288
    .line 179
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@28a
    const/16 v1, 0x40d

    #@28c
    aput-byte v4, v0, v1

    #@28e
    .line 180
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@290
    const/16 v1, 0x40e

    #@292
    const/16 v2, 0x450

    #@294
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@297
    .line 181
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@299
    const/16 v1, 0x450

    #@29b
    aput-byte v4, v0, v1

    #@29d
    .line 182
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@29f
    const/16 v1, 0x451

    #@2a1
    const/16 v2, 0x45d

    #@2a3
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@2a6
    .line 183
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2a8
    const/16 v1, 0x45d

    #@2aa
    aput-byte v4, v0, v1

    #@2ac
    .line 184
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2ae
    const/16 v1, 0x45e

    #@2b0
    const/16 v2, 0x482

    #@2b2
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@2b5
    .line 185
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2b7
    const/16 v1, 0x482

    #@2b9
    aput-byte v4, v0, v1

    #@2bb
    .line 186
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2bd
    const/16 v1, 0x483

    #@2bf
    const/16 v2, 0x487

    #@2c1
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@2c4
    .line 187
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2c6
    const/16 v1, 0x487

    #@2c8
    const/16 v2, 0x490

    #@2ca
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@2cd
    .line 188
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2cf
    const/16 v1, 0x490

    #@2d1
    const/16 v2, 0x4c5

    #@2d3
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@2d6
    .line 189
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2d8
    const/16 v1, 0x4c5

    #@2da
    const/16 v2, 0x4c7

    #@2dc
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@2df
    .line 190
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2e1
    const/16 v1, 0x4c7

    #@2e3
    const/16 v2, 0x4c9

    #@2e5
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@2e8
    .line 191
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2ea
    const/16 v1, 0x4c9

    #@2ec
    const/16 v2, 0x4cb

    #@2ee
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@2f1
    .line 192
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2f3
    const/16 v1, 0x4cb

    #@2f5
    const/16 v2, 0x4cd

    #@2f7
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@2fa
    .line 193
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@2fc
    const/16 v1, 0x4cd

    #@2fe
    const/16 v2, 0x4d0

    #@300
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@303
    .line 194
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@305
    const/16 v1, 0x4d0

    #@307
    const/16 v2, 0x4ec

    #@309
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@30c
    .line 195
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@30e
    const/16 v1, 0x4ec

    #@310
    const/16 v2, 0x4ee

    #@312
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@315
    .line 196
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@317
    const/16 v1, 0x4ee

    #@319
    const/16 v2, 0x4f6

    #@31b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@31e
    .line 197
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@320
    const/16 v1, 0x4f6

    #@322
    const/16 v2, 0x4f8

    #@324
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@327
    .line 198
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@329
    const/16 v1, 0x4f8

    #@32b
    const/16 v2, 0x4fa

    #@32d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@330
    .line 199
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@332
    const/16 v1, 0x4fa

    #@334
    const/16 v2, 0x531

    #@336
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@339
    .line 200
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@33b
    const/16 v1, 0x531

    #@33d
    const/16 v2, 0x557

    #@33f
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@342
    .line 201
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@344
    const/16 v1, 0x557

    #@346
    const/16 v2, 0x559

    #@348
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@34b
    .line 202
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@34d
    const/16 v1, 0x559

    #@34f
    aput-byte v5, v0, v1

    #@351
    .line 203
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@353
    const/16 v1, 0x55a

    #@355
    const/16 v2, 0x561

    #@357
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@35a
    .line 204
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@35c
    const/16 v1, 0x561

    #@35e
    const/16 v2, 0x587

    #@360
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@363
    .line 205
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@365
    const/16 v1, 0x587

    #@367
    const/16 v2, 0x591

    #@369
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@36c
    .line 206
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@36e
    const/16 v1, 0x591

    #@370
    const/16 v2, 0x5a2

    #@372
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@375
    .line 207
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@377
    const/16 v1, 0x5a2

    #@379
    aput-byte v4, v0, v1

    #@37b
    .line 208
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@37d
    const/16 v1, 0x5a3

    #@37f
    const/16 v2, 0x5ba

    #@381
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@384
    .line 209
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@386
    const/16 v1, 0x5ba

    #@388
    aput-byte v4, v0, v1

    #@38a
    .line 210
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@38c
    const/16 v1, 0x5bb

    #@38e
    const/16 v2, 0x5be

    #@390
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@393
    .line 211
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@395
    const/16 v1, 0x5be

    #@397
    aput-byte v4, v0, v1

    #@399
    .line 212
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@39b
    const/16 v1, 0x5bf

    #@39d
    aput-byte v6, v0, v1

    #@39f
    .line 213
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3a1
    const/16 v1, 0x5c0

    #@3a3
    aput-byte v4, v0, v1

    #@3a5
    .line 214
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3a7
    const/16 v1, 0x5c1

    #@3a9
    const/16 v2, 0x5c3

    #@3ab
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@3ae
    .line 215
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3b0
    const/16 v1, 0x5c3

    #@3b2
    aput-byte v4, v0, v1

    #@3b4
    .line 216
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3b6
    const/16 v1, 0x5c4

    #@3b8
    aput-byte v6, v0, v1

    #@3ba
    .line 217
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3bc
    const/16 v1, 0x5c5

    #@3be
    const/16 v2, 0x5d0

    #@3c0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@3c3
    .line 218
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3c5
    const/16 v1, 0x5d0

    #@3c7
    const/16 v2, 0x5eb

    #@3c9
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@3cc
    .line 219
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3ce
    const/16 v1, 0x5eb

    #@3d0
    const/16 v2, 0x5f0

    #@3d2
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@3d5
    .line 220
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3d7
    const/16 v1, 0x5f0

    #@3d9
    const/16 v2, 0x5f3

    #@3db
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@3de
    .line 221
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3e0
    const/16 v1, 0x5f3

    #@3e2
    const/16 v2, 0x621

    #@3e4
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@3e7
    .line 222
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3e9
    const/16 v1, 0x621

    #@3eb
    const/16 v2, 0x63b

    #@3ed
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@3f0
    .line 223
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3f2
    const/16 v1, 0x63b

    #@3f4
    const/16 v2, 0x640

    #@3f6
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@3f9
    .line 224
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@3fb
    const/16 v1, 0x640

    #@3fd
    aput-byte v6, v0, v1

    #@3ff
    .line 225
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@401
    const/16 v1, 0x641

    #@403
    const/16 v2, 0x64b

    #@405
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@408
    .line 226
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@40a
    const/16 v1, 0x64b

    #@40c
    const/16 v2, 0x653

    #@40e
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@411
    .line 227
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@413
    const/16 v1, 0x653

    #@415
    const/16 v2, 0x660

    #@417
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@41a
    .line 228
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@41c
    const/16 v1, 0x660

    #@41e
    const/16 v2, 0x66a

    #@420
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@423
    .line 229
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@425
    const/16 v1, 0x66a

    #@427
    const/16 v2, 0x670

    #@429
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@42c
    .line 230
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@42e
    const/16 v1, 0x670

    #@430
    aput-byte v6, v0, v1

    #@432
    .line 231
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@434
    const/16 v1, 0x671

    #@436
    const/16 v2, 0x6b8

    #@438
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@43b
    .line 232
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@43d
    const/16 v1, 0x6b8

    #@43f
    const/16 v2, 0x6ba

    #@441
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@444
    .line 233
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@446
    const/16 v1, 0x6ba

    #@448
    const/16 v2, 0x6bf

    #@44a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@44d
    .line 234
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@44f
    const/16 v1, 0x6bf

    #@451
    aput-byte v4, v0, v1

    #@453
    .line 235
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@455
    const/16 v1, 0x6c0

    #@457
    const/16 v2, 0x6cf

    #@459
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@45c
    .line 236
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@45e
    const/16 v1, 0x6cf

    #@460
    aput-byte v4, v0, v1

    #@462
    .line 237
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@464
    const/16 v1, 0x6d0

    #@466
    const/16 v2, 0x6d4

    #@468
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@46b
    .line 238
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@46d
    const/16 v1, 0x6d4

    #@46f
    aput-byte v4, v0, v1

    #@471
    .line 239
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@473
    const/16 v1, 0x6d5

    #@475
    aput-byte v5, v0, v1

    #@477
    .line 240
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@479
    const/16 v1, 0x6d6

    #@47b
    const/16 v2, 0x6e5

    #@47d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@480
    .line 241
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@482
    const/16 v1, 0x6e5

    #@484
    const/16 v2, 0x6e7

    #@486
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@489
    .line 242
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@48b
    const/16 v1, 0x6e7

    #@48d
    const/16 v2, 0x6e9

    #@48f
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@492
    .line 243
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@494
    const/16 v1, 0x6e9

    #@496
    aput-byte v4, v0, v1

    #@498
    .line 244
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@49a
    const/16 v1, 0x6ea

    #@49c
    const/16 v2, 0x6ee

    #@49e
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@4a1
    .line 245
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4a3
    const/16 v1, 0x6ee

    #@4a5
    const/16 v2, 0x6f0

    #@4a7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@4aa
    .line 246
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4ac
    const/16 v1, 0x6f0

    #@4ae
    const/16 v2, 0x6fa

    #@4b0
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@4b3
    .line 247
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4b5
    const/16 v1, 0x6fa

    #@4b7
    const/16 v2, 0x901

    #@4b9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@4bc
    .line 248
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4be
    const/16 v1, 0x901

    #@4c0
    const/16 v2, 0x904

    #@4c2
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@4c5
    .line 249
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4c7
    const/16 v1, 0x904

    #@4c9
    aput-byte v4, v0, v1

    #@4cb
    .line 250
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4cd
    const/16 v1, 0x905

    #@4cf
    const/16 v2, 0x93a

    #@4d1
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@4d4
    .line 251
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4d6
    const/16 v1, 0x93a

    #@4d8
    const/16 v2, 0x93c

    #@4da
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@4dd
    .line 252
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4df
    const/16 v1, 0x93c

    #@4e1
    aput-byte v6, v0, v1

    #@4e3
    .line 253
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4e5
    const/16 v1, 0x93d

    #@4e7
    aput-byte v5, v0, v1

    #@4e9
    .line 254
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4eb
    const/16 v1, 0x93e

    #@4ed
    const/16 v2, 0x94e

    #@4ef
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@4f2
    .line 255
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4f4
    const/16 v1, 0x94e

    #@4f6
    const/16 v2, 0x951

    #@4f8
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@4fb
    .line 256
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@4fd
    const/16 v1, 0x951

    #@4ff
    const/16 v2, 0x955

    #@501
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@504
    .line 257
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@506
    const/16 v1, 0x955

    #@508
    const/16 v2, 0x958

    #@50a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@50d
    .line 258
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@50f
    const/16 v1, 0x958

    #@511
    const/16 v2, 0x962

    #@513
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@516
    .line 259
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@518
    const/16 v1, 0x962

    #@51a
    const/16 v2, 0x964

    #@51c
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@51f
    .line 260
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@521
    const/16 v1, 0x964

    #@523
    const/16 v2, 0x966

    #@525
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@528
    .line 261
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@52a
    const/16 v1, 0x966

    #@52c
    const/16 v2, 0x970

    #@52e
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@531
    .line 262
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@533
    const/16 v1, 0x970

    #@535
    const/16 v2, 0x981

    #@537
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@53a
    .line 263
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@53c
    const/16 v1, 0x981

    #@53e
    const/16 v2, 0x984

    #@540
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@543
    .line 264
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@545
    const/16 v1, 0x984

    #@547
    aput-byte v4, v0, v1

    #@549
    .line 265
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@54b
    const/16 v1, 0x985

    #@54d
    const/16 v2, 0x98d

    #@54f
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@552
    .line 266
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@554
    const/16 v1, 0x98d

    #@556
    const/16 v2, 0x98f

    #@558
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@55b
    .line 267
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@55d
    const/16 v1, 0x98f

    #@55f
    const/16 v2, 0x991

    #@561
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@564
    .line 268
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@566
    const/16 v1, 0x991

    #@568
    const/16 v2, 0x993

    #@56a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@56d
    .line 269
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@56f
    const/16 v1, 0x993

    #@571
    const/16 v2, 0x9a9

    #@573
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@576
    .line 270
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@578
    const/16 v1, 0x9a9

    #@57a
    aput-byte v4, v0, v1

    #@57c
    .line 271
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@57e
    const/16 v1, 0x9aa

    #@580
    const/16 v2, 0x9b1

    #@582
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@585
    .line 272
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@587
    const/16 v1, 0x9b1

    #@589
    aput-byte v4, v0, v1

    #@58b
    .line 273
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@58d
    const/16 v1, 0x9b2

    #@58f
    aput-byte v5, v0, v1

    #@591
    .line 274
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@593
    const/16 v1, 0x9b3

    #@595
    const/16 v2, 0x9b6

    #@597
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@59a
    .line 275
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@59c
    const/16 v1, 0x9b6

    #@59e
    const/16 v2, 0x9ba

    #@5a0
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@5a3
    .line 276
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5a5
    const/16 v1, 0x9ba

    #@5a7
    const/16 v2, 0x9bc

    #@5a9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@5ac
    .line 277
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5ae
    const/16 v1, 0x9bc

    #@5b0
    aput-byte v6, v0, v1

    #@5b2
    .line 278
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5b4
    const/16 v1, 0x9bd

    #@5b6
    aput-byte v4, v0, v1

    #@5b8
    .line 279
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5ba
    const/16 v1, 0x9be

    #@5bc
    const/16 v2, 0x9c5

    #@5be
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@5c1
    .line 280
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5c3
    const/16 v1, 0x9c5

    #@5c5
    const/16 v2, 0x9c7

    #@5c7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@5ca
    .line 281
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5cc
    const/16 v1, 0x9c7

    #@5ce
    const/16 v2, 0x9c9

    #@5d0
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@5d3
    .line 282
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5d5
    const/16 v1, 0x9c9

    #@5d7
    const/16 v2, 0x9cb

    #@5d9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@5dc
    .line 283
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5de
    const/16 v1, 0x9cb

    #@5e0
    const/16 v2, 0x9ce

    #@5e2
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@5e5
    .line 284
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5e7
    const/16 v1, 0x9ce

    #@5e9
    const/16 v2, 0x9d7

    #@5eb
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@5ee
    .line 285
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5f0
    const/16 v1, 0x9d7

    #@5f2
    aput-byte v6, v0, v1

    #@5f4
    .line 286
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5f6
    const/16 v1, 0x9d8

    #@5f8
    const/16 v2, 0x9dc

    #@5fa
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@5fd
    .line 287
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@5ff
    const/16 v1, 0x9dc

    #@601
    const/16 v2, 0x9de

    #@603
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@606
    .line 288
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@608
    const/16 v1, 0x9de

    #@60a
    aput-byte v4, v0, v1

    #@60c
    .line 289
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@60e
    const/16 v1, 0x9df

    #@610
    const/16 v2, 0x9e2

    #@612
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@615
    .line 290
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@617
    const/16 v1, 0x9e2

    #@619
    const/16 v2, 0x9e4

    #@61b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@61e
    .line 291
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@620
    const/16 v1, 0x9e4

    #@622
    const/16 v2, 0x9e6

    #@624
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@627
    .line 292
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@629
    const/16 v1, 0x9e6

    #@62b
    const/16 v2, 0x9f0

    #@62d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@630
    .line 293
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@632
    const/16 v1, 0x9f0

    #@634
    const/16 v2, 0x9f2

    #@636
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@639
    .line 294
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@63b
    const/16 v1, 0x9f2

    #@63d
    const/16 v2, 0xa02

    #@63f
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@642
    .line 295
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@644
    const/16 v1, 0xa02

    #@646
    aput-byte v6, v0, v1

    #@648
    .line 296
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@64a
    const/16 v1, 0xa03

    #@64c
    const/16 v2, 0xa05

    #@64e
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@651
    .line 297
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@653
    const/16 v1, 0xa05

    #@655
    const/16 v2, 0xa0b

    #@657
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@65a
    .line 298
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@65c
    const/16 v1, 0xa0b

    #@65e
    const/16 v2, 0xa0f

    #@660
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@663
    .line 299
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@665
    const/16 v1, 0xa0f

    #@667
    const/16 v2, 0xa11

    #@669
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@66c
    .line 300
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@66e
    const/16 v1, 0xa11

    #@670
    const/16 v2, 0xa13

    #@672
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@675
    .line 301
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@677
    const/16 v1, 0xa13

    #@679
    const/16 v2, 0xa29

    #@67b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@67e
    .line 302
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@680
    const/16 v1, 0xa29

    #@682
    aput-byte v4, v0, v1

    #@684
    .line 303
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@686
    const/16 v1, 0xa2a

    #@688
    const/16 v2, 0xa31

    #@68a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@68d
    .line 304
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@68f
    const/16 v1, 0xa31

    #@691
    aput-byte v4, v0, v1

    #@693
    .line 305
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@695
    const/16 v1, 0xa32

    #@697
    const/16 v2, 0xa34

    #@699
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@69c
    .line 306
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@69e
    const/16 v1, 0xa34

    #@6a0
    aput-byte v4, v0, v1

    #@6a2
    .line 307
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6a4
    const/16 v1, 0xa35

    #@6a6
    const/16 v2, 0xa37

    #@6a8
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@6ab
    .line 308
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6ad
    const/16 v1, 0xa37

    #@6af
    aput-byte v4, v0, v1

    #@6b1
    .line 309
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6b3
    const/16 v1, 0xa38

    #@6b5
    const/16 v2, 0xa3a

    #@6b7
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@6ba
    .line 310
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6bc
    const/16 v1, 0xa3a

    #@6be
    const/16 v2, 0xa3c

    #@6c0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@6c3
    .line 311
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6c5
    const/16 v1, 0xa3c

    #@6c7
    aput-byte v6, v0, v1

    #@6c9
    .line 312
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6cb
    const/16 v1, 0xa3d

    #@6cd
    aput-byte v4, v0, v1

    #@6cf
    .line 313
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6d1
    const/16 v1, 0xa3e

    #@6d3
    const/16 v2, 0xa43

    #@6d5
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@6d8
    .line 314
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6da
    const/16 v1, 0xa43

    #@6dc
    const/16 v2, 0xa47

    #@6de
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@6e1
    .line 315
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6e3
    const/16 v1, 0xa47

    #@6e5
    const/16 v2, 0xa49

    #@6e7
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@6ea
    .line 316
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6ec
    const/16 v1, 0xa49

    #@6ee
    const/16 v2, 0xa4b

    #@6f0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@6f3
    .line 317
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6f5
    const/16 v1, 0xa4b

    #@6f7
    const/16 v2, 0xa4e

    #@6f9
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@6fc
    .line 318
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@6fe
    const/16 v1, 0xa4e

    #@700
    const/16 v2, 0xa59

    #@702
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@705
    .line 319
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@707
    const/16 v1, 0xa59

    #@709
    const/16 v2, 0xa5d

    #@70b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@70e
    .line 320
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@710
    const/16 v1, 0xa5d

    #@712
    aput-byte v4, v0, v1

    #@714
    .line 321
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@716
    const/16 v1, 0xa5e

    #@718
    aput-byte v5, v0, v1

    #@71a
    .line 322
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@71c
    const/16 v1, 0xa5f

    #@71e
    const/16 v2, 0xa66

    #@720
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@723
    .line 323
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@725
    const/16 v1, 0xa66

    #@727
    const/16 v2, 0xa72

    #@729
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@72c
    .line 324
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@72e
    const/16 v1, 0xa72

    #@730
    const/16 v2, 0xa75

    #@732
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@735
    .line 325
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@737
    const/16 v1, 0xa75

    #@739
    const/16 v2, 0xa81

    #@73b
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@73e
    .line 326
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@740
    const/16 v1, 0xa81

    #@742
    const/16 v2, 0xa84

    #@744
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@747
    .line 327
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@749
    const/16 v1, 0xa84

    #@74b
    aput-byte v4, v0, v1

    #@74d
    .line 328
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@74f
    const/16 v1, 0xa85

    #@751
    const/16 v2, 0xa8c

    #@753
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@756
    .line 329
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@758
    const/16 v1, 0xa8c

    #@75a
    aput-byte v4, v0, v1

    #@75c
    .line 330
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@75e
    const/16 v1, 0xa8d

    #@760
    aput-byte v5, v0, v1

    #@762
    .line 331
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@764
    const/16 v1, 0xa8e

    #@766
    aput-byte v4, v0, v1

    #@768
    .line 332
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@76a
    const/16 v1, 0xa8f

    #@76c
    const/16 v2, 0xa92

    #@76e
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@771
    .line 333
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@773
    const/16 v1, 0xa92

    #@775
    aput-byte v4, v0, v1

    #@777
    .line 334
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@779
    const/16 v1, 0xa93

    #@77b
    const/16 v2, 0xaa9

    #@77d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@780
    .line 335
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@782
    const/16 v1, 0xaa9

    #@784
    aput-byte v4, v0, v1

    #@786
    .line 336
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@788
    const/16 v1, 0xaaa

    #@78a
    const/16 v2, 0xab1

    #@78c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@78f
    .line 337
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@791
    const/16 v1, 0xab1

    #@793
    aput-byte v4, v0, v1

    #@795
    .line 338
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@797
    const/16 v1, 0xab2

    #@799
    const/16 v2, 0xab4

    #@79b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@79e
    .line 339
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7a0
    const/16 v1, 0xab4

    #@7a2
    aput-byte v4, v0, v1

    #@7a4
    .line 340
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7a6
    const/16 v1, 0xab5

    #@7a8
    const/16 v2, 0xaba

    #@7aa
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@7ad
    .line 341
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7af
    const/16 v1, 0xaba

    #@7b1
    const/16 v2, 0xabc

    #@7b3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@7b6
    .line 342
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7b8
    const/16 v1, 0xabc

    #@7ba
    aput-byte v6, v0, v1

    #@7bc
    .line 343
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7be
    const/16 v1, 0xabd

    #@7c0
    aput-byte v5, v0, v1

    #@7c2
    .line 344
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7c4
    const/16 v1, 0xabe

    #@7c6
    const/16 v2, 0xac6

    #@7c8
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@7cb
    .line 345
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7cd
    const/16 v1, 0xac6

    #@7cf
    aput-byte v4, v0, v1

    #@7d1
    .line 346
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7d3
    const/16 v1, 0xac7

    #@7d5
    const/16 v2, 0xaca

    #@7d7
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@7da
    .line 347
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7dc
    const/16 v1, 0xaca

    #@7de
    aput-byte v4, v0, v1

    #@7e0
    .line 348
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7e2
    const/16 v1, 0xacb

    #@7e4
    const/16 v2, 0xace

    #@7e6
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@7e9
    .line 349
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7eb
    const/16 v1, 0xace

    #@7ed
    const/16 v2, 0xae0

    #@7ef
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@7f2
    .line 350
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7f4
    const/16 v1, 0xae0

    #@7f6
    aput-byte v5, v0, v1

    #@7f8
    .line 351
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7fa
    const/16 v1, 0xae1

    #@7fc
    const/16 v2, 0xae6

    #@7fe
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@801
    .line 352
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@803
    const/16 v1, 0xae6

    #@805
    const/16 v2, 0xaf0

    #@807
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@80a
    .line 353
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@80c
    const/16 v1, 0xaf0

    #@80e
    const/16 v2, 0xb01

    #@810
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@813
    .line 354
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@815
    const/16 v1, 0xb01

    #@817
    const/16 v2, 0xb04

    #@819
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@81c
    .line 355
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@81e
    const/16 v1, 0xb04

    #@820
    aput-byte v4, v0, v1

    #@822
    .line 356
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@824
    const/16 v1, 0xb05

    #@826
    const/16 v2, 0xb0d

    #@828
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@82b
    .line 357
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@82d
    const/16 v1, 0xb0d

    #@82f
    const/16 v2, 0xb0f

    #@831
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@834
    .line 358
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@836
    const/16 v1, 0xb0f

    #@838
    const/16 v2, 0xb11

    #@83a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@83d
    .line 359
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@83f
    const/16 v1, 0xb11

    #@841
    const/16 v2, 0xb13

    #@843
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@846
    .line 360
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@848
    const/16 v1, 0xb13

    #@84a
    const/16 v2, 0xb29

    #@84c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@84f
    .line 361
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@851
    const/16 v1, 0xb29

    #@853
    aput-byte v4, v0, v1

    #@855
    .line 362
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@857
    const/16 v1, 0xb2a

    #@859
    const/16 v2, 0xb31

    #@85b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@85e
    .line 363
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@860
    const/16 v1, 0xb31

    #@862
    aput-byte v4, v0, v1

    #@864
    .line 364
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@866
    const/16 v1, 0xb32

    #@868
    const/16 v2, 0xb34

    #@86a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@86d
    .line 365
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@86f
    const/16 v1, 0xb34

    #@871
    const/16 v2, 0xb36

    #@873
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@876
    .line 366
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@878
    const/16 v1, 0xb36

    #@87a
    const/16 v2, 0xb3a

    #@87c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@87f
    .line 367
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@881
    const/16 v1, 0xb3a

    #@883
    const/16 v2, 0xb3c

    #@885
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@888
    .line 368
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@88a
    const/16 v1, 0xb3c

    #@88c
    aput-byte v6, v0, v1

    #@88e
    .line 369
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@890
    const/16 v1, 0xb3d

    #@892
    aput-byte v5, v0, v1

    #@894
    .line 370
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@896
    const/16 v1, 0xb3e

    #@898
    const/16 v2, 0xb44

    #@89a
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@89d
    .line 371
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@89f
    const/16 v1, 0xb44

    #@8a1
    const/16 v2, 0xb47

    #@8a3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@8a6
    .line 372
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8a8
    const/16 v1, 0xb47

    #@8aa
    const/16 v2, 0xb49

    #@8ac
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@8af
    .line 373
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8b1
    const/16 v1, 0xb49

    #@8b3
    const/16 v2, 0xb4b

    #@8b5
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@8b8
    .line 374
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8ba
    const/16 v1, 0xb4b

    #@8bc
    const/16 v2, 0xb4e

    #@8be
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@8c1
    .line 375
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8c3
    const/16 v1, 0xb4e

    #@8c5
    const/16 v2, 0xb56

    #@8c7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@8ca
    .line 376
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8cc
    const/16 v1, 0xb56

    #@8ce
    const/16 v2, 0xb58

    #@8d0
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@8d3
    .line 377
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8d5
    const/16 v1, 0xb58

    #@8d7
    const/16 v2, 0xb5c

    #@8d9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@8dc
    .line 378
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8de
    const/16 v1, 0xb5c

    #@8e0
    const/16 v2, 0xb5e

    #@8e2
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@8e5
    .line 379
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8e7
    const/16 v1, 0xb5e

    #@8e9
    aput-byte v4, v0, v1

    #@8eb
    .line 380
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8ed
    const/16 v1, 0xb5f

    #@8ef
    const/16 v2, 0xb62

    #@8f1
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@8f4
    .line 381
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8f6
    const/16 v1, 0xb62

    #@8f8
    const/16 v2, 0xb66

    #@8fa
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@8fd
    .line 382
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8ff
    const/16 v1, 0xb66

    #@901
    const/16 v2, 0xb70

    #@903
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@906
    .line 383
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@908
    const/16 v1, 0xb70

    #@90a
    const/16 v2, 0xb82

    #@90c
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@90f
    .line 384
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@911
    const/16 v1, 0xb82

    #@913
    const/16 v2, 0xb84

    #@915
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@918
    .line 385
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@91a
    const/16 v1, 0xb84

    #@91c
    aput-byte v4, v0, v1

    #@91e
    .line 386
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@920
    const/16 v1, 0xb85

    #@922
    const/16 v2, 0xb8b

    #@924
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@927
    .line 387
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@929
    const/16 v1, 0xb8b

    #@92b
    const/16 v2, 0xb8e

    #@92d
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@930
    .line 388
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@932
    const/16 v1, 0xb8e

    #@934
    const/16 v2, 0xb91

    #@936
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@939
    .line 389
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@93b
    const/16 v1, 0xb91

    #@93d
    aput-byte v4, v0, v1

    #@93f
    .line 390
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@941
    const/16 v1, 0xb92

    #@943
    const/16 v2, 0xb96

    #@945
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@948
    .line 391
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@94a
    const/16 v1, 0xb96

    #@94c
    const/16 v2, 0xb99

    #@94e
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@951
    .line 392
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@953
    const/16 v1, 0xb99

    #@955
    const/16 v2, 0xb9b

    #@957
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@95a
    .line 393
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@95c
    const/16 v1, 0xb9b

    #@95e
    aput-byte v4, v0, v1

    #@960
    .line 394
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@962
    const/16 v1, 0xb9c

    #@964
    aput-byte v5, v0, v1

    #@966
    .line 395
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@968
    const/16 v1, 0xb9d

    #@96a
    aput-byte v4, v0, v1

    #@96c
    .line 396
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@96e
    const/16 v1, 0xb9e

    #@970
    const/16 v2, 0xba0

    #@972
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@975
    .line 397
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@977
    const/16 v1, 0xba0

    #@979
    const/16 v2, 0xba3

    #@97b
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@97e
    .line 398
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@980
    const/16 v1, 0xba3

    #@982
    const/16 v2, 0xba5

    #@984
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@987
    .line 399
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@989
    const/16 v1, 0xba5

    #@98b
    const/16 v2, 0xba8

    #@98d
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@990
    .line 400
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@992
    const/16 v1, 0xba8

    #@994
    const/16 v2, 0xbab

    #@996
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@999
    .line 401
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@99b
    const/16 v1, 0xbab

    #@99d
    const/16 v2, 0xbae

    #@99f
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@9a2
    .line 402
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9a4
    const/16 v1, 0xbae

    #@9a6
    const/16 v2, 0xbb6

    #@9a8
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@9ab
    .line 403
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9ad
    const/16 v1, 0xbb6

    #@9af
    aput-byte v4, v0, v1

    #@9b1
    .line 404
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9b3
    const/16 v1, 0xbb7

    #@9b5
    const/16 v2, 0xbba

    #@9b7
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@9ba
    .line 405
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9bc
    const/16 v1, 0xbba

    #@9be
    const/16 v2, 0xbbe

    #@9c0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@9c3
    .line 406
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9c5
    const/16 v1, 0xbbe

    #@9c7
    const/16 v2, 0xbc3

    #@9c9
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@9cc
    .line 407
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9ce
    const/16 v1, 0xbc3

    #@9d0
    const/16 v2, 0xbc6

    #@9d2
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@9d5
    .line 408
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9d7
    const/16 v1, 0xbc6

    #@9d9
    const/16 v2, 0xbc9

    #@9db
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@9de
    .line 409
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9e0
    const/16 v1, 0xbc9

    #@9e2
    aput-byte v4, v0, v1

    #@9e4
    .line 410
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9e6
    const/16 v1, 0xbca

    #@9e8
    const/16 v2, 0xbce

    #@9ea
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@9ed
    .line 411
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9ef
    const/16 v1, 0xbce

    #@9f1
    const/16 v2, 0xbd7

    #@9f3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@9f6
    .line 412
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9f8
    const/16 v1, 0xbd7

    #@9fa
    aput-byte v6, v0, v1

    #@9fc
    .line 413
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@9fe
    const/16 v1, 0xbd8

    #@a00
    const/16 v2, 0xbe7

    #@a02
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@a05
    .line 414
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a07
    const/16 v1, 0xbe7

    #@a09
    const/16 v2, 0xbf0

    #@a0b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@a0e
    .line 415
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a10
    const/16 v1, 0xbf0

    #@a12
    const/16 v2, 0xc01

    #@a14
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@a17
    .line 416
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a19
    const/16 v1, 0xc01

    #@a1b
    const/16 v2, 0xc04

    #@a1d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@a20
    .line 417
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a22
    const/16 v1, 0xc04

    #@a24
    aput-byte v4, v0, v1

    #@a26
    .line 418
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a28
    const/16 v1, 0xc05

    #@a2a
    const/16 v2, 0xc0d

    #@a2c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@a2f
    .line 419
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a31
    const/16 v1, 0xc0d

    #@a33
    aput-byte v4, v0, v1

    #@a35
    .line 420
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a37
    const/16 v1, 0xc0e

    #@a39
    const/16 v2, 0xc11

    #@a3b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@a3e
    .line 421
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a40
    const/16 v1, 0xc11

    #@a42
    aput-byte v4, v0, v1

    #@a44
    .line 422
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a46
    const/16 v1, 0xc12

    #@a48
    const/16 v2, 0xc29

    #@a4a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@a4d
    .line 423
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a4f
    const/16 v1, 0xc29

    #@a51
    aput-byte v4, v0, v1

    #@a53
    .line 424
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a55
    const/16 v1, 0xc2a

    #@a57
    const/16 v2, 0xc34

    #@a59
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@a5c
    .line 425
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a5e
    const/16 v1, 0xc34

    #@a60
    aput-byte v4, v0, v1

    #@a62
    .line 426
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a64
    const/16 v1, 0xc35

    #@a66
    const/16 v2, 0xc3a

    #@a68
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@a6b
    .line 427
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a6d
    const/16 v1, 0xc3a

    #@a6f
    const/16 v2, 0xc3e

    #@a71
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@a74
    .line 428
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a76
    const/16 v1, 0xc3e

    #@a78
    const/16 v2, 0xc45

    #@a7a
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@a7d
    .line 429
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a7f
    const/16 v1, 0xc45

    #@a81
    aput-byte v4, v0, v1

    #@a83
    .line 430
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a85
    const/16 v1, 0xc46

    #@a87
    const/16 v2, 0xc49

    #@a89
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@a8c
    .line 431
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a8e
    const/16 v1, 0xc49

    #@a90
    aput-byte v4, v0, v1

    #@a92
    .line 432
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a94
    const/16 v1, 0xc4a

    #@a96
    const/16 v2, 0xc4e

    #@a98
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@a9b
    .line 433
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@a9d
    const/16 v1, 0xc4e

    #@a9f
    const/16 v2, 0xc55

    #@aa1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@aa4
    .line 434
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@aa6
    const/16 v1, 0xc55

    #@aa8
    const/16 v2, 0xc57

    #@aaa
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@aad
    .line 435
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@aaf
    const/16 v1, 0xc57

    #@ab1
    const/16 v2, 0xc60

    #@ab3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@ab6
    .line 436
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ab8
    const/16 v1, 0xc60

    #@aba
    const/16 v2, 0xc62

    #@abc
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@abf
    .line 437
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ac1
    const/16 v1, 0xc62

    #@ac3
    const/16 v2, 0xc66

    #@ac5
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@ac8
    .line 438
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@aca
    const/16 v1, 0xc66

    #@acc
    const/16 v2, 0xc70

    #@ace
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@ad1
    .line 439
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ad3
    const/16 v1, 0xc70

    #@ad5
    const/16 v2, 0xc82

    #@ad7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@ada
    .line 440
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@adc
    const/16 v1, 0xc82

    #@ade
    const/16 v2, 0xc84

    #@ae0
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@ae3
    .line 441
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ae5
    const/16 v1, 0xc84

    #@ae7
    aput-byte v4, v0, v1

    #@ae9
    .line 442
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@aeb
    const/16 v1, 0xc85

    #@aed
    const/16 v2, 0xc8d

    #@aef
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@af2
    .line 443
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@af4
    const/16 v1, 0xc8d

    #@af6
    aput-byte v4, v0, v1

    #@af8
    .line 444
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@afa
    const/16 v1, 0xc8e

    #@afc
    const/16 v2, 0xc91

    #@afe
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@b01
    .line 445
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b03
    const/16 v1, 0xc91

    #@b05
    aput-byte v4, v0, v1

    #@b07
    .line 446
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b09
    const/16 v1, 0xc92

    #@b0b
    const/16 v2, 0xca9

    #@b0d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@b10
    .line 447
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b12
    const/16 v1, 0xca9

    #@b14
    aput-byte v4, v0, v1

    #@b16
    .line 448
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b18
    const/16 v1, 0xcaa

    #@b1a
    const/16 v2, 0xcb4

    #@b1c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@b1f
    .line 449
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b21
    const/16 v1, 0xcb4

    #@b23
    aput-byte v4, v0, v1

    #@b25
    .line 450
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b27
    const/16 v1, 0xcb5

    #@b29
    const/16 v2, 0xcba

    #@b2b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@b2e
    .line 451
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b30
    const/16 v1, 0xcba

    #@b32
    const/16 v2, 0xcbe

    #@b34
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@b37
    .line 452
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b39
    const/16 v1, 0xcbe

    #@b3b
    const/16 v2, 0xcc5

    #@b3d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@b40
    .line 453
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b42
    const/16 v1, 0xcc5

    #@b44
    aput-byte v4, v0, v1

    #@b46
    .line 454
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b48
    const/16 v1, 0xcc6

    #@b4a
    const/16 v2, 0xcc9

    #@b4c
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@b4f
    .line 455
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b51
    const/16 v1, 0xcc9

    #@b53
    aput-byte v4, v0, v1

    #@b55
    .line 456
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b57
    const/16 v1, 0xcca

    #@b59
    const/16 v2, 0xcce

    #@b5b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@b5e
    .line 457
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b60
    const/16 v1, 0xcce

    #@b62
    const/16 v2, 0xcd5

    #@b64
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@b67
    .line 458
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b69
    const/16 v1, 0xcd5

    #@b6b
    const/16 v2, 0xcd7

    #@b6d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@b70
    .line 459
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b72
    const/16 v1, 0xcd7

    #@b74
    const/16 v2, 0xcde

    #@b76
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@b79
    .line 460
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b7b
    const/16 v1, 0xcde

    #@b7d
    aput-byte v5, v0, v1

    #@b7f
    .line 461
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b81
    const/16 v1, 0xcdf

    #@b83
    aput-byte v4, v0, v1

    #@b85
    .line 462
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b87
    const/16 v1, 0xce0

    #@b89
    const/16 v2, 0xce2

    #@b8b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@b8e
    .line 463
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b90
    const/16 v1, 0xce2

    #@b92
    const/16 v2, 0xce6

    #@b94
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@b97
    .line 464
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@b99
    const/16 v1, 0xce6

    #@b9b
    const/16 v2, 0xcf0

    #@b9d
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@ba0
    .line 465
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ba2
    const/16 v1, 0xcf0

    #@ba4
    const/16 v2, 0xd02

    #@ba6
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@ba9
    .line 466
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bab
    const/16 v1, 0xd02

    #@bad
    const/16 v2, 0xd04

    #@baf
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@bb2
    .line 467
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bb4
    const/16 v1, 0xd04

    #@bb6
    aput-byte v4, v0, v1

    #@bb8
    .line 468
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bba
    const/16 v1, 0xd05

    #@bbc
    const/16 v2, 0xd0d

    #@bbe
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@bc1
    .line 469
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bc3
    const/16 v1, 0xd0d

    #@bc5
    aput-byte v4, v0, v1

    #@bc7
    .line 470
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bc9
    const/16 v1, 0xd0e

    #@bcb
    const/16 v2, 0xd11

    #@bcd
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@bd0
    .line 471
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bd2
    const/16 v1, 0xd11

    #@bd4
    aput-byte v4, v0, v1

    #@bd6
    .line 472
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bd8
    const/16 v1, 0xd12

    #@bda
    const/16 v2, 0xd29

    #@bdc
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@bdf
    .line 473
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@be1
    const/16 v1, 0xd29

    #@be3
    aput-byte v4, v0, v1

    #@be5
    .line 474
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@be7
    const/16 v1, 0xd2a

    #@be9
    const/16 v2, 0xd3a

    #@beb
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@bee
    .line 475
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bf0
    const/16 v1, 0xd3a

    #@bf2
    const/16 v2, 0xd3e

    #@bf4
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@bf7
    .line 476
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@bf9
    const/16 v1, 0xd3e

    #@bfb
    const/16 v2, 0xd44

    #@bfd
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@c00
    .line 477
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c02
    const/16 v1, 0xd44

    #@c04
    const/16 v2, 0xd46

    #@c06
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c09
    .line 478
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c0b
    const/16 v1, 0xd46

    #@c0d
    const/16 v2, 0xd49

    #@c0f
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@c12
    .line 479
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c14
    const/16 v1, 0xd49

    #@c16
    aput-byte v4, v0, v1

    #@c18
    .line 480
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c1a
    const/16 v1, 0xd4a

    #@c1c
    const/16 v2, 0xd4e

    #@c1e
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@c21
    .line 481
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c23
    const/16 v1, 0xd4e

    #@c25
    const/16 v2, 0xd57

    #@c27
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c2a
    .line 482
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c2c
    const/16 v1, 0xd57

    #@c2e
    aput-byte v6, v0, v1

    #@c30
    .line 483
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c32
    const/16 v1, 0xd58

    #@c34
    const/16 v2, 0xd60

    #@c36
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c39
    .line 484
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c3b
    const/16 v1, 0xd60

    #@c3d
    const/16 v2, 0xd62

    #@c3f
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@c42
    .line 485
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c44
    const/16 v1, 0xd62

    #@c46
    const/16 v2, 0xd66

    #@c48
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c4b
    .line 486
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c4d
    const/16 v1, 0xd66

    #@c4f
    const/16 v2, 0xd70

    #@c51
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@c54
    .line 487
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c56
    const/16 v1, 0xd70

    #@c58
    const/16 v2, 0xe01

    #@c5a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c5d
    .line 488
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c5f
    const/16 v1, 0xe01

    #@c61
    const/16 v2, 0xe2f

    #@c63
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@c66
    .line 489
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c68
    const/16 v1, 0xe2f

    #@c6a
    aput-byte v4, v0, v1

    #@c6c
    .line 490
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c6e
    const/16 v1, 0xe30

    #@c70
    aput-byte v5, v0, v1

    #@c72
    .line 491
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c74
    const/16 v1, 0xe31

    #@c76
    aput-byte v6, v0, v1

    #@c78
    .line 492
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c7a
    const/16 v1, 0xe32

    #@c7c
    const/16 v2, 0xe34

    #@c7e
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@c81
    .line 493
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c83
    const/16 v1, 0xe34

    #@c85
    const/16 v2, 0xe3b

    #@c87
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@c8a
    .line 494
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c8c
    const/16 v1, 0xe3b

    #@c8e
    const/16 v2, 0xe40

    #@c90
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c93
    .line 495
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c95
    const/16 v1, 0xe40

    #@c97
    const/16 v2, 0xe46

    #@c99
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@c9c
    .line 496
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@c9e
    const/16 v1, 0xe46

    #@ca0
    const/16 v2, 0xe4f

    #@ca2
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@ca5
    .line 497
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ca7
    const/16 v1, 0xe4f

    #@ca9
    aput-byte v4, v0, v1

    #@cab
    .line 498
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cad
    const/16 v1, 0xe50

    #@caf
    const/16 v2, 0xe5a

    #@cb1
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@cb4
    .line 499
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cb6
    const/16 v1, 0xe5a

    #@cb8
    const/16 v2, 0xe81

    #@cba
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@cbd
    .line 500
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cbf
    const/16 v1, 0xe81

    #@cc1
    const/16 v2, 0xe83

    #@cc3
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@cc6
    .line 501
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cc8
    const/16 v1, 0xe83

    #@cca
    aput-byte v4, v0, v1

    #@ccc
    .line 502
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cce
    const/16 v1, 0xe84

    #@cd0
    aput-byte v5, v0, v1

    #@cd2
    .line 503
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cd4
    const/16 v1, 0xe85

    #@cd6
    const/16 v2, 0xe87

    #@cd8
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@cdb
    .line 504
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cdd
    const/16 v1, 0xe87

    #@cdf
    const/16 v2, 0xe89

    #@ce1
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@ce4
    .line 505
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ce6
    const/16 v1, 0xe89

    #@ce8
    aput-byte v4, v0, v1

    #@cea
    .line 506
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cec
    const/16 v1, 0xe8a

    #@cee
    aput-byte v5, v0, v1

    #@cf0
    .line 507
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cf2
    const/16 v1, 0xe8b

    #@cf4
    const/16 v2, 0xe8d

    #@cf6
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@cf9
    .line 508
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@cfb
    const/16 v1, 0xe8d

    #@cfd
    aput-byte v5, v0, v1

    #@cff
    .line 509
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d01
    const/16 v1, 0xe8e

    #@d03
    const/16 v2, 0xe94

    #@d05
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@d08
    .line 510
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d0a
    const/16 v1, 0xe94

    #@d0c
    const/16 v2, 0xe98

    #@d0e
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d11
    .line 511
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d13
    const/16 v1, 0xe98

    #@d15
    aput-byte v4, v0, v1

    #@d17
    .line 512
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d19
    const/16 v1, 0xe99

    #@d1b
    const/16 v2, 0xea0

    #@d1d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d20
    .line 513
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d22
    const/16 v1, 0xea0

    #@d24
    aput-byte v4, v0, v1

    #@d26
    .line 514
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d28
    const/16 v1, 0xea1

    #@d2a
    const/16 v2, 0xea4

    #@d2c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d2f
    .line 515
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d31
    const/16 v1, 0xea4

    #@d33
    aput-byte v4, v0, v1

    #@d35
    .line 516
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d37
    const/16 v1, 0xea5

    #@d39
    aput-byte v5, v0, v1

    #@d3b
    .line 517
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d3d
    const/16 v1, 0xea6

    #@d3f
    aput-byte v4, v0, v1

    #@d41
    .line 518
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d43
    const/16 v1, 0xea7

    #@d45
    aput-byte v5, v0, v1

    #@d47
    .line 519
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d49
    const/16 v1, 0xea8

    #@d4b
    const/16 v2, 0xeaa

    #@d4d
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@d50
    .line 520
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d52
    const/16 v1, 0xeaa

    #@d54
    const/16 v2, 0xeac

    #@d56
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d59
    .line 521
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d5b
    const/16 v1, 0xeac

    #@d5d
    aput-byte v4, v0, v1

    #@d5f
    .line 522
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d61
    const/16 v1, 0xead

    #@d63
    const/16 v2, 0xeaf

    #@d65
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d68
    .line 523
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d6a
    const/16 v1, 0xeaf

    #@d6c
    aput-byte v4, v0, v1

    #@d6e
    .line 524
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d70
    const/16 v1, 0xeb0

    #@d72
    aput-byte v5, v0, v1

    #@d74
    .line 525
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d76
    const/16 v1, 0xeb1

    #@d78
    aput-byte v6, v0, v1

    #@d7a
    .line 526
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d7c
    const/16 v1, 0xeb2

    #@d7e
    const/16 v2, 0xeb4

    #@d80
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@d83
    .line 527
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d85
    const/16 v1, 0xeb4

    #@d87
    const/16 v2, 0xeba

    #@d89
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@d8c
    .line 528
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d8e
    const/16 v1, 0xeba

    #@d90
    aput-byte v4, v0, v1

    #@d92
    .line 529
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d94
    const/16 v1, 0xebb

    #@d96
    const/16 v2, 0xebd

    #@d98
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@d9b
    .line 530
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@d9d
    const/16 v1, 0xebd

    #@d9f
    aput-byte v5, v0, v1

    #@da1
    .line 531
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@da3
    const/16 v1, 0xebe

    #@da5
    const/16 v2, 0xec0

    #@da7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@daa
    .line 532
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dac
    const/16 v1, 0xec0

    #@dae
    const/16 v2, 0xec5

    #@db0
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@db3
    .line 533
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@db5
    const/16 v1, 0xec5

    #@db7
    aput-byte v4, v0, v1

    #@db9
    .line 534
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dbb
    const/16 v1, 0xec6

    #@dbd
    aput-byte v6, v0, v1

    #@dbf
    .line 535
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dc1
    const/16 v1, 0xec7

    #@dc3
    aput-byte v4, v0, v1

    #@dc5
    .line 536
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dc7
    const/16 v1, 0xec8

    #@dc9
    const/16 v2, 0xece

    #@dcb
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@dce
    .line 537
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dd0
    const/16 v1, 0xece

    #@dd2
    const/16 v2, 0xed0

    #@dd4
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@dd7
    .line 538
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dd9
    const/16 v1, 0xed0

    #@ddb
    const/16 v2, 0xeda

    #@ddd
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@de0
    .line 539
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@de2
    const/16 v1, 0xeda

    #@de4
    const/16 v2, 0xf18

    #@de6
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@de9
    .line 540
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@deb
    const/16 v1, 0xf18

    #@ded
    const/16 v2, 0xf1a

    #@def
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@df2
    .line 541
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@df4
    const/16 v1, 0xf1a

    #@df6
    const/16 v2, 0xf20

    #@df8
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@dfb
    .line 542
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@dfd
    const/16 v1, 0xf20

    #@dff
    const/16 v2, 0xf2a

    #@e01
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e04
    .line 543
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e06
    const/16 v1, 0xf2a

    #@e08
    const/16 v2, 0xf35

    #@e0a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e0d
    .line 544
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e0f
    const/16 v1, 0xf35

    #@e11
    aput-byte v6, v0, v1

    #@e13
    .line 545
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e15
    const/16 v1, 0xf36

    #@e17
    aput-byte v4, v0, v1

    #@e19
    .line 546
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e1b
    const/16 v1, 0xf37

    #@e1d
    aput-byte v6, v0, v1

    #@e1f
    .line 547
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e21
    const/16 v1, 0xf38

    #@e23
    aput-byte v4, v0, v1

    #@e25
    .line 548
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e27
    const/16 v1, 0xf39

    #@e29
    aput-byte v6, v0, v1

    #@e2b
    .line 549
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e2d
    const/16 v1, 0xf3a

    #@e2f
    const/16 v2, 0xf3e

    #@e31
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e34
    .line 550
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e36
    const/16 v1, 0xf3e

    #@e38
    const/16 v2, 0xf40

    #@e3a
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e3d
    .line 551
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e3f
    const/16 v1, 0xf40

    #@e41
    const/16 v2, 0xf48

    #@e43
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@e46
    .line 552
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e48
    const/16 v1, 0xf48

    #@e4a
    aput-byte v4, v0, v1

    #@e4c
    .line 553
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e4e
    const/16 v1, 0xf49

    #@e50
    const/16 v2, 0xf6a

    #@e52
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@e55
    .line 554
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e57
    const/16 v1, 0xf6a

    #@e59
    const/16 v2, 0xf71

    #@e5b
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e5e
    .line 555
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e60
    const/16 v1, 0xf71

    #@e62
    const/16 v2, 0xf85

    #@e64
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e67
    .line 556
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e69
    const/16 v1, 0xf85

    #@e6b
    aput-byte v4, v0, v1

    #@e6d
    .line 557
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e6f
    const/16 v1, 0xf86

    #@e71
    const/16 v2, 0xf8c

    #@e73
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e76
    .line 558
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e78
    const/16 v1, 0xf8c

    #@e7a
    const/16 v2, 0xf90

    #@e7c
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@e7f
    .line 559
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e81
    const/16 v1, 0xf90

    #@e83
    const/16 v2, 0xf96

    #@e85
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e88
    .line 560
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e8a
    const/16 v1, 0xf96

    #@e8c
    aput-byte v4, v0, v1

    #@e8e
    .line 561
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e90
    const/16 v1, 0xf97

    #@e92
    aput-byte v6, v0, v1

    #@e94
    .line 562
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e96
    const/16 v1, 0xf98

    #@e98
    aput-byte v4, v0, v1

    #@e9a
    .line 563
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@e9c
    const/16 v1, 0xf99

    #@e9e
    const/16 v2, 0xfae

    #@ea0
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@ea3
    .line 564
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ea5
    const/16 v1, 0xfae

    #@ea7
    const/16 v2, 0xfb1

    #@ea9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@eac
    .line 565
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@eae
    const/16 v1, 0xfb1

    #@eb0
    const/16 v2, 0xfb8

    #@eb2
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@eb5
    .line 566
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@eb7
    const/16 v1, 0xfb8

    #@eb9
    aput-byte v4, v0, v1

    #@ebb
    .line 567
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ebd
    const/16 v1, 0xfb9

    #@ebf
    aput-byte v6, v0, v1

    #@ec1
    .line 568
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ec3
    const/16 v1, 0xfba

    #@ec5
    const/16 v2, 0x10a0

    #@ec7
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@eca
    .line 569
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ecc
    const/16 v1, 0x10a0

    #@ece
    const/16 v2, 0x10c6

    #@ed0
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@ed3
    .line 570
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ed5
    const/16 v1, 0x10c6

    #@ed7
    const/16 v2, 0x10d0

    #@ed9
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@edc
    .line 571
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ede
    const/16 v1, 0x10d0

    #@ee0
    const/16 v2, 0x10f7

    #@ee2
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@ee5
    .line 572
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ee7
    const/16 v1, 0x10f7

    #@ee9
    const/16 v2, 0x1100

    #@eeb
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@eee
    .line 573
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ef0
    const/16 v1, 0x1100

    #@ef2
    aput-byte v5, v0, v1

    #@ef4
    .line 574
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ef6
    const/16 v1, 0x1101

    #@ef8
    aput-byte v4, v0, v1

    #@efa
    .line 575
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@efc
    const/16 v1, 0x1102

    #@efe
    const/16 v2, 0x1104

    #@f00
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@f03
    .line 576
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f05
    const/16 v1, 0x1104

    #@f07
    aput-byte v4, v0, v1

    #@f09
    .line 577
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f0b
    const/16 v1, 0x1105

    #@f0d
    const/16 v2, 0x1108

    #@f0f
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@f12
    .line 578
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f14
    const/16 v1, 0x1108

    #@f16
    aput-byte v4, v0, v1

    #@f18
    .line 579
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f1a
    const/16 v1, 0x1109

    #@f1c
    aput-byte v5, v0, v1

    #@f1e
    .line 580
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f20
    const/16 v1, 0x110a

    #@f22
    aput-byte v4, v0, v1

    #@f24
    .line 581
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f26
    const/16 v1, 0x110b

    #@f28
    const/16 v2, 0x110d

    #@f2a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@f2d
    .line 582
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f2f
    const/16 v1, 0x110d

    #@f31
    aput-byte v4, v0, v1

    #@f33
    .line 583
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f35
    const/16 v1, 0x110e

    #@f37
    const/16 v2, 0x1113

    #@f39
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@f3c
    .line 584
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f3e
    const/16 v1, 0x1113

    #@f40
    const/16 v2, 0x113c

    #@f42
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@f45
    .line 585
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f47
    const/16 v1, 0x113c

    #@f49
    aput-byte v5, v0, v1

    #@f4b
    .line 586
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f4d
    const/16 v1, 0x113d

    #@f4f
    aput-byte v4, v0, v1

    #@f51
    .line 587
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f53
    const/16 v1, 0x113e

    #@f55
    aput-byte v5, v0, v1

    #@f57
    .line 588
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f59
    const/16 v1, 0x113f

    #@f5b
    aput-byte v4, v0, v1

    #@f5d
    .line 589
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f5f
    const/16 v1, 0x1140

    #@f61
    aput-byte v5, v0, v1

    #@f63
    .line 590
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f65
    const/16 v1, 0x1141

    #@f67
    const/16 v2, 0x114c

    #@f69
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@f6c
    .line 591
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f6e
    const/16 v1, 0x114c

    #@f70
    aput-byte v5, v0, v1

    #@f72
    .line 592
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f74
    const/16 v1, 0x114d

    #@f76
    aput-byte v4, v0, v1

    #@f78
    .line 593
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f7a
    const/16 v1, 0x114e

    #@f7c
    aput-byte v5, v0, v1

    #@f7e
    .line 594
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f80
    const/16 v1, 0x114f

    #@f82
    aput-byte v4, v0, v1

    #@f84
    .line 595
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f86
    const/16 v1, 0x1150

    #@f88
    aput-byte v5, v0, v1

    #@f8a
    .line 596
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f8c
    const/16 v1, 0x1151

    #@f8e
    const/16 v2, 0x1154

    #@f90
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@f93
    .line 597
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f95
    const/16 v1, 0x1154

    #@f97
    const/16 v2, 0x1156

    #@f99
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@f9c
    .line 598
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@f9e
    const/16 v1, 0x1156

    #@fa0
    const/16 v2, 0x1159

    #@fa2
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@fa5
    .line 599
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fa7
    const/16 v1, 0x1159

    #@fa9
    aput-byte v5, v0, v1

    #@fab
    .line 600
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fad
    const/16 v1, 0x115a

    #@faf
    const/16 v2, 0x115f

    #@fb1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@fb4
    .line 601
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fb6
    const/16 v1, 0x115f

    #@fb8
    const/16 v2, 0x1162

    #@fba
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@fbd
    .line 602
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fbf
    const/16 v1, 0x1162

    #@fc1
    aput-byte v4, v0, v1

    #@fc3
    .line 603
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fc5
    const/16 v1, 0x1163

    #@fc7
    aput-byte v5, v0, v1

    #@fc9
    .line 604
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fcb
    const/16 v1, 0x1164

    #@fcd
    aput-byte v4, v0, v1

    #@fcf
    .line 605
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fd1
    const/16 v1, 0x1165

    #@fd3
    aput-byte v5, v0, v1

    #@fd5
    .line 606
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fd7
    const/16 v1, 0x1166

    #@fd9
    aput-byte v4, v0, v1

    #@fdb
    .line 607
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fdd
    const/16 v1, 0x1167

    #@fdf
    aput-byte v5, v0, v1

    #@fe1
    .line 608
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fe3
    const/16 v1, 0x1168

    #@fe5
    aput-byte v4, v0, v1

    #@fe7
    .line 609
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fe9
    const/16 v1, 0x1169

    #@feb
    aput-byte v5, v0, v1

    #@fed
    .line 610
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@fef
    const/16 v1, 0x116a

    #@ff1
    const/16 v2, 0x116d

    #@ff3
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@ff6
    .line 611
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@ff8
    const/16 v1, 0x116d

    #@ffa
    const/16 v2, 0x116f

    #@ffc
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@fff
    .line 612
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1001
    const/16 v1, 0x116f

    #@1003
    const/16 v2, 0x1172

    #@1005
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1008
    .line 613
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@100a
    const/16 v1, 0x1172

    #@100c
    const/16 v2, 0x1174

    #@100e
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1011
    .line 614
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1013
    const/16 v1, 0x1174

    #@1015
    aput-byte v4, v0, v1

    #@1017
    .line 615
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1019
    const/16 v1, 0x1175

    #@101b
    aput-byte v5, v0, v1

    #@101d
    .line 616
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@101f
    const/16 v1, 0x1176

    #@1021
    const/16 v2, 0x119e

    #@1023
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1026
    .line 617
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1028
    const/16 v1, 0x119e

    #@102a
    aput-byte v5, v0, v1

    #@102c
    .line 618
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@102e
    const/16 v1, 0x119f

    #@1030
    const/16 v2, 0x11a8

    #@1032
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1035
    .line 619
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1037
    const/16 v1, 0x11a8

    #@1039
    aput-byte v5, v0, v1

    #@103b
    .line 620
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@103d
    const/16 v1, 0x11a9

    #@103f
    const/16 v2, 0x11ab

    #@1041
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1044
    .line 621
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1046
    const/16 v1, 0x11ab

    #@1048
    aput-byte v5, v0, v1

    #@104a
    .line 622
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@104c
    const/16 v1, 0x11ac

    #@104e
    const/16 v2, 0x11ae

    #@1050
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1053
    .line 623
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1055
    const/16 v1, 0x11ae

    #@1057
    const/16 v2, 0x11b0

    #@1059
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@105c
    .line 624
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@105e
    const/16 v1, 0x11b0

    #@1060
    const/16 v2, 0x11b7

    #@1062
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1065
    .line 625
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1067
    const/16 v1, 0x11b7

    #@1069
    const/16 v2, 0x11b9

    #@106b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@106e
    .line 626
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1070
    const/16 v1, 0x11b9

    #@1072
    aput-byte v4, v0, v1

    #@1074
    .line 627
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1076
    const/16 v1, 0x11ba

    #@1078
    aput-byte v5, v0, v1

    #@107a
    .line 628
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@107c
    const/16 v1, 0x11bb

    #@107e
    aput-byte v4, v0, v1

    #@1080
    .line 629
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1082
    const/16 v1, 0x11bc

    #@1084
    const/16 v2, 0x11c3

    #@1086
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1089
    .line 630
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@108b
    const/16 v1, 0x11c3

    #@108d
    const/16 v2, 0x11eb

    #@108f
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1092
    .line 631
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1094
    const/16 v1, 0x11eb

    #@1096
    aput-byte v5, v0, v1

    #@1098
    .line 632
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@109a
    const/16 v1, 0x11ec

    #@109c
    const/16 v2, 0x11f0

    #@109e
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10a1
    .line 633
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10a3
    const/16 v1, 0x11f0

    #@10a5
    aput-byte v5, v0, v1

    #@10a7
    .line 634
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10a9
    const/16 v1, 0x11f1

    #@10ab
    const/16 v2, 0x11f9

    #@10ad
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10b0
    .line 635
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10b2
    const/16 v1, 0x11f9

    #@10b4
    aput-byte v5, v0, v1

    #@10b6
    .line 636
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10b8
    const/16 v1, 0x11fa

    #@10ba
    const/16 v2, 0x1e00

    #@10bc
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10bf
    .line 637
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10c1
    const/16 v1, 0x1e00

    #@10c3
    const/16 v2, 0x1e9c

    #@10c5
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@10c8
    .line 638
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10ca
    const/16 v1, 0x1e9c

    #@10cc
    const/16 v2, 0x1ea0

    #@10ce
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10d1
    .line 639
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10d3
    const/16 v1, 0x1ea0

    #@10d5
    const/16 v2, 0x1efa

    #@10d7
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@10da
    .line 640
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10dc
    const/16 v1, 0x1efa

    #@10de
    const/16 v2, 0x1f00

    #@10e0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10e3
    .line 641
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10e5
    const/16 v1, 0x1f00

    #@10e7
    const/16 v2, 0x1f16

    #@10e9
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@10ec
    .line 642
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10ee
    const/16 v1, 0x1f16

    #@10f0
    const/16 v2, 0x1f18

    #@10f2
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@10f5
    .line 643
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@10f7
    const/16 v1, 0x1f18

    #@10f9
    const/16 v2, 0x1f1e

    #@10fb
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@10fe
    .line 644
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1100
    const/16 v1, 0x1f1e

    #@1102
    const/16 v2, 0x1f20

    #@1104
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1107
    .line 645
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1109
    const/16 v1, 0x1f20

    #@110b
    const/16 v2, 0x1f46

    #@110d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1110
    .line 646
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1112
    const/16 v1, 0x1f46

    #@1114
    const/16 v2, 0x1f48

    #@1116
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1119
    .line 647
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@111b
    const/16 v1, 0x1f48

    #@111d
    const/16 v2, 0x1f4e

    #@111f
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1122
    .line 648
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1124
    const/16 v1, 0x1f4e

    #@1126
    const/16 v2, 0x1f50

    #@1128
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@112b
    .line 649
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@112d
    const/16 v1, 0x1f50

    #@112f
    const/16 v2, 0x1f58

    #@1131
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1134
    .line 650
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1136
    const/16 v1, 0x1f58

    #@1138
    aput-byte v4, v0, v1

    #@113a
    .line 651
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@113c
    const/16 v1, 0x1f59

    #@113e
    aput-byte v5, v0, v1

    #@1140
    .line 652
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1142
    const/16 v1, 0x1f5a

    #@1144
    aput-byte v4, v0, v1

    #@1146
    .line 653
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1148
    const/16 v1, 0x1f5b

    #@114a
    aput-byte v5, v0, v1

    #@114c
    .line 654
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@114e
    const/16 v1, 0x1f5c

    #@1150
    aput-byte v4, v0, v1

    #@1152
    .line 655
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1154
    const/16 v1, 0x1f5d

    #@1156
    aput-byte v5, v0, v1

    #@1158
    .line 656
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@115a
    const/16 v1, 0x1f5e

    #@115c
    aput-byte v4, v0, v1

    #@115e
    .line 657
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1160
    const/16 v1, 0x1f5f

    #@1162
    const/16 v2, 0x1f7e

    #@1164
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1167
    .line 658
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1169
    const/16 v1, 0x1f7e

    #@116b
    const/16 v2, 0x1f80

    #@116d
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1170
    .line 659
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1172
    const/16 v1, 0x1f80

    #@1174
    const/16 v2, 0x1fb5

    #@1176
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1179
    .line 660
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@117b
    const/16 v1, 0x1fb5

    #@117d
    aput-byte v4, v0, v1

    #@117f
    .line 661
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1181
    const/16 v1, 0x1fb6

    #@1183
    const/16 v2, 0x1fbd

    #@1185
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1188
    .line 662
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@118a
    const/16 v1, 0x1fbd

    #@118c
    aput-byte v4, v0, v1

    #@118e
    .line 663
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1190
    const/16 v1, 0x1fbe

    #@1192
    aput-byte v5, v0, v1

    #@1194
    .line 664
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1196
    const/16 v1, 0x1fbf

    #@1198
    const/16 v2, 0x1fc2

    #@119a
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@119d
    .line 665
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@119f
    const/16 v1, 0x1fc2

    #@11a1
    const/16 v2, 0x1fc5

    #@11a3
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11a6
    .line 666
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11a8
    const/16 v1, 0x1fc5

    #@11aa
    aput-byte v4, v0, v1

    #@11ac
    .line 667
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11ae
    const/16 v1, 0x1fc6

    #@11b0
    const/16 v2, 0x1fcd

    #@11b2
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11b5
    .line 668
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11b7
    const/16 v1, 0x1fcd

    #@11b9
    const/16 v2, 0x1fd0

    #@11bb
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@11be
    .line 669
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11c0
    const/16 v1, 0x1fd0

    #@11c2
    const/16 v2, 0x1fd4

    #@11c4
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11c7
    .line 670
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11c9
    const/16 v1, 0x1fd4

    #@11cb
    const/16 v2, 0x1fd6

    #@11cd
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@11d0
    .line 671
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11d2
    const/16 v1, 0x1fd6

    #@11d4
    const/16 v2, 0x1fdc

    #@11d6
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11d9
    .line 672
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11db
    const/16 v1, 0x1fdc

    #@11dd
    const/16 v2, 0x1fe0

    #@11df
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@11e2
    .line 673
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11e4
    const/16 v1, 0x1fe0

    #@11e6
    const/16 v2, 0x1fed

    #@11e8
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11eb
    .line 674
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11ed
    const/16 v1, 0x1fed

    #@11ef
    const/16 v2, 0x1ff2

    #@11f1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@11f4
    .line 675
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11f6
    const/16 v1, 0x1ff2

    #@11f8
    const/16 v2, 0x1ff5

    #@11fa
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@11fd
    .line 676
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@11ff
    const/16 v1, 0x1ff5

    #@1201
    aput-byte v4, v0, v1

    #@1203
    .line 677
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1205
    const/16 v1, 0x1ff6

    #@1207
    const/16 v2, 0x1ffd

    #@1209
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@120c
    .line 678
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@120e
    const/16 v1, 0x1ffd

    #@1210
    const/16 v2, 0x20d0

    #@1212
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1215
    .line 679
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1217
    const/16 v1, 0x20d0

    #@1219
    const/16 v2, 0x20dd

    #@121b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@121e
    .line 680
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1220
    const/16 v1, 0x20dd

    #@1222
    const/16 v2, 0x20e1

    #@1224
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1227
    .line 681
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1229
    const/16 v1, 0x20e1

    #@122b
    aput-byte v6, v0, v1

    #@122d
    .line 682
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@122f
    const/16 v1, 0x20e2

    #@1231
    const/16 v2, 0x2126

    #@1233
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1236
    .line 683
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1238
    const/16 v1, 0x2126

    #@123a
    aput-byte v5, v0, v1

    #@123c
    .line 684
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@123e
    const/16 v1, 0x2127

    #@1240
    const/16 v2, 0x212a

    #@1242
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1245
    .line 685
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1247
    const/16 v1, 0x212a

    #@1249
    const/16 v2, 0x212c

    #@124b
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@124e
    .line 686
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1250
    const/16 v1, 0x212c

    #@1252
    const/16 v2, 0x212e

    #@1254
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1257
    .line 687
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1259
    const/16 v1, 0x212e

    #@125b
    aput-byte v5, v0, v1

    #@125d
    .line 688
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@125f
    const/16 v1, 0x212f

    #@1261
    const/16 v2, 0x2180

    #@1263
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1266
    .line 689
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1268
    const/16 v1, 0x2180

    #@126a
    const/16 v2, 0x2183

    #@126c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@126f
    .line 690
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1271
    const/16 v1, 0x2183

    #@1273
    const/16 v2, 0x3005

    #@1275
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1278
    .line 691
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@127a
    const/16 v1, 0x3005

    #@127c
    aput-byte v6, v0, v1

    #@127e
    .line 692
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1280
    const/16 v1, 0x3006

    #@1282
    aput-byte v4, v0, v1

    #@1284
    .line 693
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1286
    const/16 v1, 0x3007

    #@1288
    aput-byte v5, v0, v1

    #@128a
    .line 694
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@128c
    const/16 v1, 0x3008

    #@128e
    const/16 v2, 0x3021

    #@1290
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1293
    .line 695
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1295
    const/16 v1, 0x3021

    #@1297
    const/16 v2, 0x302a

    #@1299
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@129c
    .line 696
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@129e
    const/16 v1, 0x302a

    #@12a0
    const/16 v2, 0x3030

    #@12a2
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@12a5
    .line 697
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12a7
    const/16 v1, 0x3030

    #@12a9
    aput-byte v4, v0, v1

    #@12ab
    .line 698
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12ad
    const/16 v1, 0x3031

    #@12af
    const/16 v2, 0x3036

    #@12b1
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@12b4
    .line 699
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12b6
    const/16 v1, 0x3036

    #@12b8
    const/16 v2, 0x3041

    #@12ba
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@12bd
    .line 700
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12bf
    const/16 v1, 0x3041

    #@12c1
    const/16 v2, 0x3095

    #@12c3
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@12c6
    .line 701
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12c8
    const/16 v1, 0x3095

    #@12ca
    const/16 v2, 0x3099

    #@12cc
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@12cf
    .line 702
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12d1
    const/16 v1, 0x3099

    #@12d3
    const/16 v2, 0x309b

    #@12d5
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@12d8
    .line 703
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12da
    const/16 v1, 0x309b

    #@12dc
    const/16 v2, 0x309d

    #@12de
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@12e1
    .line 704
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12e3
    const/16 v1, 0x309d

    #@12e5
    const/16 v2, 0x309f

    #@12e7
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@12ea
    .line 705
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12ec
    const/16 v1, 0x309f

    #@12ee
    const/16 v2, 0x30a1

    #@12f0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@12f3
    .line 706
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12f5
    const/16 v1, 0x30a1

    #@12f7
    const/16 v2, 0x30fb

    #@12f9
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@12fc
    .line 707
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@12fe
    const/16 v1, 0x30fb

    #@1300
    aput-byte v4, v0, v1

    #@1302
    .line 708
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1304
    const/16 v1, 0x30fc

    #@1306
    const/16 v2, 0x30ff

    #@1308
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@130b
    .line 709
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@130d
    const/16 v1, 0x30ff

    #@130f
    const/16 v2, 0x3105

    #@1311
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1314
    .line 710
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1316
    const/16 v1, 0x3105

    #@1318
    const/16 v2, 0x312d

    #@131a
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@131d
    .line 711
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@131f
    const/16 v1, 0x312d

    #@1321
    const/16 v2, 0x4e00

    #@1323
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1326
    .line 712
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1328
    const/16 v1, 0x4e00

    #@132a
    const v2, 0x9fa6

    #@132d
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1330
    .line 713
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1332
    const v1, 0x9fa6

    #@1335
    const v2, 0xac00

    #@1338
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@133b
    .line 714
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@133d
    const v1, 0xac00

    #@1340
    const v2, 0xd7a4

    #@1343
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@1346
    .line 715
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1348
    const v1, 0xd7a4

    #@134b
    const v2, 0xd800

    #@134e
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1351
    .line 716
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@1353
    const v1, 0xe000

    #@1356
    const v2, 0xfffe

    #@1359
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@135c
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static highSurrogate(I)C
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 750
    const/high16 v0, 0x10000

    #@2
    sub-int v0, p0, v0

    #@4
    shr-int/lit8 v0, v0, 0xa

    #@6
    const v1, 0xd800

    #@9
    add-int/2addr v0, v1

    #@a
    int-to-char v0, v0

    #@b
    return v0
.end method

.method public static isContent(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 811
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x20

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 812
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const v2, 0x10ffff

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public static isHighSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 768
    const v1, 0xd800

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdbff

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isInvalid(I)Z
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 802
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isValid(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static isLowSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 777
    const v1, 0xdc00

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdfff

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isMarkup(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 822
    const/16 v1, 0x3c

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x26

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x25

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static isNCName(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 876
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit16 v1, v1, 0x80

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isNCNameStart(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 865
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x40

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isName(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 854
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x8

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isNameStart(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 843
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x4

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isPubid(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 887
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x10

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isSpace(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 832
    const/16 v1, 0x20

    #@3
    if-gt p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x2

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isSupplemental(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 730
    const/high16 v1, 0x10000

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-gt p0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public static isValid(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 792
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x1

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 793
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const v2, 0x10ffff

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public static isValidIANAEncoding(Ljava/lang/String;)Z
    .locals 9
    .param p0, "ianaEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x7a

    #@2
    const/16 v7, 0x61

    #@4
    const/16 v6, 0x5a

    #@6
    const/16 v5, 0x41

    #@8
    const/4 v4, 0x0

    #@9
    .line 979
    if-eqz p0, :cond_5

    #@b
    .line 980
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 981
    .local v2, "length":I
    if-lez v2, :cond_5

    #@11
    .line 982
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 983
    .local v0, "c":C
    if-lt v0, v5, :cond_4

    #@17
    if-gt v0, v6, :cond_4

    #@19
    .line 984
    :cond_0
    const/4 v1, 0x1

    #@1a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    #@1c
    .line 985
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    .line 986
    if-lt v0, v5, :cond_1

    #@22
    if-le v0, v6, :cond_6

    #@24
    :cond_1
    if-lt v0, v7, :cond_2

    #@26
    if-le v0, v8, :cond_6

    #@28
    .line 987
    :cond_2
    const/16 v3, 0x30

    #@2a
    if-lt v0, v3, :cond_3

    #@2c
    const/16 v3, 0x39

    #@2e
    if-le v0, v3, :cond_6

    #@30
    :cond_3
    const/16 v3, 0x2e

    #@32
    if-eq v0, v3, :cond_6

    #@34
    const/16 v3, 0x5f

    #@36
    if-eq v0, v3, :cond_6

    #@38
    .line 988
    const/16 v3, 0x2d

    #@3a
    if-eq v0, v3, :cond_6

    #@3c
    .line 989
    return v4

    #@3d
    .line 983
    .end local v1    # "i":I
    :cond_4
    if-lt v0, v7, :cond_5

    #@3f
    if-le v0, v8, :cond_0

    #@41
    .line 996
    .end local v0    # "c":C
    .end local v2    # "length":I
    :cond_5
    return v4

    #@42
    .line 984
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 992
    :cond_7
    const/4 v3, 0x1

    #@46
    return v3
.end method

.method public static isValidJavaEncoding(Ljava/lang/String;)Z
    .locals 5
    .param p0, "javaEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1008
    if-eqz p0, :cond_5

    #@3
    .line 1009
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 1010
    .local v2, "length":I
    if-lez v2, :cond_5

    #@9
    .line 1011
    const/4 v1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@c
    .line 1012
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 1013
    .local v0, "c":C
    const/16 v3, 0x41

    #@12
    if-lt v0, v3, :cond_0

    #@14
    const/16 v3, 0x5a

    #@16
    if-le v0, v3, :cond_3

    #@18
    :cond_0
    const/16 v3, 0x61

    #@1a
    if-lt v0, v3, :cond_1

    #@1c
    const/16 v3, 0x7a

    #@1e
    if-le v0, v3, :cond_3

    #@20
    .line 1014
    :cond_1
    const/16 v3, 0x30

    #@22
    if-lt v0, v3, :cond_2

    #@24
    const/16 v3, 0x39

    #@26
    if-le v0, v3, :cond_3

    #@28
    :cond_2
    const/16 v3, 0x2e

    #@2a
    if-eq v0, v3, :cond_3

    #@2c
    const/16 v3, 0x5f

    #@2e
    if-eq v0, v3, :cond_3

    #@30
    .line 1015
    const/16 v3, 0x2d

    #@32
    if-eq v0, v3, :cond_3

    #@34
    .line 1016
    return v4

    #@35
    .line 1011
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1019
    .end local v0    # "c":C
    :cond_4
    const/4 v3, 0x1

    #@39
    return v3

    #@3a
    .line 1022
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_5
    return v4
.end method

.method public static isValidNCName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "ncName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 929
    return v3

    #@8
    .line 930
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 931
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCNameStart(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 932
    return v3

    #@13
    .line 933
    :cond_1
    const/4 v1, 0x1

    #@14
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    if-ge v1, v2, :cond_3

    #@1a
    .line 934
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    .line 935
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCName(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 936
    return v3

    #@25
    .line 933
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 939
    :cond_3
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 901
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 902
    return v3

    #@8
    .line 903
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 904
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNameStart(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 905
    return v3

    #@13
    .line 906
    :cond_1
    const/4 v1, 0x1

    #@14
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    if-ge v1, v2, :cond_3

    #@1a
    .line 907
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    .line 908
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 909
    return v3

    #@25
    .line 906
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 912
    :cond_3
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method public static isValidNmtoken(Ljava/lang/String;)Z
    .locals 4
    .param p0, "nmtoken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 954
    return v3

    #@8
    .line 955
    :cond_0
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_2

    #@f
    .line 956
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 957
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 958
    return v3

    #@1a
    .line 955
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 961
    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    #@1e
    return v2
.end method

.method public static lowSurrogate(I)C
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 759
    const/high16 v0, 0x10000

    #@2
    sub-int v0, p0, v0

    #@4
    and-int/lit16 v0, v0, 0x3ff

    #@6
    const v1, 0xdc00

    #@9
    add-int/2addr v0, v1

    #@a
    int-to-char v0, v0

    #@b
    return v0
.end method

.method public static supplemental(CC)I
    .locals 2
    .param p0, "h"    # C
    .param p1, "l"    # C

    #@0
    .prologue
    .line 741
    const v0, 0xd800

    #@3
    sub-int v0, p0, v0

    #@5
    mul-int/lit16 v0, v0, 0x400

    #@7
    const v1, 0xdc00

    #@a
    sub-int v1, p1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    const/high16 v1, 0x10000

    #@f
    add-int/2addr v0, v1

    #@10
    return v0
.end method
