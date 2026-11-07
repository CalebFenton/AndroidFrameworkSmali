.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final whitelist DEPTH16:I = 0x44363159

.field public static final whitelist DEPTH_JPEG:I = 0x69656963

.field public static final whitelist DEPTH_POINT_CLOUD:I = 0x101

.field public static final whitelist FLEX_RGBA_8888:I = 0x2a

.field public static final whitelist FLEX_RGB_888:I = 0x29

.field public static final whitelist HEIC:I = 0x48454946

.field public static final whitelist HEIC_ULTRAHDR:I = 0x1006

.field public static final whitelist JPEG:I = 0x100

.field public static final whitelist JPEG_R:I = 0x1005

.field public static final whitelist NV16:I = 0x10

.field public static final whitelist NV21:I = 0x11

.field public static final whitelist PRIVATE:I = 0x22

.field public static final whitelist RAW10:I = 0x25

.field public static final whitelist RAW12:I = 0x26

.field public static final greylist-max-o RAW_DEPTH:I = 0x1002

.field public static final blacklist RAW_DEPTH10:I = 0x1003

.field public static final whitelist RAW_PRIVATE:I = 0x24

.field public static final whitelist RAW_SENSOR:I = 0x20

.field public static final whitelist RGB_565:I = 0x4

.field public static final whitelist UNKNOWN:I = 0x0

.field public static final greylist-max-o Y16:I = 0x20363159

.field public static final whitelist Y8:I = 0x20203859

.field public static final whitelist YCBCR_P010:I = 0x36

.field public static final whitelist YCBCR_P210:I = 0x3c

.field public static final whitelist YUV_420_888:I = 0x23

.field public static final whitelist YUV_422_888:I = 0x27

.field public static final whitelist YUV_444_888:I = 0x28

.field public static final whitelist YUY2:I = 0x14

.field public static final whitelist YV12:I = 0x32315659


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getBitsPerPixel(I)I
    .registers 5
    .param p0, "format"    # I

    .line 857
    const/16 v0, 0x20

    const/16 v1, 0x18

    const/16 v2, 0xc

    const/16 v3, 0x10

    sparse-switch p0, :sswitch_data_22

    .line 896
    const/4 v0, -0x1

    return v0

    .line 865
    :sswitch_d
    return v2

    .line 870
    :sswitch_e
    return v3

    .line 867
    :sswitch_f
    const/16 v0, 0x8

    return v0

    .line 889
    :sswitch_12
    return v0

    .line 887
    :sswitch_13
    return v1

    .line 882
    :sswitch_14
    return v0

    .line 880
    :sswitch_15
    return v1

    .line 878
    :sswitch_16
    return v1

    .line 876
    :sswitch_17
    return v3

    .line 894
    :sswitch_18
    return v2

    .line 892
    :sswitch_19
    const/16 v0, 0xa

    return v0

    .line 874
    :sswitch_1c
    return v2

    .line 885
    :sswitch_1d
    return v3

    .line 863
    :sswitch_1e
    return v3

    .line 872
    :sswitch_1f
    return v2

    .line 861
    :sswitch_20
    return v3

    .line 859
    :sswitch_21
    return v3

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_21
        0x10 -> :sswitch_20
        0x11 -> :sswitch_1f
        0x14 -> :sswitch_1e
        0x20 -> :sswitch_1d
        0x23 -> :sswitch_1c
        0x25 -> :sswitch_19
        0x26 -> :sswitch_18
        0x27 -> :sswitch_17
        0x28 -> :sswitch_16
        0x29 -> :sswitch_15
        0x2a -> :sswitch_14
        0x36 -> :sswitch_13
        0x3c -> :sswitch_12
        0x1002 -> :sswitch_1d
        0x1003 -> :sswitch_19
        0x20203859 -> :sswitch_f
        0x20363159 -> :sswitch_e
        0x32315659 -> :sswitch_d
        0x44363159 -> :sswitch_e
    .end sparse-switch
.end method

.method public static greylist-max-o isPublicFormat(I)Z
    .registers 3
    .param p0, "format"    # I

    .line 912
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_1e

    .line 940
    invoke-static {}, Landroid/media/codec/Flags;->p210FormatSupport()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x3c

    if-ne p0, v1, :cond_10

    .line 941
    return v0

    .line 938
    :sswitch_f
    return v0

    .line 943
    :cond_10
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 944
    const/16 v1, 0x1006

    if-ne p0, v1, :cond_1b

    .line 945
    return v0

    .line 948
    :cond_1b
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_f
        0x11 -> :sswitch_f
        0x14 -> :sswitch_f
        0x20 -> :sswitch_f
        0x22 -> :sswitch_f
        0x23 -> :sswitch_f
        0x24 -> :sswitch_f
        0x25 -> :sswitch_f
        0x26 -> :sswitch_f
        0x27 -> :sswitch_f
        0x28 -> :sswitch_f
        0x29 -> :sswitch_f
        0x2a -> :sswitch_f
        0x36 -> :sswitch_f
        0x100 -> :sswitch_f
        0x101 -> :sswitch_f
        0x1002 -> :sswitch_f
        0x1003 -> :sswitch_f
        0x1005 -> :sswitch_f
        0x20203859 -> :sswitch_f
        0x32315659 -> :sswitch_f
        0x44363159 -> :sswitch_f
        0x48454946 -> :sswitch_f
        0x69656963 -> :sswitch_f
    .end sparse-switch
.end method
