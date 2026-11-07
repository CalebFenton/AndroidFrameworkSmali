.class public Landroid/filterpacks/imageproc/AutoFixFilter;
.super Landroid/filterfw/core/Filter;
.source "AutoFixFilter.java"


# static fields
.field private static final blacklist normal_cdf:[I


# instance fields
.field private final blacklist mAutoFixShader:Ljava/lang/String;

.field private blacklist mDensityFrame:Landroid/filterfw/core/Frame;

.field private blacklist mHeight:I

.field private blacklist mHistFrame:Landroid/filterfw/core/Frame;

.field private blacklist mNativeProgram:Landroid/filterfw/core/Program;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "scale"
    .end annotation
.end field

.field private blacklist mShaderProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const/16 v0, 0x400

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    return-void

    :array_a
    .array-data 4
        0x9
        0x21
        0x32
        0x40
        0x4b
        0x54
        0x5c
        0x63
        0x6a
        0x70
        0x75
        0x7a
        0x7e
        0x82
        0x86
        0x8a
        0x8e
        0x91
        0x94
        0x96
        0x9a
        0x9d
        0x9f
        0xa2
        0xa4
        0xa6
        0xa9
        0xaa
        0xad
        0xaf
        0xb1
        0xb3
        0xb4
        0xb6
        0xb8
        0xba
        0xbc
        0xbd
        0xbe
        0xc0
        0xc2
        0xc3
        0xc5
        0xc6
        0xc7
        0xc8
        0xca
        0xcb
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf2
        0xf2
        0xf3
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfc
        0xfd
        0xfd
        0xfe
        0xff
        0xff
        0x100
        0x100
        0x101
        0x102
        0x102
        0x103
        0x103
        0x103
        0x104
        0x105
        0x106
        0x106
        0x107
        0x107
        0x108
        0x108
        0x109
        0x109
        0x10a
        0x10b
        0x10b
        0x10c
        0x10c
        0x10d
        0x10d
        0x10d
        0x10e
        0x10e
        0x10f
        0x110
        0x110
        0x111
        0x111
        0x112
        0x112
        0x113
        0x113
        0x114
        0x114
        0x115
        0x115
        0x115
        0x116
        0x116
        0x117
        0x117
        0x117
        0x118
        0x118
        0x119
        0x11a
        0x11a
        0x11a
        0x11b
        0x11b
        0x11c
        0x11c
        0x11d
        0x11d
        0x11d
        0x11e
        0x11e
        0x11f
        0x11f
        0x120
        0x120
        0x120
        0x121
        0x121
        0x121
        0x122
        0x122
        0x122
        0x123
        0x124
        0x124
        0x124
        0x125
        0x125
        0x126
        0x126
        0x126
        0x127
        0x127
        0x128
        0x128
        0x128
        0x129
        0x129
        0x129
        0x12a
        0x12a
        0x12a
        0x12b
        0x12b
        0x12b
        0x12b
        0x12c
        0x12c
        0x12d
        0x12d
        0x12e
        0x12e
        0x12e
        0x12f
        0x12f
        0x130
        0x130
        0x130
        0x131
        0x131
        0x131
        0x132
        0x132
        0x132
        0x133
        0x133
        0x133
        0x134
        0x134
        0x134
        0x135
        0x135
        0x135
        0x135
        0x136
        0x136
        0x136
        0x136
        0x137
        0x138
        0x138
        0x138
        0x139
        0x139
        0x139
        0x13a
        0x13a
        0x13a
        0x13b
        0x13b
        0x13b
        0x13b
        0x13c
        0x13c
        0x13c
        0x13d
        0x13d
        0x13d
        0x13e
        0x13e
        0x13e
        0x13f
        0x13f
        0x13f
        0x13f
        0x13f
        0x140
        0x140
        0x140
        0x141
        0x141
        0x142
        0x142
        0x142
        0x143
        0x143
        0x143
        0x143
        0x144
        0x144
        0x144
        0x145
        0x145
        0x145
        0x145
        0x146
        0x146
        0x146
        0x147
        0x147
        0x147
        0x147
        0x148
        0x148
        0x148
        0x149
        0x149
        0x149
        0x149
        0x149
        0x14a
        0x14a
        0x14a
        0x14a
        0x14b
        0x14b
        0x14c
        0x14c
        0x14c
        0x14d
        0x14d
        0x14d
        0x14d
        0x14e
        0x14e
        0x14e
        0x14e
        0x14f
        0x14f
        0x14f
        0x150
        0x150
        0x150
        0x150
        0x151
        0x151
        0x151
        0x151
        0x152
        0x152
        0x152
        0x153
        0x153
        0x153
        0x153
        0x153
        0x153
        0x154
        0x154
        0x154
        0x154
        0x155
        0x155
        0x156
        0x156
        0x156
        0x156
        0x157
        0x157
        0x157
        0x158
        0x158
        0x158
        0x158
        0x159
        0x159
        0x159
        0x159
        0x15a
        0x15a
        0x15a
        0x15a
        0x15b
        0x15b
        0x15b
        0x15b
        0x15c
        0x15c
        0x15c
        0x15c
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15e
        0x15e
        0x15e
        0x15e
        0x15f
        0x15f
        0x160
        0x160
        0x160
        0x160
        0x161
        0x161
        0x161
        0x161
        0x162
        0x162
        0x162
        0x162
        0x163
        0x163
        0x163
        0x163
        0x164
        0x164
        0x164
        0x164
        0x165
        0x165
        0x165
        0x165
        0x166
        0x166
        0x166
        0x166
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x168
        0x168
        0x168
        0x168
        0x169
        0x169
        0x16a
        0x16a
        0x16a
        0x16a
        0x16b
        0x16b
        0x16b
        0x16b
        0x16c
        0x16c
        0x16c
        0x16c
        0x16d
        0x16d
        0x16d
        0x16d
        0x16e
        0x16e
        0x16e
        0x16e
        0x16e
        0x16f
        0x16f
        0x16f
        0x16f
        0x170
        0x170
        0x170
        0x170
        0x171
        0x171
        0x171
        0x171
        0x171
        0x171
        0x172
        0x172
        0x172
        0x172
        0x172
        0x173
        0x173
        0x174
        0x174
        0x174
        0x174
        0x175
        0x175
        0x175
        0x175
        0x176
        0x176
        0x176
        0x176
        0x176
        0x177
        0x177
        0x177
        0x177
        0x178
        0x178
        0x178
        0x178
        0x179
        0x179
        0x179
        0x179
        0x17a
        0x17a
        0x17a
        0x17a
        0x17a
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17c
        0x17c
        0x17c
        0x17c
        0x17d
        0x17d
        0x17d
        0x17e
        0x17e
        0x17e
        0x17e
        0x17f
        0x17f
        0x17f
        0x17f
        0x180
        0x180
        0x180
        0x180
        0x181
        0x181
        0x181
        0x181
        0x181
        0x182
        0x182
        0x182
        0x182
        0x183
        0x183
        0x183
        0x183
        0x184
        0x184
        0x184
        0x184
        0x184
        0x185
        0x185
        0x185
        0x185
        0x185
        0x185
        0x186
        0x186
        0x186
        0x186
        0x187
        0x187
        0x188
        0x188
        0x188
        0x188
        0x188
        0x189
        0x189
        0x189
        0x189
        0x18a
        0x18a
        0x18a
        0x18a
        0x18b
        0x18b
        0x18b
        0x18b
        0x18c
        0x18c
        0x18c
        0x18c
        0x18c
        0x18d
        0x18d
        0x18d
        0x18d
        0x18e
        0x18e
        0x18e
        0x18e
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x190
        0x190
        0x190
        0x190
        0x190
        0x191
        0x191
        0x192
        0x192
        0x192
        0x192
        0x193
        0x193
        0x193
        0x193
        0x194
        0x194
        0x194
        0x194
        0x195
        0x195
        0x195
        0x195
        0x196
        0x196
        0x196
        0x196
        0x196
        0x197
        0x197
        0x197
        0x197
        0x198
        0x198
        0x198
        0x198
        0x199
        0x199
        0x199
        0x199
        0x199
        0x199
        0x19a
        0x19a
        0x19a
        0x19a
        0x19b
        0x19b
        0x19c
        0x19c
        0x19c
        0x19c
        0x19d
        0x19d
        0x19d
        0x19d
        0x19e
        0x19e
        0x19e
        0x19e
        0x19f
        0x19f
        0x19f
        0x19f
        0x1a0
        0x1a0
        0x1a0
        0x1a0
        0x1a1
        0x1a1
        0x1a1
        0x1a1
        0x1a2
        0x1a2
        0x1a2
        0x1a2
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a5
        0x1a5
        0x1a6
        0x1a6
        0x1a6
        0x1a6
        0x1a7
        0x1a7
        0x1a7
        0x1a7
        0x1a8
        0x1a8
        0x1a8
        0x1a9
        0x1a9
        0x1a9
        0x1a9
        0x1aa
        0x1aa
        0x1aa
        0x1aa
        0x1ab
        0x1ab
        0x1ab
        0x1ab
        0x1ac
        0x1ac
        0x1ac
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ae
        0x1ae
        0x1ae
        0x1ae
        0x1af
        0x1af
        0x1b0
        0x1b0
        0x1b0
        0x1b1
        0x1b1
        0x1b1
        0x1b1
        0x1b2
        0x1b2
        0x1b2
        0x1b3
        0x1b3
        0x1b3
        0x1b3
        0x1b4
        0x1b4
        0x1b4
        0x1b4
        0x1b5
        0x1b5
        0x1b5
        0x1b6
        0x1b6
        0x1b6
        0x1b6
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b8
        0x1b8
        0x1b8
        0x1b9
        0x1b9
        0x1ba
        0x1ba
        0x1ba
        0x1bb
        0x1bb
        0x1bb
        0x1bb
        0x1bc
        0x1bc
        0x1bc
        0x1bd
        0x1bd
        0x1bd
        0x1be
        0x1be
        0x1be
        0x1be
        0x1bf
        0x1bf
        0x1bf
        0x1c0
        0x1c0
        0x1c0
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c2
        0x1c2
        0x1c2
        0x1c3
        0x1c3
        0x1c4
        0x1c4
        0x1c4
        0x1c5
        0x1c5
        0x1c5
        0x1c6
        0x1c6
        0x1c6
        0x1c7
        0x1c7
        0x1c7
        0x1c8
        0x1c8
        0x1c8
        0x1c9
        0x1c9
        0x1c9
        0x1ca
        0x1ca
        0x1ca
        0x1cb
        0x1cb
        0x1cb
        0x1cb
        0x1cc
        0x1cc
        0x1cc
        0x1cd
        0x1cd
        0x1ce
        0x1ce
        0x1ce
        0x1cf
        0x1cf
        0x1cf
        0x1d0
        0x1d0
        0x1d1
        0x1d1
        0x1d1
        0x1d2
        0x1d2
        0x1d2
        0x1d3
        0x1d3
        0x1d3
        0x1d4
        0x1d4
        0x1d5
        0x1d5
        0x1d5
        0x1d5
        0x1d6
        0x1d6
        0x1d6
        0x1d7
        0x1d8
        0x1d8
        0x1d8
        0x1d9
        0x1d9
        0x1da
        0x1da
        0x1da
        0x1db
        0x1db
        0x1dc
        0x1dc
        0x1dc
        0x1dd
        0x1dd
        0x1de
        0x1de
        0x1de
        0x1df
        0x1df
        0x1df
        0x1e0
        0x1e0
        0x1e0
        0x1e1
        0x1e2
        0x1e2
        0x1e3
        0x1e3
        0x1e4
        0x1e4
        0x1e4
        0x1e5
        0x1e5
        0x1e6
        0x1e6
        0x1e7
        0x1e7
        0x1e8
        0x1e8
        0x1e8
        0x1e9
        0x1e9
        0x1e9
        0x1ea
        0x1ea
        0x1eb
        0x1ec
        0x1ec
        0x1ed
        0x1ed
        0x1ee
        0x1ee
        0x1ef
        0x1ef
        0x1f0
        0x1f0
        0x1f1
        0x1f1
        0x1f2
        0x1f2
        0x1f3
        0x1f3
        0x1f3
        0x1f4
        0x1f5
        0x1f6
        0x1f6
        0x1f7
        0x1f7
        0x1f8
        0x1f8
        0x1f9
        0x1f9
        0x1fa
        0x1fb
        0x1fb
        0x1fc
        0x1fc
        0x1fd
        0x1fd
        0x1fe
        0x1fe
        0x1ff
        0x200
        0x201
        0x201
        0x202
        0x203
        0x203
        0x204
        0x205
        0x205
        0x206
        0x207
        0x207
        0x207
        0x208
        0x209
        0x20a
        0x20b
        0x20c
        0x20c
        0x20d
        0x20e
        0x20e
        0x20f
        0x210
        0x211
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21b
        0x21c
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x224
        0x225
        0x225
        0x226
        0x228
        0x229
        0x22a
        0x22b
        0x22c
        0x22e
        0x22f
        0x22f
        0x231
        0x232
        0x234
        0x235
        0x236
        0x238
        0x239
        0x23a
        0x23c
        0x23e
        0x23f
        0x241
        0x242
        0x243
        0x246
        0x247
        0x249
        0x24b
        0x24d
        0x24e
        0x251
        0x253
        0x255
        0x257
        0x25a
        0x25c
        0x25f
        0x261
        0x264
        0x267
        0x26a
        0x26c
        0x270
        0x274
        0x277
        0x27b
        0x27f
        0x284
        0x289
        0x28e
        0x293
        0x29a
        0x2a1
        0x2a8
        0x2b2
        0x2bc
        0x2ca
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    .line 107
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mAutoFixShader:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 152
    iput v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 153
    iput v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 160
    return-void
.end method

.method private blacklist createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V
    .registers 22
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "data"    # [I

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0x2fe

    .line 271
    .local v3, "histDims":I
    new-array v4, v3, [I

    .line 273
    .local v4, "histArray":[I
    const v5, 0x3d4ccccd    # 0.05f

    .line 274
    .local v5, "border_thickness_ratio":F
    int-to-float v6, v2

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 275
    .local v6, "y_border_thickness":I
    int-to-float v7, v1

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 276
    .local v7, "x_border_thickness":I
    mul-int/lit8 v8, v7, 0x2

    sub-int v8, v1, v8

    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v2, v9

    mul-int/2addr v8, v9

    .line 278
    .local v8, "pixels":I
    const/4 v9, 0x0

    .line 279
    .local v9, "count":F
    move v10, v6

    .local v10, "y":I
    :goto_1e
    sub-int v11, v2, v6

    const/4 v12, 0x1

    if-ge v10, v11, :cond_48

    .line 280
    move v11, v7

    .local v11, "x":I
    :goto_24
    sub-int v13, v1, v7

    if-ge v11, v13, :cond_45

    .line 281
    mul-int v13, v10, v1

    add-int/2addr v13, v11

    .line 282
    .local v13, "index":I
    aget v14, p4, v13

    and-int/lit16 v14, v14, 0xff

    aget v15, p4, v13

    shr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    aget v15, p4, v13

    shr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    .line 284
    .local v14, "energy":I
    aget v15, v4, v14

    add-int/2addr v15, v12

    aput v15, v4, v14

    .line 280
    .end local v13    # "index":I
    .end local v14    # "energy":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 279
    .end local v11    # "x":I
    :cond_45
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 288
    .end local v10    # "y":I
    :cond_48
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_49
    if-ge v10, v3, :cond_57

    .line 289
    aget v11, v4, v10

    add-int/lit8 v13, v10, -0x1

    aget v13, v4, v13

    add-int/2addr v11, v13

    aput v11, v4, v10

    .line 288
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 292
    .end local v10    # "i":I
    :cond_57
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_58
    if-ge v10, v3, :cond_6c

    .line 293
    aget v11, v4, v10

    int-to-long v13, v11

    const-wide/32 v15, 0xffff

    mul-long/2addr v13, v15

    move-wide v15, v13

    int-to-long v12, v8

    div-long v13, v15, v12

    .line 294
    .local v13, "temp":J
    long-to-int v12, v13

    aput v12, v4, v10

    .line 292
    .end local v13    # "temp":J
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    goto :goto_58

    .line 297
    .end local v10    # "i":I
    :cond_6c
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-static {v3, v11, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v10

    .line 300
    .local v10, "shaderHistFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v11, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    if-eqz v11, :cond_7b

    .line 301
    iget-object v11, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 303
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    iput-object v11, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 304
    iget-object v11, v0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v11, v4}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 305
    return-void
.end method

.method private blacklist initParameters()V
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const/high16 v1, 0x3b800000    # 0.00390625f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "shift_scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const v1, 0x3a2b1cbe

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "hist_offset"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const v1, 0x3f7faa72

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "hist_scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const/high16 v1, 0x3a000000

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "density_offset"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    const v1, 0x3f7fc000

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "density_scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 231
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_12

    .line 232
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_12
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 170
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 174
    packed-switch p2, :pswitch_data_36

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 177
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 178
    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 179
    nop

    .line 185
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 186
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method protected blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 199
    const/16 v0, 0x400

    .line 200
    .local v0, "densityDim":I
    const/16 v1, 0x2fe

    .line 201
    .local v1, "histDim":I
    const-wide/32 v2, 0xffff

    .line 203
    .local v2, "precision":J
    new-array v4, v0, [I

    .line 204
    .local v4, "densityTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    if-ge v5, v0, :cond_1a

    .line 205
    sget-object v6, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    aget v6, v6, v5

    int-to-long v6, v6

    mul-long/2addr v6, v2

    int-to-long v8, v1

    div-long/2addr v6, v8

    .line 206
    .local v6, "temp":J
    long-to-int v8, v6

    aput v8, v4, v5

    .line 204
    .end local v6    # "temp":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 209
    .end local v5    # "i":I
    :cond_1a
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-static {v0, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v5

    .line 212
    .local v5, "densityFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 213
    iget-object v6, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v6, v4}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 214
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 239
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/AutoFixFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 240
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 243
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    if-eq v3, v4, :cond_21

    .line 244
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/AutoFixFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 245
    invoke-direct {p0}, Landroid/filterpacks/imageproc/AutoFixFilter;->initParameters()V

    .line 249
    :cond_21
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    if-ne v3, v4, :cond_31

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    if-eq v3, v4, :cond_48

    .line 250
    :cond_31
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 251
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 252
    iget v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getInts()[I

    move-result-object v5

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/filterpacks/imageproc/AutoFixFilter;->createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V

    .line 256
    :cond_48
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 259
    .local v3, "output":Landroid/filterfw/core/Frame;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/filterfw/core/Frame;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    aput-object v6, v4, v5

    .line 260
    .local v4, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v4, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 263
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/AutoFixFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 266
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 267
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 164
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/AutoFixFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 165
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/AutoFixFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 218
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 220
    iput-object v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 223
    :cond_c
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_17

    .line 224
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 225
    iput-object v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 227
    :cond_17
    return-void
.end method
