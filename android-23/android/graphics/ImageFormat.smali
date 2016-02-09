.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


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

.method public static getBitsPerPixel(I)I
    .locals 3
    .param p0, "format"    # I

    #@0
    .prologue
    const/16 v2, 0x18

    #@2
    const/16 v1, 0xc

    #@4
    const/16 v0, 0x10

    #@6
    .line 689
    sparse-switch p0, :sswitch_data_0

    #@9
    .line 722
    const/4 v0, -0x1

    #@a
    return v0

    #@b
    .line 691
    :sswitch_0
    return v0

    #@c
    .line 693
    :sswitch_1
    return v0

    #@d
    .line 695
    :sswitch_2
    return v0

    #@e
    .line 697
    :sswitch_3
    return v1

    #@f
    .line 699
    :sswitch_4
    const/16 v0, 0x8

    #@11
    return v0

    #@12
    .line 702
    :sswitch_5
    return v0

    #@13
    .line 704
    :sswitch_6
    return v1

    #@14
    .line 706
    :sswitch_7
    return v1

    #@15
    .line 708
    :sswitch_8
    return v0

    #@16
    .line 710
    :sswitch_9
    return v2

    #@17
    .line 712
    :sswitch_a
    return v2

    #@18
    .line 714
    :sswitch_b
    const/16 v0, 0x20

    #@1a
    return v0

    #@1b
    .line 716
    :sswitch_c
    return v0

    #@1c
    .line 718
    :sswitch_d
    const/16 v0, 0xa

    #@1e
    return v0

    #@1f
    .line 720
    :sswitch_e
    return v1

    #@20
    .line 689
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_6
        0x14 -> :sswitch_2
        0x20 -> :sswitch_c
        0x23 -> :sswitch_7
        0x25 -> :sswitch_d
        0x26 -> :sswitch_e
        0x27 -> :sswitch_8
        0x28 -> :sswitch_9
        0x29 -> :sswitch_a
        0x2a -> :sswitch_b
        0x20203859 -> :sswitch_4
        0x20363159 -> :sswitch_5
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    #@0
    .prologue
    .line 738
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 759
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 756
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 738
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_0
    .end sparse-switch
.end method
