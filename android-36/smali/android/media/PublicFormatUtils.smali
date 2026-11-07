.class Landroid/media/PublicFormatUtils;
.super Ljava/lang/Object;
.source "PublicFormatUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getHalDataspace(I)I
    .registers 2
    .param p0, "imageFormat"    # I

    .line 28
    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalDataspace(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getHalFormat(I)I
    .registers 2
    .param p0, "imageFormat"    # I

    .line 25
    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalFormat(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getPublicFormat(II)I
    .registers 3
    .param p0, "imageFormat"    # I
    .param p1, "dataspace"    # I

    .line 31
    invoke-static {p0, p1}, Landroid/media/PublicFormatUtils;->nativeGetPublicFormat(II)I

    move-result v0

    return v0
.end method

.method private static native blacklist nativeGetHalDataspace(I)I
.end method

.method private static native blacklist nativeGetHalFormat(I)I
.end method

.method private static native blacklist nativeGetPublicFormat(II)I
.end method
