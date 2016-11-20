.class public Landroid/media/CameraProfile;
.super Ljava/lang/Object;
.source "CameraProfile.java"


# static fields
.field public static final QUALITY_HIGH:I = 0x2

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_MEDIUM:I = 0x1

.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    #@7
    .line 92
    const-string/jumbo v0, "media_jni"

    #@a
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@d
    .line 93
    invoke-static {}, Landroid/media/CameraProfile;->native_init()V

    #@10
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getImageEncodingQualityLevels(I)[I
    .locals 6
    .param p0, "cameraId"    # I

    #@0
    .prologue
    .line 97
    invoke-static {p0}, Landroid/media/CameraProfile;->native_get_num_image_encoding_quality_levels(I)I

    #@3
    move-result v2

    #@4
    .line 98
    .local v2, "nLevels":I
    const/4 v3, 0x3

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Unexpected Jpeg encoding quality levels "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 102
    :cond_0
    new-array v1, v2, [I

    #@23
    .line 103
    .local v1, "levels":[I
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@26
    .line 104
    invoke-static {p0, v0}, Landroid/media/CameraProfile;->native_get_image_encoding_quality_level(II)I

    #@29
    move-result v3

    #@2a
    aput v3, v1, v0

    #@2c
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 106
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    #@32
    .line 107
    return-object v1
.end method

.method public static getJpegEncodingQualityParameter(I)I
    .locals 5
    .param p0, "quality"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 58
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    #@4
    move-result v2

    #@5
    .line 59
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    #@7
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@a
    .line 60
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 61
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@10
    .line 62
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@12
    if-nez v3, :cond_0

    #@14
    .line 63
    invoke-static {v1, p0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    #@17
    move-result v3

    #@18
    return v3

    #@19
    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 66
    :cond_1
    return v4
.end method

.method public static getJpegEncodingQualityParameter(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 78
    if-ltz p1, :cond_0

    #@2
    const/4 v1, 0x2

    #@3
    if-le p1, v1, :cond_1

    #@5
    .line 79
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unsupported quality level: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 81
    :cond_1
    sget-object v2, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    #@21
    monitor-enter v2

    #@22
    .line 82
    :try_start_0
    sget-object v1, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    #@24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, [I

    #@2e
    .line 83
    .local v0, "levels":[I
    if-nez v0, :cond_2

    #@30
    .line 84
    invoke-static {p0}, Landroid/media/CameraProfile;->getImageEncodingQualityLevels(I)[I

    #@33
    move-result-object v0

    #@34
    .line 85
    sget-object v1, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    #@36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 87
    :cond_2
    aget v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v2

    #@40
    return v1

    #@41
    .line 81
    .end local v0    # "levels":[I
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
.end method

.method private static final native native_get_image_encoding_quality_level(II)I
.end method

.method private static final native native_get_num_image_encoding_quality_levels(I)I
.end method

.method private static final native native_init()V
.end method
