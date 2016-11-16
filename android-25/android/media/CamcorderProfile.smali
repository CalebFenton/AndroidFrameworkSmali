.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d5

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field private static final QUALITY_LIST_END:I = 0x8

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f0

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 465
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 466
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    #@9
    .line 43
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    #@0
    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 483
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    #@5
    .line 484
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    #@7
    .line 485
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    #@9
    .line 486
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    #@b
    .line 487
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    #@d
    .line 488
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    #@f
    .line 489
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    #@11
    .line 490
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    #@13
    .line 491
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    #@15
    .line 492
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    #@17
    .line 493
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    #@19
    .line 494
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    #@1b
    .line 481
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 4
    .param p0, "quality"    # I

    #@0
    .prologue
    .line 326
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    #@3
    move-result v2

    #@4
    .line 327
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    #@6
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@9
    .line 328
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@c
    .line 329
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@f
    .line 330
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@11
    if-nez v3, :cond_0

    #@13
    .line 331
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 328
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 334
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 389
    if-ltz p1, :cond_0

    #@2
    .line 390
    const/16 v1, 0x8

    #@4
    if-le p1, v1, :cond_3

    #@6
    .line 391
    :cond_0
    const/16 v1, 0x3e8

    #@8
    if-lt p1, v1, :cond_1

    #@a
    .line 392
    const/16 v1, 0x3f0

    #@c
    if-le p1, v1, :cond_3

    #@e
    .line 393
    :cond_1
    const/16 v1, 0x7d0

    #@10
    if-lt p1, v1, :cond_2

    #@12
    .line 394
    const/16 v1, 0x7d5

    #@14
    if-le p1, v1, :cond_3

    #@16
    .line 395
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Unsupported quality level: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 396
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2c
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 398
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    #@33
    move-result-object v1

    #@34
    return-object v1
.end method

.method public static hasProfile(I)Z
    .locals 5
    .param p0, "quality"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 425
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    #@4
    move-result v2

    #@5
    .line 426
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    #@7
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@a
    .line 427
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 428
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@10
    .line 429
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@12
    if-nez v3, :cond_0

    #@14
    .line 430
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    #@17
    move-result v3

    #@18
    return v3

    #@19
    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 433
    :cond_1
    return v4
.end method

.method public static hasProfile(II)Z
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 461
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
