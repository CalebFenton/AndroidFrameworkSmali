.class final Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HardwareBitmapBundler"
.end annotation


# static fields
.field private static final blacklist KEY_BUFFER:Ljava/lang/String; = "bitmap_util_buffer"

.field private static final blacklist KEY_COLOR_SPACE:Ljava/lang/String; = "bitmap_util_color_space"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->bundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method private static blacklist bundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 340
    if-nez p0, :cond_4

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_4
    const-string v0, "bitmap_util_buffer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "bitmap_util_color_space"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 347
    const-class v2, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 348
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    const-class v2, Landroid/graphics/ParcelableColorSpace;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ParcelableColorSpace;

    .line 351
    .local v1, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 352
    invoke-virtual {v1}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 351
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 344
    .end local v0    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v1    # "colorSpace":Landroid/graphics/ParcelableColorSpace;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle does not contain a hardware bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 307
    if-nez p0, :cond_4

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3c

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 319
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    goto :goto_27

    .line 320
    :cond_1e
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    :goto_27
    nop

    .line 322
    .local v0, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bitmap_util_buffer"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    const-string v2, "bitmap_util_color_space"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    return-object v1

    .line 311
    .end local v0    # "colorSpace":Landroid/graphics/ParcelableColorSpace;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passed bitmap must have hardware config, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
