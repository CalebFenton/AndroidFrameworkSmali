.class public Lorg/apache/xml/serializer/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final greylist CHARS:[B

.field public static final greylist MASK_CONTENT:I = 0x20

.field public static final greylist MASK_NAME:I = 0x8

.field public static final greylist MASK_NAME_START:I = 0x4

.field public static final greylist MASK_NCNAME:I = 0x80

.field public static final greylist MASK_NCNAME_START:I = 0x40

.field public static final greylist MASK_PUBID:I = 0x10

.field public static final greylist MASK_SPACE:I = 0x2

.field public static final greylist MASK_VALID:I = 0x1


# direct methods
.method static constructor greylist <clinit>()V
    .registers 7

    const/high16 v0, 0x10000

    .line 56
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    .line 98
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v3, 0x13

    .line 99
    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 100
    aput-byte v3, v0, v1

    const/16 v1, 0x20

    const/16 v3, 0x33

    .line 101
    aput-byte v3, v0, v1

    const/16 v1, 0x21

    const/16 v3, 0x31

    .line 102
    aput-byte v3, v0, v1

    const/16 v4, 0x22

    .line 103
    aput-byte v1, v0, v4

    const/16 v4, 0x26

    .line 104
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 v2, 0x1

    .line 105
    aput-byte v2, v0, v4

    const/16 v4, 0x27

    const/16 v5, 0x2d

    .line 106
    invoke-static {v0, v4, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v4, 0x2f

    const/16 v6, -0x47

    .line 107
    invoke-static {v0, v5, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 108
    aput-byte v3, v0, v4

    const/16 v4, 0x30

    const/16 v5, 0x3a

    .line 109
    invoke-static {v0, v4, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v4, 0x3d

    .line 110
    aput-byte v4, v0, v5

    const/16 v5, 0x3b

    .line 111
    aput-byte v3, v0, v5

    const/16 v5, 0x3c

    .line 112
    aput-byte v2, v0, v5

    .line 113
    aput-byte v3, v0, v4

    const/16 v4, 0x3e

    .line 114
    aput-byte v1, v0, v4

    const/16 v4, 0x3f

    const/16 v5, 0x41

    .line 115
    invoke-static {v0, v4, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v3, 0x5b

    const/4 v4, -0x3

    .line 116
    invoke-static {v0, v5, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x5d

    .line 117
    invoke-static {v0, v3, v5, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 118
    aput-byte v2, v0, v5

    const/16 v2, 0x5e

    .line 119
    aput-byte v1, v0, v2

    const/16 v2, 0x5f

    .line 120
    aput-byte v4, v0, v2

    const/16 v2, 0x60

    .line 121
    aput-byte v1, v0, v2

    const/16 v2, 0x61

    const/16 v3, 0x7b

    .line 122
    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb7

    .line 123
    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v3, -0x57

    .line 124
    aput-byte v3, v0, v2

    const/16 v2, 0xb8

    const/16 v4, 0xc0

    .line 125
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd7

    const/16 v5, -0x13

    .line 126
    invoke-static {v0, v4, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 127
    aput-byte v1, v0, v2

    const/16 v2, 0xd8

    const/16 v4, 0xf7

    .line 128
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 129
    aput-byte v1, v0, v4

    const/16 v2, 0xf8

    const/16 v4, 0x132

    .line 130
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x132

    const/16 v4, 0x134

    .line 131
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x134

    const/16 v4, 0x13f

    .line 132
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x13f

    const/16 v4, 0x141

    .line 133
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x141

    const/16 v4, 0x149

    .line 134
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x149

    .line 135
    aput-byte v1, v0, v2

    const/16 v2, 0x14a

    const/16 v4, 0x17f

    .line 136
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x17f

    .line 137
    aput-byte v1, v0, v2

    const/16 v2, 0x180

    const/16 v4, 0x1c4

    .line 138
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1c4

    const/16 v4, 0x1cd

    .line 139
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1cd

    const/16 v4, 0x1f1

    .line 140
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f1

    const/16 v4, 0x1f4

    .line 141
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f4

    const/16 v4, 0x1f6

    .line 142
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f6

    const/16 v4, 0x1fa

    .line 143
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fa

    const/16 v4, 0x218

    .line 144
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x218

    const/16 v4, 0x250

    .line 145
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x250

    const/16 v4, 0x2a9

    .line 146
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2a9

    const/16 v4, 0x2bb

    .line 147
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2bb

    const/16 v4, 0x2c2

    .line 148
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2c2

    const/16 v4, 0x2d0

    .line 149
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2d0

    const/16 v4, 0x2d2

    .line 150
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2d2

    const/16 v4, 0x300

    .line 151
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x300

    const/16 v4, 0x346

    .line 152
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x346

    const/16 v4, 0x360

    .line 153
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x360

    const/16 v4, 0x362

    .line 154
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x362

    const/16 v4, 0x386

    .line 155
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x386

    .line 156
    aput-byte v5, v0, v2

    const/16 v2, 0x387

    .line 157
    aput-byte v3, v0, v2

    const/16 v2, 0x388

    const/16 v4, 0x38b

    .line 158
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x38b

    .line 159
    aput-byte v1, v0, v2

    const/16 v2, 0x38c

    .line 160
    aput-byte v5, v0, v2

    const/16 v2, 0x38d

    .line 161
    aput-byte v1, v0, v2

    const/16 v2, 0x38e

    const/16 v4, 0x3a2

    .line 162
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3a2

    .line 163
    aput-byte v1, v0, v2

    const/16 v2, 0x3a3

    const/16 v4, 0x3cf

    .line 164
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3cf

    .line 165
    aput-byte v1, v0, v2

    const/16 v2, 0x3d0

    const/16 v4, 0x3d7

    .line 166
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3d7

    const/16 v4, 0x3da

    .line 167
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3da

    .line 168
    aput-byte v5, v0, v2

    const/16 v2, 0x3db

    .line 169
    aput-byte v1, v0, v2

    const/16 v2, 0x3dc

    .line 170
    aput-byte v5, v0, v2

    const/16 v2, 0x3dd

    .line 171
    aput-byte v1, v0, v2

    const/16 v2, 0x3de

    .line 172
    aput-byte v5, v0, v2

    const/16 v2, 0x3df

    .line 173
    aput-byte v1, v0, v2

    const/16 v2, 0x3e0

    .line 174
    aput-byte v5, v0, v2

    const/16 v2, 0x3e1

    .line 175
    aput-byte v1, v0, v2

    const/16 v2, 0x3e2

    const/16 v4, 0x3f4

    .line 176
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3f4

    const/16 v4, 0x401

    .line 177
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x401

    const/16 v4, 0x40d

    .line 178
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x40d

    .line 179
    aput-byte v1, v0, v2

    const/16 v2, 0x40e

    const/16 v4, 0x450

    .line 180
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x450

    .line 181
    aput-byte v1, v0, v2

    const/16 v2, 0x451

    const/16 v4, 0x45d

    .line 182
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x45d

    .line 183
    aput-byte v1, v0, v2

    const/16 v2, 0x45e

    const/16 v4, 0x482

    .line 184
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x482

    .line 185
    aput-byte v1, v0, v2

    const/16 v2, 0x483

    const/16 v4, 0x487

    .line 186
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x487

    const/16 v4, 0x490

    .line 187
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x490

    const/16 v4, 0x4c5

    .line 188
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4c5

    const/16 v4, 0x4c7

    .line 189
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4c7

    const/16 v4, 0x4c9

    .line 190
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4c9

    const/16 v4, 0x4cb

    .line 191
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4cb

    const/16 v4, 0x4cd

    .line 192
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4cd

    const/16 v4, 0x4d0

    .line 193
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4d0

    const/16 v4, 0x4ec

    .line 194
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4ec

    const/16 v4, 0x4ee

    .line 195
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4ee

    const/16 v4, 0x4f6

    .line 196
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4f6

    const/16 v4, 0x4f8

    .line 197
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4f8

    const/16 v4, 0x4fa

    .line 198
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4fa

    const/16 v4, 0x531

    .line 199
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x531

    const/16 v4, 0x557

    .line 200
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x557

    const/16 v4, 0x559

    .line 201
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x559

    .line 202
    aput-byte v5, v0, v2

    const/16 v2, 0x55a

    const/16 v4, 0x561

    .line 203
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x561

    const/16 v4, 0x587

    .line 204
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x587

    const/16 v4, 0x591

    .line 205
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x591

    const/16 v4, 0x5a2

    .line 206
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5a2

    .line 207
    aput-byte v1, v0, v2

    const/16 v2, 0x5a3

    const/16 v4, 0x5ba

    .line 208
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5ba

    .line 209
    aput-byte v1, v0, v2

    const/16 v2, 0x5bb

    const/16 v4, 0x5be

    .line 210
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5be

    .line 211
    aput-byte v1, v0, v2

    const/16 v2, 0x5bf

    .line 212
    aput-byte v3, v0, v2

    const/16 v2, 0x5c0

    .line 213
    aput-byte v1, v0, v2

    const/16 v2, 0x5c1

    const/16 v4, 0x5c3

    .line 214
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5c3

    .line 215
    aput-byte v1, v0, v2

    const/16 v2, 0x5c4

    .line 216
    aput-byte v3, v0, v2

    const/16 v2, 0x5c5

    const/16 v4, 0x5d0

    .line 217
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5d0

    const/16 v4, 0x5eb

    .line 218
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5eb

    const/16 v4, 0x5f0

    .line 219
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5f0

    const/16 v4, 0x5f3

    .line 220
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x5f3

    const/16 v4, 0x621

    .line 221
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x621

    const/16 v4, 0x63b

    .line 222
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x63b

    const/16 v4, 0x640

    .line 223
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x640

    .line 224
    aput-byte v3, v0, v2

    const/16 v2, 0x641

    const/16 v4, 0x64b

    .line 225
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x64b

    const/16 v4, 0x653

    .line 226
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x653

    const/16 v4, 0x660

    .line 227
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x660

    const/16 v4, 0x66a

    .line 228
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x66a

    const/16 v4, 0x670

    .line 229
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x670

    .line 230
    aput-byte v3, v0, v2

    const/16 v2, 0x671

    const/16 v4, 0x6b8

    .line 231
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6b8

    const/16 v4, 0x6ba

    .line 232
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6ba

    const/16 v4, 0x6bf

    .line 233
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6bf

    .line 234
    aput-byte v1, v0, v2

    const/16 v2, 0x6c0

    const/16 v4, 0x6cf

    .line 235
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6cf

    .line 236
    aput-byte v1, v0, v2

    const/16 v2, 0x6d0

    const/16 v4, 0x6d4

    .line 237
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6d4

    .line 238
    aput-byte v1, v0, v2

    const/16 v2, 0x6d5

    .line 239
    aput-byte v5, v0, v2

    const/16 v2, 0x6d6

    const/16 v4, 0x6e5

    .line 240
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6e5

    const/16 v4, 0x6e7

    .line 241
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6e7

    const/16 v4, 0x6e9

    .line 242
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6e9

    .line 243
    aput-byte v1, v0, v2

    const/16 v2, 0x6ea

    const/16 v4, 0x6ee

    .line 244
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6ee

    const/16 v4, 0x6f0

    .line 245
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6f0

    const/16 v4, 0x6fa

    .line 246
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x6fa

    const/16 v4, 0x901

    .line 247
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x901

    const/16 v4, 0x904

    .line 248
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x904

    .line 249
    aput-byte v1, v0, v2

    const/16 v2, 0x905

    const/16 v4, 0x93a

    .line 250
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x93a

    const/16 v4, 0x93c

    .line 251
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x93c

    .line 252
    aput-byte v3, v0, v2

    const/16 v2, 0x93d

    .line 253
    aput-byte v5, v0, v2

    const/16 v2, 0x93e

    const/16 v4, 0x94e

    .line 254
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x94e

    const/16 v4, 0x951

    .line 255
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x951

    const/16 v4, 0x955

    .line 256
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x955

    const/16 v4, 0x958

    .line 257
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x958

    const/16 v4, 0x962

    .line 258
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x962

    const/16 v4, 0x964

    .line 259
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x964

    const/16 v4, 0x966

    .line 260
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x966

    const/16 v4, 0x970

    .line 261
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x970

    const/16 v4, 0x981

    .line 262
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x981

    const/16 v4, 0x984

    .line 263
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x984

    .line 264
    aput-byte v1, v0, v2

    const/16 v2, 0x985

    const/16 v4, 0x98d

    .line 265
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x98d

    const/16 v4, 0x98f

    .line 266
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x98f

    const/16 v4, 0x991

    .line 267
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x991

    const/16 v4, 0x993

    .line 268
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x993

    const/16 v4, 0x9a9

    .line 269
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9a9

    .line 270
    aput-byte v1, v0, v2

    const/16 v2, 0x9aa

    const/16 v4, 0x9b1

    .line 271
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9b1

    .line 272
    aput-byte v1, v0, v2

    const/16 v2, 0x9b2

    .line 273
    aput-byte v5, v0, v2

    const/16 v2, 0x9b3

    const/16 v4, 0x9b6

    .line 274
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9b6

    const/16 v4, 0x9ba

    .line 275
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9ba

    const/16 v4, 0x9bc

    .line 276
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9bc

    .line 277
    aput-byte v3, v0, v2

    const/16 v2, 0x9bd

    .line 278
    aput-byte v1, v0, v2

    const/16 v2, 0x9be

    const/16 v4, 0x9c5

    .line 279
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9c5

    const/16 v4, 0x9c7

    .line 280
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9c7

    const/16 v4, 0x9c9

    .line 281
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9c9

    const/16 v4, 0x9cb

    .line 282
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9cb

    const/16 v4, 0x9ce

    .line 283
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9ce

    const/16 v4, 0x9d7

    .line 284
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9d7

    .line 285
    aput-byte v3, v0, v2

    const/16 v2, 0x9d8

    const/16 v4, 0x9dc

    .line 286
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9dc

    const/16 v4, 0x9de

    .line 287
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9de

    .line 288
    aput-byte v1, v0, v2

    const/16 v2, 0x9df

    const/16 v4, 0x9e2

    .line 289
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9e2

    const/16 v4, 0x9e4

    .line 290
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9e4

    const/16 v4, 0x9e6

    .line 291
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9e6

    const/16 v4, 0x9f0

    .line 292
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9f0

    const/16 v4, 0x9f2

    .line 293
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x9f2

    const/16 v4, 0xa02

    .line 294
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa02

    .line 295
    aput-byte v3, v0, v2

    const/16 v2, 0xa03

    const/16 v4, 0xa05

    .line 296
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa05

    const/16 v4, 0xa0b

    .line 297
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa0b

    const/16 v4, 0xa0f

    .line 298
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa0f

    const/16 v4, 0xa11

    .line 299
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa11

    const/16 v4, 0xa13

    .line 300
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa13

    const/16 v4, 0xa29

    .line 301
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa29

    .line 302
    aput-byte v1, v0, v2

    const/16 v2, 0xa2a

    const/16 v4, 0xa31

    .line 303
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa31

    .line 304
    aput-byte v1, v0, v2

    const/16 v2, 0xa32

    const/16 v4, 0xa34

    .line 305
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa34

    .line 306
    aput-byte v1, v0, v2

    const/16 v2, 0xa35

    const/16 v4, 0xa37

    .line 307
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa37

    .line 308
    aput-byte v1, v0, v2

    const/16 v2, 0xa38

    const/16 v4, 0xa3a

    .line 309
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa3a

    const/16 v4, 0xa3c

    .line 310
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa3c

    .line 311
    aput-byte v3, v0, v2

    const/16 v2, 0xa3d

    .line 312
    aput-byte v1, v0, v2

    const/16 v2, 0xa3e

    const/16 v4, 0xa43

    .line 313
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa43

    const/16 v4, 0xa47

    .line 314
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa47

    const/16 v4, 0xa49

    .line 315
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa49

    const/16 v4, 0xa4b

    .line 316
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa4b

    const/16 v4, 0xa4e

    .line 317
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa4e

    const/16 v4, 0xa59

    .line 318
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa59

    const/16 v4, 0xa5d

    .line 319
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa5d

    .line 320
    aput-byte v1, v0, v2

    const/16 v2, 0xa5e

    .line 321
    aput-byte v5, v0, v2

    const/16 v2, 0xa5f

    const/16 v4, 0xa66

    .line 322
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa66

    const/16 v4, 0xa72

    .line 323
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa72

    const/16 v4, 0xa75

    .line 324
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa75

    const/16 v4, 0xa81

    .line 325
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa81

    const/16 v4, 0xa84

    .line 326
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa84

    .line 327
    aput-byte v1, v0, v2

    const/16 v2, 0xa85

    const/16 v4, 0xa8c

    .line 328
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa8c

    .line 329
    aput-byte v1, v0, v2

    const/16 v2, 0xa8d

    .line 330
    aput-byte v5, v0, v2

    const/16 v2, 0xa8e

    .line 331
    aput-byte v1, v0, v2

    const/16 v2, 0xa8f

    const/16 v4, 0xa92

    .line 332
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xa92

    .line 333
    aput-byte v1, v0, v2

    const/16 v2, 0xa93

    const/16 v4, 0xaa9

    .line 334
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xaa9

    .line 335
    aput-byte v1, v0, v2

    const/16 v2, 0xaaa

    const/16 v4, 0xab1

    .line 336
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xab1

    .line 337
    aput-byte v1, v0, v2

    const/16 v2, 0xab2

    const/16 v4, 0xab4

    .line 338
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xab4

    .line 339
    aput-byte v1, v0, v2

    const/16 v2, 0xab5

    const/16 v4, 0xaba

    .line 340
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xaba

    const/16 v4, 0xabc

    .line 341
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xabc

    .line 342
    aput-byte v3, v0, v2

    const/16 v2, 0xabd

    .line 343
    aput-byte v5, v0, v2

    const/16 v2, 0xabe

    const/16 v4, 0xac6

    .line 344
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xac6

    .line 345
    aput-byte v1, v0, v2

    const/16 v2, 0xac7

    const/16 v4, 0xaca

    .line 346
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xaca

    .line 347
    aput-byte v1, v0, v2

    const/16 v2, 0xacb

    const/16 v4, 0xace

    .line 348
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xace

    const/16 v4, 0xae0

    .line 349
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xae0

    .line 350
    aput-byte v5, v0, v2

    const/16 v2, 0xae1

    const/16 v4, 0xae6

    .line 351
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xae6

    const/16 v4, 0xaf0

    .line 352
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xaf0

    const/16 v4, 0xb01

    .line 353
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb01

    const/16 v4, 0xb04

    .line 354
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb04

    .line 355
    aput-byte v1, v0, v2

    const/16 v2, 0xb05

    const/16 v4, 0xb0d

    .line 356
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb0d

    const/16 v4, 0xb0f

    .line 357
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb0f

    const/16 v4, 0xb11

    .line 358
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb11

    const/16 v4, 0xb13

    .line 359
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb13

    const/16 v4, 0xb29

    .line 360
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb29

    .line 361
    aput-byte v1, v0, v2

    const/16 v2, 0xb2a

    const/16 v4, 0xb31

    .line 362
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb31

    .line 363
    aput-byte v1, v0, v2

    const/16 v2, 0xb32

    const/16 v4, 0xb34

    .line 364
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb34

    const/16 v4, 0xb36

    .line 365
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb36

    const/16 v4, 0xb3a

    .line 366
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb3a

    const/16 v4, 0xb3c

    .line 367
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb3c

    .line 368
    aput-byte v3, v0, v2

    const/16 v2, 0xb3d

    .line 369
    aput-byte v5, v0, v2

    const/16 v2, 0xb3e

    const/16 v4, 0xb44

    .line 370
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb44

    const/16 v4, 0xb47

    .line 371
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb47

    const/16 v4, 0xb49

    .line 372
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb49

    const/16 v4, 0xb4b

    .line 373
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb4b

    const/16 v4, 0xb4e

    .line 374
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb4e

    const/16 v4, 0xb56

    .line 375
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb56

    const/16 v4, 0xb58

    .line 376
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb58

    const/16 v4, 0xb5c

    .line 377
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb5c

    const/16 v4, 0xb5e

    .line 378
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb5e

    .line 379
    aput-byte v1, v0, v2

    const/16 v2, 0xb5f

    const/16 v4, 0xb62

    .line 380
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb62

    const/16 v4, 0xb66

    .line 381
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb66

    const/16 v4, 0xb70

    .line 382
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb70

    const/16 v4, 0xb82

    .line 383
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb82

    const/16 v4, 0xb84

    .line 384
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb84

    .line 385
    aput-byte v1, v0, v2

    const/16 v2, 0xb85

    const/16 v4, 0xb8b

    .line 386
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb8b

    const/16 v4, 0xb8e

    .line 387
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb8e

    const/16 v4, 0xb91

    .line 388
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb91

    .line 389
    aput-byte v1, v0, v2

    const/16 v2, 0xb92

    const/16 v4, 0xb96

    .line 390
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb96

    const/16 v4, 0xb99

    .line 391
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb99

    const/16 v4, 0xb9b

    .line 392
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xb9b

    .line 393
    aput-byte v1, v0, v2

    const/16 v2, 0xb9c

    .line 394
    aput-byte v5, v0, v2

    const/16 v2, 0xb9d

    .line 395
    aput-byte v1, v0, v2

    const/16 v2, 0xb9e

    const/16 v4, 0xba0

    .line 396
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xba0

    const/16 v4, 0xba3

    .line 397
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xba3

    const/16 v4, 0xba5

    .line 398
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xba5

    const/16 v4, 0xba8

    .line 399
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xba8

    const/16 v4, 0xbab

    .line 400
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbab

    const/16 v4, 0xbae

    .line 401
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbae

    const/16 v4, 0xbb6

    .line 402
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbb6

    .line 403
    aput-byte v1, v0, v2

    const/16 v2, 0xbb7

    const/16 v4, 0xbba

    .line 404
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbba

    const/16 v4, 0xbbe

    .line 405
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbbe

    const/16 v4, 0xbc3

    .line 406
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbc3

    const/16 v4, 0xbc6

    .line 407
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbc6

    const/16 v4, 0xbc9

    .line 408
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbc9

    .line 409
    aput-byte v1, v0, v2

    const/16 v2, 0xbca

    const/16 v4, 0xbce

    .line 410
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbce

    const/16 v4, 0xbd7

    .line 411
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbd7

    .line 412
    aput-byte v3, v0, v2

    const/16 v2, 0xbd8

    const/16 v4, 0xbe7

    .line 413
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbe7

    const/16 v4, 0xbf0

    .line 414
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xbf0

    const/16 v4, 0xc01

    .line 415
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc01

    const/16 v4, 0xc04

    .line 416
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc04

    .line 417
    aput-byte v1, v0, v2

    const/16 v2, 0xc05

    const/16 v4, 0xc0d

    .line 418
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc0d

    .line 419
    aput-byte v1, v0, v2

    const/16 v2, 0xc0e

    const/16 v4, 0xc11

    .line 420
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc11

    .line 421
    aput-byte v1, v0, v2

    const/16 v2, 0xc12

    const/16 v4, 0xc29

    .line 422
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc29

    .line 423
    aput-byte v1, v0, v2

    const/16 v2, 0xc2a

    const/16 v4, 0xc34

    .line 424
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc34

    .line 425
    aput-byte v1, v0, v2

    const/16 v2, 0xc35

    const/16 v4, 0xc3a

    .line 426
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc3a

    const/16 v4, 0xc3e

    .line 427
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc3e

    const/16 v4, 0xc45

    .line 428
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc45

    .line 429
    aput-byte v1, v0, v2

    const/16 v2, 0xc46

    const/16 v4, 0xc49

    .line 430
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc49

    .line 431
    aput-byte v1, v0, v2

    const/16 v2, 0xc4a

    const/16 v4, 0xc4e

    .line 432
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc4e

    const/16 v4, 0xc55

    .line 433
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc55

    const/16 v4, 0xc57

    .line 434
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc57

    const/16 v4, 0xc60

    .line 435
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc60

    const/16 v4, 0xc62

    .line 436
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc62

    const/16 v4, 0xc66

    .line 437
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc66

    const/16 v4, 0xc70

    .line 438
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc70

    const/16 v4, 0xc82

    .line 439
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc82

    const/16 v4, 0xc84

    .line 440
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc84

    .line 441
    aput-byte v1, v0, v2

    const/16 v2, 0xc85

    const/16 v4, 0xc8d

    .line 442
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc8d

    .line 443
    aput-byte v1, v0, v2

    const/16 v2, 0xc8e

    const/16 v4, 0xc91

    .line 444
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xc91

    .line 445
    aput-byte v1, v0, v2

    const/16 v2, 0xc92

    const/16 v4, 0xca9

    .line 446
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xca9

    .line 447
    aput-byte v1, v0, v2

    const/16 v2, 0xcaa

    const/16 v4, 0xcb4

    .line 448
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcb4

    .line 449
    aput-byte v1, v0, v2

    const/16 v2, 0xcb5

    const/16 v4, 0xcba

    .line 450
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcba

    const/16 v4, 0xcbe

    .line 451
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcbe

    const/16 v4, 0xcc5

    .line 452
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcc5

    .line 453
    aput-byte v1, v0, v2

    const/16 v2, 0xcc6

    const/16 v4, 0xcc9

    .line 454
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcc9

    .line 455
    aput-byte v1, v0, v2

    const/16 v2, 0xcca

    const/16 v4, 0xcce

    .line 456
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcce

    const/16 v4, 0xcd5

    .line 457
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcd5

    const/16 v4, 0xcd7

    .line 458
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcd7

    const/16 v4, 0xcde

    .line 459
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcde

    .line 460
    aput-byte v5, v0, v2

    const/16 v2, 0xcdf

    .line 461
    aput-byte v1, v0, v2

    const/16 v2, 0xce0

    const/16 v4, 0xce2

    .line 462
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xce2

    const/16 v4, 0xce6

    .line 463
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xce6

    const/16 v4, 0xcf0

    .line 464
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xcf0

    const/16 v4, 0xd02

    .line 465
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd02

    const/16 v4, 0xd04

    .line 466
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd04

    .line 467
    aput-byte v1, v0, v2

    const/16 v2, 0xd05

    const/16 v4, 0xd0d

    .line 468
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd0d

    .line 469
    aput-byte v1, v0, v2

    const/16 v2, 0xd0e

    const/16 v4, 0xd11

    .line 470
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd11

    .line 471
    aput-byte v1, v0, v2

    const/16 v2, 0xd12

    const/16 v4, 0xd29

    .line 472
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd29

    .line 473
    aput-byte v1, v0, v2

    const/16 v2, 0xd2a

    const/16 v4, 0xd3a

    .line 474
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd3a

    const/16 v4, 0xd3e

    .line 475
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd3e

    const/16 v4, 0xd44

    .line 476
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd44

    const/16 v4, 0xd46

    .line 477
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd46

    const/16 v4, 0xd49

    .line 478
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd49

    .line 479
    aput-byte v1, v0, v2

    const/16 v2, 0xd4a

    const/16 v4, 0xd4e

    .line 480
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd4e

    const/16 v4, 0xd57

    .line 481
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd57

    .line 482
    aput-byte v3, v0, v2

    const/16 v2, 0xd58

    const/16 v4, 0xd60

    .line 483
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd60

    const/16 v4, 0xd62

    .line 484
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd62

    const/16 v4, 0xd66

    .line 485
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd66

    const/16 v4, 0xd70

    .line 486
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xd70

    const/16 v4, 0xe01

    .line 487
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe01

    const/16 v4, 0xe2f

    .line 488
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe2f

    .line 489
    aput-byte v1, v0, v2

    const/16 v2, 0xe30

    .line 490
    aput-byte v5, v0, v2

    const/16 v2, 0xe31

    .line 491
    aput-byte v3, v0, v2

    const/16 v2, 0xe32

    const/16 v4, 0xe34

    .line 492
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe34

    const/16 v4, 0xe3b

    .line 493
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe3b

    const/16 v4, 0xe40

    .line 494
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe40

    const/16 v4, 0xe46

    .line 495
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe46

    const/16 v4, 0xe4f

    .line 496
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe4f

    .line 497
    aput-byte v1, v0, v2

    const/16 v2, 0xe50

    const/16 v4, 0xe5a

    .line 498
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe5a

    const/16 v4, 0xe81

    .line 499
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe81

    const/16 v4, 0xe83

    .line 500
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe83

    .line 501
    aput-byte v1, v0, v2

    const/16 v2, 0xe84

    .line 502
    aput-byte v5, v0, v2

    const/16 v2, 0xe85

    const/16 v4, 0xe87

    .line 503
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe87

    const/16 v4, 0xe89

    .line 504
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe89

    .line 505
    aput-byte v1, v0, v2

    const/16 v2, 0xe8a

    .line 506
    aput-byte v5, v0, v2

    const/16 v2, 0xe8b

    const/16 v4, 0xe8d

    .line 507
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe8d

    .line 508
    aput-byte v5, v0, v2

    const/16 v2, 0xe8e

    const/16 v4, 0xe94

    .line 509
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe94

    const/16 v4, 0xe98

    .line 510
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xe98

    .line 511
    aput-byte v1, v0, v2

    const/16 v2, 0xe99

    const/16 v4, 0xea0

    .line 512
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xea0

    .line 513
    aput-byte v1, v0, v2

    const/16 v2, 0xea1

    const/16 v4, 0xea4

    .line 514
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xea4

    .line 515
    aput-byte v1, v0, v2

    const/16 v2, 0xea5

    .line 516
    aput-byte v5, v0, v2

    const/16 v2, 0xea6

    .line 517
    aput-byte v1, v0, v2

    const/16 v2, 0xea7

    .line 518
    aput-byte v5, v0, v2

    const/16 v2, 0xea8

    const/16 v4, 0xeaa

    .line 519
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeaa

    const/16 v4, 0xeac

    .line 520
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeac

    .line 521
    aput-byte v1, v0, v2

    const/16 v2, 0xead

    const/16 v4, 0xeaf

    .line 522
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeaf

    .line 523
    aput-byte v1, v0, v2

    const/16 v2, 0xeb0

    .line 524
    aput-byte v5, v0, v2

    const/16 v2, 0xeb1

    .line 525
    aput-byte v3, v0, v2

    const/16 v2, 0xeb2

    const/16 v4, 0xeb4

    .line 526
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeb4

    const/16 v4, 0xeba

    .line 527
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeba

    .line 528
    aput-byte v1, v0, v2

    const/16 v2, 0xebb

    const/16 v4, 0xebd

    .line 529
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xebd

    .line 530
    aput-byte v5, v0, v2

    const/16 v2, 0xebe

    const/16 v4, 0xec0

    .line 531
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xec0

    const/16 v4, 0xec5

    .line 532
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xec5

    .line 533
    aput-byte v1, v0, v2

    const/16 v2, 0xec6

    .line 534
    aput-byte v3, v0, v2

    const/16 v2, 0xec7

    .line 535
    aput-byte v1, v0, v2

    const/16 v2, 0xec8

    const/16 v4, 0xece

    .line 536
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xece

    const/16 v4, 0xed0

    .line 537
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xed0

    const/16 v4, 0xeda

    .line 538
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xeda

    const/16 v4, 0xf18

    .line 539
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf18

    const/16 v4, 0xf1a

    .line 540
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf1a

    const/16 v4, 0xf20

    .line 541
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf20

    const/16 v4, 0xf2a

    .line 542
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf2a

    const/16 v4, 0xf35

    .line 543
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf35

    .line 544
    aput-byte v3, v0, v2

    const/16 v2, 0xf36

    .line 545
    aput-byte v1, v0, v2

    const/16 v2, 0xf37

    .line 546
    aput-byte v3, v0, v2

    const/16 v2, 0xf38

    .line 547
    aput-byte v1, v0, v2

    const/16 v2, 0xf39

    .line 548
    aput-byte v3, v0, v2

    const/16 v2, 0xf3a

    const/16 v4, 0xf3e

    .line 549
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf3e

    const/16 v4, 0xf40

    .line 550
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf40

    const/16 v4, 0xf48

    .line 551
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf48

    .line 552
    aput-byte v1, v0, v2

    const/16 v2, 0xf49

    const/16 v4, 0xf6a

    .line 553
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf6a

    const/16 v4, 0xf71

    .line 554
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf71

    const/16 v4, 0xf85

    .line 555
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf85

    .line 556
    aput-byte v1, v0, v2

    const/16 v2, 0xf86

    const/16 v4, 0xf8c

    .line 557
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf8c

    const/16 v4, 0xf90

    .line 558
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf90

    const/16 v4, 0xf96

    .line 559
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xf96

    .line 560
    aput-byte v1, v0, v2

    const/16 v2, 0xf97

    .line 561
    aput-byte v3, v0, v2

    const/16 v2, 0xf98

    .line 562
    aput-byte v1, v0, v2

    const/16 v2, 0xf99

    const/16 v4, 0xfae

    .line 563
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xfae

    const/16 v4, 0xfb1

    .line 564
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xfb1

    const/16 v4, 0xfb8

    .line 565
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0xfb8

    .line 566
    aput-byte v1, v0, v2

    const/16 v2, 0xfb9

    .line 567
    aput-byte v3, v0, v2

    const/16 v2, 0xfba

    const/16 v4, 0x10a0

    .line 568
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x10a0

    const/16 v4, 0x10c6

    .line 569
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x10c6

    const/16 v4, 0x10d0

    .line 570
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x10d0

    const/16 v4, 0x10f7

    .line 571
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x10f7

    const/16 v4, 0x1100

    .line 572
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1100

    .line 573
    aput-byte v5, v0, v2

    const/16 v2, 0x1101

    .line 574
    aput-byte v1, v0, v2

    const/16 v2, 0x1102

    const/16 v4, 0x1104

    .line 575
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1104

    .line 576
    aput-byte v1, v0, v2

    const/16 v2, 0x1105

    const/16 v4, 0x1108

    .line 577
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1108

    .line 578
    aput-byte v1, v0, v2

    const/16 v2, 0x1109

    .line 579
    aput-byte v5, v0, v2

    const/16 v2, 0x110a

    .line 580
    aput-byte v1, v0, v2

    const/16 v2, 0x110b

    const/16 v4, 0x110d

    .line 581
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x110d

    .line 582
    aput-byte v1, v0, v2

    const/16 v2, 0x110e

    const/16 v4, 0x1113

    .line 583
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1113

    const/16 v4, 0x113c

    .line 584
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x113c

    .line 585
    aput-byte v5, v0, v2

    const/16 v2, 0x113d

    .line 586
    aput-byte v1, v0, v2

    const/16 v2, 0x113e

    .line 587
    aput-byte v5, v0, v2

    const/16 v2, 0x113f

    .line 588
    aput-byte v1, v0, v2

    const/16 v2, 0x1140

    .line 589
    aput-byte v5, v0, v2

    const/16 v2, 0x1141

    const/16 v4, 0x114c

    .line 590
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x114c

    .line 591
    aput-byte v5, v0, v2

    const/16 v2, 0x114d

    .line 592
    aput-byte v1, v0, v2

    const/16 v2, 0x114e

    .line 593
    aput-byte v5, v0, v2

    const/16 v2, 0x114f

    .line 594
    aput-byte v1, v0, v2

    const/16 v2, 0x1150

    .line 595
    aput-byte v5, v0, v2

    const/16 v2, 0x1151

    const/16 v4, 0x1154

    .line 596
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1154

    const/16 v4, 0x1156

    .line 597
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1156

    const/16 v4, 0x1159

    .line 598
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1159

    .line 599
    aput-byte v5, v0, v2

    const/16 v2, 0x115a

    const/16 v4, 0x115f

    .line 600
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x115f

    const/16 v4, 0x1162

    .line 601
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1162

    .line 602
    aput-byte v1, v0, v2

    const/16 v2, 0x1163

    .line 603
    aput-byte v5, v0, v2

    const/16 v2, 0x1164

    .line 604
    aput-byte v1, v0, v2

    const/16 v2, 0x1165

    .line 605
    aput-byte v5, v0, v2

    const/16 v2, 0x1166

    .line 606
    aput-byte v1, v0, v2

    const/16 v2, 0x1167

    .line 607
    aput-byte v5, v0, v2

    const/16 v2, 0x1168

    .line 608
    aput-byte v1, v0, v2

    const/16 v2, 0x1169

    .line 609
    aput-byte v5, v0, v2

    const/16 v2, 0x116a

    const/16 v4, 0x116d

    .line 610
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x116d

    const/16 v4, 0x116f

    .line 611
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x116f

    const/16 v4, 0x1172

    .line 612
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1172

    const/16 v4, 0x1174

    .line 613
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1174

    .line 614
    aput-byte v1, v0, v2

    const/16 v2, 0x1175

    .line 615
    aput-byte v5, v0, v2

    const/16 v2, 0x1176

    const/16 v4, 0x119e

    .line 616
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x119e

    .line 617
    aput-byte v5, v0, v2

    const/16 v2, 0x119f

    const/16 v4, 0x11a8

    .line 618
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11a8

    .line 619
    aput-byte v5, v0, v2

    const/16 v2, 0x11a9

    const/16 v4, 0x11ab

    .line 620
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11ab

    .line 621
    aput-byte v5, v0, v2

    const/16 v2, 0x11ac

    const/16 v4, 0x11ae

    .line 622
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11ae

    const/16 v4, 0x11b0

    .line 623
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11b0

    const/16 v4, 0x11b7

    .line 624
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11b7

    const/16 v4, 0x11b9

    .line 625
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11b9

    .line 626
    aput-byte v1, v0, v2

    const/16 v2, 0x11ba

    .line 627
    aput-byte v5, v0, v2

    const/16 v2, 0x11bb

    .line 628
    aput-byte v1, v0, v2

    const/16 v2, 0x11bc

    const/16 v4, 0x11c3

    .line 629
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11c3

    const/16 v4, 0x11eb

    .line 630
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11eb

    .line 631
    aput-byte v5, v0, v2

    const/16 v2, 0x11ec

    const/16 v4, 0x11f0

    .line 632
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11f0

    .line 633
    aput-byte v5, v0, v2

    const/16 v2, 0x11f1

    const/16 v4, 0x11f9

    .line 634
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x11f9

    .line 635
    aput-byte v5, v0, v2

    const/16 v2, 0x11fa

    const/16 v4, 0x1e00

    .line 636
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1e00

    const/16 v4, 0x1e9c

    .line 637
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1e9c

    const/16 v4, 0x1ea0

    .line 638
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1ea0

    const/16 v4, 0x1efa

    .line 639
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1efa

    const/16 v4, 0x1f00

    .line 640
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f00

    const/16 v4, 0x1f16

    .line 641
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f16

    const/16 v4, 0x1f18

    .line 642
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f18

    const/16 v4, 0x1f1e

    .line 643
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f1e

    const/16 v4, 0x1f20

    .line 644
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f20

    const/16 v4, 0x1f46

    .line 645
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f46

    const/16 v4, 0x1f48

    .line 646
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f48

    const/16 v4, 0x1f4e

    .line 647
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f4e

    const/16 v4, 0x1f50

    .line 648
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f50

    const/16 v4, 0x1f58

    .line 649
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f58

    .line 650
    aput-byte v1, v0, v2

    const/16 v2, 0x1f59

    .line 651
    aput-byte v5, v0, v2

    const/16 v2, 0x1f5a

    .line 652
    aput-byte v1, v0, v2

    const/16 v2, 0x1f5b

    .line 653
    aput-byte v5, v0, v2

    const/16 v2, 0x1f5c

    .line 654
    aput-byte v1, v0, v2

    const/16 v2, 0x1f5d

    .line 655
    aput-byte v5, v0, v2

    const/16 v2, 0x1f5e

    .line 656
    aput-byte v1, v0, v2

    const/16 v2, 0x1f5f

    const/16 v4, 0x1f7e

    .line 657
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f7e

    const/16 v4, 0x1f80

    .line 658
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1f80

    const/16 v4, 0x1fb5

    .line 659
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fb5

    .line 660
    aput-byte v1, v0, v2

    const/16 v2, 0x1fb6

    const/16 v4, 0x1fbd

    .line 661
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fbd

    .line 662
    aput-byte v1, v0, v2

    const/16 v2, 0x1fbe

    .line 663
    aput-byte v5, v0, v2

    const/16 v2, 0x1fbf

    const/16 v4, 0x1fc2

    .line 664
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fc2

    const/16 v4, 0x1fc5

    .line 665
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fc5

    .line 666
    aput-byte v1, v0, v2

    const/16 v2, 0x1fc6

    const/16 v4, 0x1fcd

    .line 667
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fcd

    const/16 v4, 0x1fd0

    .line 668
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fd0

    const/16 v4, 0x1fd4

    .line 669
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fd4

    const/16 v4, 0x1fd6

    .line 670
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fd6

    const/16 v4, 0x1fdc

    .line 671
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fdc

    const/16 v4, 0x1fe0

    .line 672
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fe0

    const/16 v4, 0x1fed

    .line 673
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1fed

    const/16 v4, 0x1ff2

    .line 674
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1ff2

    const/16 v4, 0x1ff5

    .line 675
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1ff5

    .line 676
    aput-byte v1, v0, v2

    const/16 v2, 0x1ff6

    const/16 v4, 0x1ffd

    .line 677
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x1ffd

    const/16 v4, 0x20d0

    .line 678
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x20d0

    const/16 v4, 0x20dd

    .line 679
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x20dd

    const/16 v4, 0x20e1

    .line 680
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x20e1

    .line 681
    aput-byte v3, v0, v2

    const/16 v2, 0x20e2

    const/16 v4, 0x2126

    .line 682
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2126

    .line 683
    aput-byte v5, v0, v2

    const/16 v2, 0x2127

    const/16 v4, 0x212a

    .line 684
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x212a

    const/16 v4, 0x212c

    .line 685
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x212c

    const/16 v4, 0x212e

    .line 686
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x212e

    .line 687
    aput-byte v5, v0, v2

    const/16 v2, 0x212f

    const/16 v4, 0x2180

    .line 688
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2180

    const/16 v4, 0x2183

    .line 689
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x2183

    const/16 v4, 0x3005

    .line 690
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3005

    .line 691
    aput-byte v3, v0, v2

    const/16 v2, 0x3006

    .line 692
    aput-byte v1, v0, v2

    const/16 v2, 0x3007

    .line 693
    aput-byte v5, v0, v2

    const/16 v2, 0x3008

    const/16 v4, 0x3021

    .line 694
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3021

    const/16 v4, 0x302a

    .line 695
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x302a

    const/16 v4, 0x3030

    .line 696
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3030

    .line 697
    aput-byte v1, v0, v2

    const/16 v2, 0x3031

    const/16 v4, 0x3036

    .line 698
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3036

    const/16 v4, 0x3041

    .line 699
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3041

    const/16 v4, 0x3095

    .line 700
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3095

    const/16 v4, 0x3099

    .line 701
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3099

    const/16 v4, 0x309b

    .line 702
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x309b

    const/16 v4, 0x309d

    .line 703
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x309d

    const/16 v4, 0x309f

    .line 704
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x309f

    const/16 v4, 0x30a1

    .line 705
    invoke-static {v0, v2, v4, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x30a1

    const/16 v4, 0x30fb

    .line 706
    invoke-static {v0, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x30fb

    .line 707
    aput-byte v1, v0, v2

    const/16 v2, 0x30fc

    const/16 v4, 0x30ff

    .line 708
    invoke-static {v0, v2, v4, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x30ff

    const/16 v3, 0x3105

    .line 709
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x3105

    const/16 v3, 0x312d

    .line 710
    invoke-static {v0, v2, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x312d

    const/16 v3, 0x4e00

    .line 711
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v2, 0x4e00

    const v3, 0x9fa6

    .line 712
    invoke-static {v0, v2, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const v2, 0x9fa6

    const v3, 0xac00

    .line 713
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const v2, 0xac00

    const v3, 0xd7a4

    .line 714
    invoke-static {v0, v2, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    const v2, 0xd7a4

    const v3, 0xd800

    .line 715
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const v2, 0xe000

    const v3, 0xfffe

    .line 716
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist highSurrogate(I)C
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0xa

    const v0, 0xd800

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static greylist isContent(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 811
    sget-object v1, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    :cond_c
    if-gt v0, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isHighSurrogate(I)Z
    .registers 2

    .line 0
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isInvalid(I)Z
    .registers 1

    .line 802
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isValid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static greylist isLowSurrogate(I)Z
    .registers 2

    .line 0
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isMarkup(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_f

    const/16 v0, 0x26

    if-eq p0, v0, :cond_f

    const/16 v0, 0x25

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isNCName(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 876
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isNCNameStart(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 865
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isName(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 854
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isNameStart(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 843
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isPubid(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 887
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isSpace(I)Z
    .registers 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_e

    .line 832
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isSupplemental(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isValid(I)Z
    .registers 4

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_c

    .line 792
    sget-object v2, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v2, v2, p0

    and-int/2addr v2, v0

    if-nez v2, :cond_13

    :cond_c
    if-gt v1, p0, :cond_14

    const v1, 0x10ffff

    if-gt p0, v1, :cond_14

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isValidIANAEncoding(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    .line 980
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 982
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v2, v6, :cond_19

    if-le v2, v5, :cond_1d

    :cond_19
    if-lt v2, v4, :cond_46

    if-gt v2, v3, :cond_46

    :cond_1d
    const/4 v2, 0x1

    move v7, v2

    :goto_1f
    if-ge v7, v1, :cond_45

    .line 985
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_29

    if-le v8, v5, :cond_42

    :cond_29
    if-lt v8, v4, :cond_2d

    if-le v8, v3, :cond_42

    :cond_2d
    const/16 v9, 0x30

    if-lt v8, v9, :cond_35

    const/16 v9, 0x39

    if-le v8, v9, :cond_42

    :cond_35
    const/16 v9, 0x2e

    if-eq v8, v9, :cond_42

    const/16 v9, 0x5f

    if-eq v8, v9, :cond_42

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_42

    return v0

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_45
    return v2

    :cond_46
    return v0
.end method

.method public static greylist isValidJavaEncoding(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 1009
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    const/4 v2, 0x1

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_39

    .line 1012
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_19

    const/16 v5, 0x5a

    if-le v4, v5, :cond_36

    :cond_19
    const/16 v5, 0x61

    if-lt v4, v5, :cond_21

    const/16 v5, 0x7a

    if-le v4, v5, :cond_36

    :cond_21
    const/16 v5, 0x30

    if-lt v4, v5, :cond_29

    const/16 v5, 0x39

    if-le v4, v5, :cond_36

    :cond_29
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_36

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_36

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_36

    return v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_39
    return v2

    :cond_3a
    return v0
.end method

.method public static greylist isValidNCName(Ljava/lang/String;)Z
    .registers 5

    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 930
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 931
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCNameStart(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    move v2, v0

    .line 933
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 934
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 935
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCName(I)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    return v0
.end method

.method public static greylist isValidName(Ljava/lang/String;)Z
    .registers 5

    .line 901
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 903
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    move v2, v0

    .line 906
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 907
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 908
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    return v0
.end method

.method public static greylist isValidNmtoken(Ljava/lang/String;)Z
    .registers 4

    .line 953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    .line 955
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 956
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 957
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist lowSurrogate(I)C
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static greylist supplemental(CC)I
    .registers 3

    .line 0
    const v0, 0xd800

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x400

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method
