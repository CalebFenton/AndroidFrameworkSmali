.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static formatHasAlpha(I)Z
    .locals 1
    .param p0, "format"    # I

    #@0
    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    #@3
    .line 133
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 131
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 123
    nop

    #@8
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .locals 3
    .param p0, "format"    # I
    .param p1, "info"    # Landroid/graphics/PixelFormat;

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    const/4 v1, 0x1

    #@3
    .line 85
    packed-switch p0, :pswitch_data_0

    #@6
    .line 118
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "unknown pixel format "

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

    #@20
    .line 88
    :pswitch_1
    const/16 v0, 0x20

    #@22
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@24
    .line 89
    const/4 v0, 0x4

    #@25
    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@27
    .line 84
    :goto_0
    return-void

    #@28
    .line 92
    :pswitch_2
    const/16 v0, 0x18

    #@2a
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@2c
    .line 93
    const/4 v0, 0x3

    #@2d
    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@2f
    goto :goto_0

    #@30
    .line 99
    :pswitch_3
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@32
    .line 100
    const/4 v0, 0x2

    #@33
    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@35
    goto :goto_0

    #@36
    .line 105
    :pswitch_4
    const/16 v0, 0x8

    #@38
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@3a
    .line 106
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@3c
    goto :goto_0

    #@3d
    .line 110
    :pswitch_5
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@3f
    .line 111
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@41
    goto :goto_0

    #@42
    .line 114
    :pswitch_6
    const/16 v0, 0xc

    #@44
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    #@46
    .line 115
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    #@48
    goto :goto_0

    #@49
    .line 85
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    #@0
    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    #@3
    .line 161
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 158
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 153
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
