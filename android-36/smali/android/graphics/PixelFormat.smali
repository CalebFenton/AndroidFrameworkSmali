.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PixelFormat$Format;,
        Landroid/graphics/PixelFormat$Opacity;
    }
.end annotation


# static fields
.field public static final whitelist A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist HSV_888:I = 0x37

.field public static final whitelist JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist OPAQUE:I = -0x1

.field public static final whitelist RGBA_1010102:I = 0x2b

.field public static final whitelist RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGBA_8888:I = 0x1

.field public static final whitelist RGBA_F16:I = 0x16

.field public static final whitelist RGBX_8888:I = 0x2

.field public static final whitelist RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist RGB_888:I = 0x3

.field public static final blacklist R_8:I = 0x38

.field public static final whitelist TRANSLUCENT:I = -0x3

.field public static final whitelist TRANSPARENT:I = -0x2

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final whitelist YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public whitelist bitsPerPixel:I

.field public whitelist bytesPerPixel:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist formatHasAlpha(I)Z
    .registers 2
    .param p0, "format"    # I

    .line 160
    sparse-switch p0, :sswitch_data_8

    .line 172
    const/4 v0, 0x0

    return v0

    .line 170
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_5
        0x1 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0xa -> :sswitch_5
        0x16 -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o formatToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "format"    # I

    .line 206
    sparse-switch p0, :sswitch_data_48

    .line 250
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :sswitch_8
    const-string v0, "JPEG"

    return-object v0

    .line 248
    :sswitch_b
    const-string v0, "R_8"

    return-object v0

    .line 244
    :sswitch_e
    const-string v0, "HSV_888"

    return-object v0

    .line 242
    :sswitch_11
    const-string v0, "RGBA_1010102"

    return-object v0

    .line 240
    :sswitch_14
    const-string v0, "RGBA_F16"

    return-object v0

    .line 238
    :sswitch_17
    const-string v0, "YCbCr_422_I"

    return-object v0

    .line 236
    :sswitch_1a
    const-string v0, "YCbCr_420_SP"

    return-object v0

    .line 234
    :sswitch_1d
    const-string v0, "YCbCr_422_SP"

    return-object v0

    .line 232
    :sswitch_20
    const-string v0, "RGB_332"

    return-object v0

    .line 230
    :sswitch_23
    const-string v0, "LA_88"

    return-object v0

    .line 228
    :sswitch_26
    const-string v0, "L_8"

    return-object v0

    .line 226
    :sswitch_29
    const-string v0, "A_8"

    return-object v0

    .line 224
    :sswitch_2c
    const-string v0, "RGBA_4444"

    return-object v0

    .line 222
    :sswitch_2f
    const-string v0, "RGBA_5551"

    return-object v0

    .line 220
    :sswitch_32
    const-string v0, "RGB_565"

    return-object v0

    .line 218
    :sswitch_35
    const-string v0, "RGB_888"

    return-object v0

    .line 216
    :sswitch_38
    const-string v0, "RGBX_8888"

    return-object v0

    .line 214
    :sswitch_3b
    const-string v0, "RGBA_8888"

    return-object v0

    .line 208
    :sswitch_3e
    const-string v0, "UNKNOWN"

    return-object v0

    .line 212
    :sswitch_41
    const-string v0, "TRANSPARENT"

    return-object v0

    .line 210
    :sswitch_44
    const-string v0, "TRANSLUCENT"

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x3 -> :sswitch_44
        -0x2 -> :sswitch_41
        0x0 -> :sswitch_3e
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_38
        0x3 -> :sswitch_35
        0x4 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x9 -> :sswitch_26
        0xa -> :sswitch_23
        0xb -> :sswitch_20
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1a
        0x14 -> :sswitch_17
        0x16 -> :sswitch_14
        0x2b -> :sswitch_11
        0x37 -> :sswitch_e
        0x38 -> :sswitch_b
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method public static whitelist getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .registers 5
    .param p0, "format"    # I
    .param p1, "info"    # Landroid/graphics/PixelFormat;

    .line 112
    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    sparse-switch p0, :sswitch_data_56

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :sswitch_22
    iput v1, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 152
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 153
    goto :goto_55

    .line 147
    :sswitch_27
    const/16 v0, 0x40

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 148
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 149
    goto :goto_55

    .line 143
    :sswitch_2e
    const/16 v0, 0xc

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 144
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 145
    goto :goto_55

    .line 139
    :sswitch_35
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 140
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 141
    goto :goto_55

    .line 134
    :sswitch_3a
    iput v1, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 135
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 136
    goto :goto_55

    .line 128
    :sswitch_3f
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 129
    const/4 v0, 0x2

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 130
    goto :goto_55

    .line 121
    :sswitch_45
    const/16 v0, 0x18

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 122
    const/4 v0, 0x3

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 123
    goto :goto_55

    .line 116
    :sswitch_4d
    const/16 v0, 0x20

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 117
    const/4 v0, 0x4

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 118
    nop

    .line 157
    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_4d
        0x2 -> :sswitch_4d
        0x3 -> :sswitch_45
        0x4 -> :sswitch_3f
        0x6 -> :sswitch_3f
        0x7 -> :sswitch_3f
        0x8 -> :sswitch_3a
        0x9 -> :sswitch_3a
        0xa -> :sswitch_3f
        0xb -> :sswitch_3a
        0x10 -> :sswitch_35
        0x11 -> :sswitch_2e
        0x14 -> :sswitch_35
        0x16 -> :sswitch_27
        0x2b -> :sswitch_4d
        0x37 -> :sswitch_45
        0x38 -> :sswitch_22
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .registers 2
    .param p0, "format"    # I

    .line 189
    sparse-switch p0, :sswitch_data_8

    .line 199
    const/4 v0, 0x0

    return v0

    .line 196
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x16 -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method
