.class public Landroid/media/CameraProfile;
.super Ljava/lang/Object;
.source "CameraProfile.java"


# static fields
.field public static final whitelist QUALITY_HIGH:I = 0x2

.field public static final whitelist QUALITY_LOW:I = 0x0

.field public static final whitelist QUALITY_MEDIUM:I = 0x1

.field private static final greylist-max-o sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    .line 92
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroid/media/CameraProfile;->native_init()V

    .line 94
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getImageEncodingQualityLevels(I)[I
    .registers 5
    .param p0, "cameraId"    # I

    .line 97
    invoke-static {p0}, Landroid/media/CameraProfile;->native_get_num_image_encoding_quality_levels(I)I

    move-result v0

    .line 98
    .local v0, "nLevels":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 102
    new-array v1, v0, [I

    .line 103
    .local v1, "levels":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_15

    .line 104
    invoke-static {p0, v2}, Landroid/media/CameraProfile;->native_get_image_encoding_quality_level(II)I

    move-result v3

    aput v3, v1, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    .end local v2    # "i":I
    :cond_15
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 107
    return-object v1

    .line 99
    .end local v1    # "levels":[I
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Jpeg encoding quality levels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getJpegEncodingQualityParameter(I)I
    .registers 5
    .param p0, "quality"    # I

    .line 58
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 59
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 60
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 61
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 62
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 63
    invoke-static {v2, p0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v3

    return v3

    .line 60
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 66
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public static whitelist getJpegEncodingQualityParameter(II)I
    .registers 6
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .line 78
    if-ltz p1, :cond_2b

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2b

    .line 81
    sget-object v0, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 82
    :try_start_8
    sget-object v1, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 83
    .local v1, "levels":[I
    if-nez v1, :cond_24

    .line 84
    invoke-static {p0}, Landroid/media/CameraProfile;->getImageEncodingQualityLevels(I)[I

    move-result-object v2

    move-object v1, v2

    .line 85
    sget-object v2, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_24
    aget v2, v1, p1

    monitor-exit v0

    return v2

    .line 88
    .end local v1    # "levels":[I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1

    .line 79
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final native greylist-max-o native_get_image_encoding_quality_level(II)I
.end method

.method private static final native greylist-max-o native_get_num_image_encoding_quality_levels(I)I
.end method

.method private static final native greylist-max-o native_init()V
.end method
