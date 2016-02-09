.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;
.source "AudioDeviceInfo.java"


# static fields
.field private static final EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final TYPE_AUX_LINE:I = 0x13

.field public static final TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final TYPE_BUILTIN_MIC:I = 0xf

.field public static final TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final TYPE_DOCK:I = 0xd

.field public static final TYPE_FM:I = 0xe

.field public static final TYPE_FM_TUNER:I = 0x10

.field public static final TYPE_HDMI:I = 0x9

.field public static final TYPE_HDMI_ARC:I = 0xa

.field public static final TYPE_IP:I = 0x14

.field public static final TYPE_LINE_ANALOG:I = 0x5

.field public static final TYPE_LINE_DIGITAL:I = 0x6

.field public static final TYPE_TELEPHONY:I = 0x12

.field public static final TYPE_TV_TUNER:I = 0x11

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_ACCESSORY:I = 0xc

.field public static final TYPE_USB_DEVICE:I = 0xb

.field public static final TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final mPort:Landroid/media/AudioDevicePort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/16 v5, 0xd

    #@4
    const/4 v4, 0x7

    #@5
    const/16 v3, 0x8

    #@7
    .line 258
    new-instance v0, Landroid/util/SparseIntArray;

    #@9
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@c
    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@e
    .line 259
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@13
    .line 260
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@18
    .line 261
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1a
    const/4 v1, 0x4

    #@1b
    const/4 v2, 0x3

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1f
    .line 262
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@25
    .line 263
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@27
    const/16 v1, 0x10

    #@29
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@2c
    .line 264
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@2e
    const/16 v1, 0x20

    #@30
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@33
    .line 265
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@35
    const/16 v1, 0x40

    #@37
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@3a
    .line 266
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@3c
    const/16 v1, 0x80

    #@3e
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@41
    .line 267
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@43
    const/16 v1, 0x100

    #@45
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@48
    .line 268
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@4a
    const/16 v1, 0x200

    #@4c
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@4f
    .line 269
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@51
    const/16 v1, 0x400

    #@53
    const/16 v2, 0x9

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@58
    .line 270
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@5a
    const/16 v1, 0x800

    #@5c
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@5f
    .line 271
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@61
    const/16 v1, 0x1000

    #@63
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@66
    .line 272
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@68
    const/16 v1, 0x2000

    #@6a
    const/16 v2, 0xc

    #@6c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@6f
    .line 273
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@71
    const/16 v1, 0x4000

    #@73
    const/16 v2, 0xb

    #@75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@78
    .line 274
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@7a
    const/high16 v1, 0x10000

    #@7c
    const/16 v2, 0x12

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@81
    .line 275
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@83
    const/high16 v1, 0x20000

    #@85
    const/4 v2, 0x5

    #@86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@89
    .line 276
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@8b
    const/high16 v1, 0x40000

    #@8d
    const/16 v2, 0xa

    #@8f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@92
    .line 277
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@94
    const/high16 v1, 0x80000

    #@96
    const/4 v2, 0x6

    #@97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@9a
    .line 278
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@9c
    const/high16 v1, 0x100000

    #@9e
    const/16 v2, 0xe

    #@a0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@a3
    .line 279
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@a5
    const/high16 v1, 0x200000

    #@a7
    const/16 v2, 0x13

    #@a9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@ac
    .line 280
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@ae
    const/high16 v1, 0x800000

    #@b0
    const/16 v2, 0x14

    #@b2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@b5
    .line 282
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@b7
    const v1, -0x7ffffffc

    #@ba
    const/16 v2, 0xf

    #@bc
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@bf
    .line 283
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@c1
    const v1, -0x7ffffff8

    #@c4
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@c7
    .line 284
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@c9
    const v1, -0x7ffffff0

    #@cc
    const/4 v2, 0x3

    #@cd
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@d0
    .line 285
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@d2
    const v1, -0x7fffffe0

    #@d5
    const/16 v2, 0x9

    #@d7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@da
    .line 286
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@dc
    const v1, -0x7fffffc0

    #@df
    const/16 v2, 0x12

    #@e1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@e4
    .line 287
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@e6
    const v1, -0x7fffff80

    #@e9
    const/16 v2, 0xf

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@ee
    .line 288
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@f0
    const v1, -0x7ffffe00

    #@f3
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@f6
    .line 289
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@f8
    const v1, -0x7ffffc00

    #@fb
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@fe
    .line 290
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@100
    const v1, -0x7ffff800

    #@103
    const/16 v2, 0xc

    #@105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@108
    .line 291
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@10a
    const v1, -0x7ffff000

    #@10d
    const/16 v2, 0xb

    #@10f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@112
    .line 292
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@114
    const v1, -0x7fffe000

    #@117
    const/16 v2, 0x10

    #@119
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@11c
    .line 293
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@11e
    const v1, -0x7fffc000

    #@121
    const/16 v2, 0x11

    #@123
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@126
    .line 294
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@128
    const v1, -0x7fff8000

    #@12b
    const/4 v2, 0x5

    #@12c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@12f
    .line 295
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@131
    const/high16 v1, -0x7fff0000

    #@133
    const/4 v2, 0x6

    #@134
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@137
    .line 296
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@139
    const/high16 v1, -0x7ffe0000

    #@13b
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@13e
    .line 297
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@140
    const/high16 v1, -0x7ff80000

    #@142
    const/16 v2, 0x14

    #@144
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@147
    .line 304
    new-instance v0, Landroid/util/SparseIntArray;

    #@149
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@14c
    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@14e
    .line 305
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@150
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@153
    .line 306
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@155
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@158
    .line 307
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@15a
    const/4 v1, 0x3

    #@15b
    const/4 v2, 0x4

    #@15c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@15f
    .line 308
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@161
    const/4 v1, 0x4

    #@162
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@165
    .line 309
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@167
    const/4 v1, 0x5

    #@168
    const/high16 v2, 0x20000

    #@16a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@16d
    .line 310
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@16f
    const/4 v1, 0x6

    #@170
    const/high16 v2, 0x80000

    #@172
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@175
    .line 311
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@177
    const/16 v1, 0x10

    #@179
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@17c
    .line 312
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@17e
    const/16 v1, 0x80

    #@180
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@183
    .line 313
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@185
    const/16 v1, 0x9

    #@187
    const/16 v2, 0x400

    #@189
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@18c
    .line 314
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@18e
    const/16 v1, 0xa

    #@190
    const/high16 v2, 0x40000

    #@192
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@195
    .line 315
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@197
    const/16 v1, 0xb

    #@199
    const/16 v2, 0x4000

    #@19b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@19e
    .line 316
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1a0
    const/16 v1, 0xc

    #@1a2
    const/16 v2, 0x2000

    #@1a4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a7
    .line 317
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1a9
    const/16 v1, 0x800

    #@1ab
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@1ae
    .line 318
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1b0
    const/16 v1, 0xe

    #@1b2
    const/high16 v2, 0x100000

    #@1b4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1b7
    .line 319
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1b9
    const/16 v1, 0xf

    #@1bb
    const v2, -0x7ffffffc

    #@1be
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1c1
    .line 320
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1c3
    const/16 v1, 0x10

    #@1c5
    const v2, -0x7fffe000

    #@1c8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1cb
    .line 321
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1cd
    const/16 v1, 0x11

    #@1cf
    const v2, -0x7fffc000

    #@1d2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1d5
    .line 322
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1d7
    const/16 v1, 0x12

    #@1d9
    const/high16 v2, 0x10000

    #@1db
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1de
    .line 323
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1e0
    const/16 v1, 0x13

    #@1e2
    const/high16 v2, 0x200000

    #@1e4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1e7
    .line 324
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@1e9
    const/16 v1, 0x14

    #@1eb
    const/high16 v2, 0x800000

    #@1ed
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1f0
    .line 27
    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePort;)V
    .locals 0
    .param p1, "port"    # Landroid/media/AudioDevicePort;

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@5
    .line 117
    return-void
.end method

.method public static convertDeviceTypeToInternalDevice(I)I
    .locals 2
    .param p0, "deviceType"    # I

    #@0
    .prologue
    .line 245
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static convertInternalDeviceToDeviceType(I)I
    .locals 2
    .param p0, "intDevice"    # I

    #@0
    .prologue
    .line 250
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChannelCounts()[I
    .locals 13

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 198
    new-instance v2, Ljava/util/TreeSet;

    #@3
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@6
    .line 201
    .local v2, "countSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    #@9
    move-result-object v11

    #@a
    array-length v12, v11

    #@b
    move v10, v9

    #@c
    :goto_0
    if-ge v10, v12, :cond_1

    #@e
    aget v7, v11, v10

    #@10
    .line 202
    .local v7, "mask":I
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_0

    #@16
    .line 203
    invoke-static {v7}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@19
    move-result v8

    #@1a
    .line 202
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@21
    .line 201
    add-int/lit8 v8, v10, 0x1

    #@23
    move v10, v8

    #@24
    goto :goto_0

    #@25
    .line 204
    :cond_0
    invoke-static {v7}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    #@28
    move-result v8

    #@29
    goto :goto_1

    #@2a
    .line 208
    .end local v7    # "mask":I
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    #@2d
    move-result-object v10

    #@2e
    array-length v11, v10

    #@2f
    move v8, v9

    #@30
    :goto_2
    if-ge v8, v11, :cond_2

    #@32
    aget v6, v10, v8

    #@34
    .line 209
    .local v6, "index_mask":I
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    #@37
    move-result v9

    #@38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v2, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@3f
    .line 208
    add-int/lit8 v8, v8, 0x1

    #@41
    goto :goto_2

    #@42
    .line 212
    .end local v6    # "index_mask":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    #@45
    move-result v8

    #@46
    new-array v3, v8, [I

    #@48
    .line 213
    .local v3, "counts":[I
    const/4 v4, 0x0

    #@49
    .line 214
    .local v4, "index":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v1

    #@4d
    .local v1, "count$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_3

    #@53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v8

    #@57
    check-cast v8, Ljava/lang/Integer;

    #@59
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v0

    #@5d
    .line 215
    .local v0, "count":I
    add-int/lit8 v5, v4, 0x1

    #@5f
    .end local v4    # "index":I
    .local v5, "index":I
    aput v0, v3, v4

    #@61
    move v4, v5

    #@62
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    #@63
    .line 217
    .end local v0    # "count":I
    :cond_3
    return-object v3
.end method

.method public getChannelIndexMasks()[I
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelIndexMasks()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChannelMasks()[I
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodings()[I
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->handle()Landroid/media/AudioHandle;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getProductName()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 133
    .local v0, "portName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .end local v0    # "portName":Ljava/lang/String;
    :goto_0
    return-object v0

    #@d
    .restart local v0    # "portName":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@f
    goto :goto_0
.end method

.method public getSampleRates()[I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()I
    .locals 3

    #@0
    .prologue
    .line 240
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    #@2
    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@4
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isSink()Z
    .locals 2

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isSource()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 149
    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    #@3
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->role()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
