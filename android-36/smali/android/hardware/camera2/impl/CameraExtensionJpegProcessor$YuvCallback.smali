.class Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvCallback"
.end annotation


# instance fields
.field private blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mImageWriter:Landroid/media/ImageWriter;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V
    .registers 4
    .param p2, "imageReader"    # Landroid/media/ImageReader;
    .param p3, "imageWriter"    # Landroid/media/ImageWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    .line 295
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    .line 296
    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 32
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 300
    move-object/from16 v1, p0

    const-string v2, "CameraExtensionJpeg"

    const/4 v3, 0x0

    .line 301
    .local v3, "yuvImage":Landroid/media/Image;
    const/4 v4, 0x0

    .line 303
    .local v4, "jpegImage":Landroid/media/Image;
    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    move-object v3, v0

    .line 304
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_106

    move-object v4, v0

    .line 314
    nop

    .line 316
    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 317
    .local v17, "jpegBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 319
    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v18

    .line 321
    .local v18, "jpegCapacity":I
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v25, v0, v5

    .line 322
    .local v25, "lumaPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v26, v0, v6

    .line 323
    .local v26, "crPlane":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v6, 0x2

    aget-object v27, v0, v6

    .line 325
    .local v27, "cbPlane":Landroid/media/Image$Plane;
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    move-object/from16 v28, v0

    .line 327
    .local v28, "jpegParameters":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 328
    .local v29, "jpegIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, "jpegParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    :goto_4d
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 330
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    .line 331
    .local v6, "currentParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    iget-object v7, v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 332
    move-object v0, v6

    .line 333
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->remove()V

    .line 334
    goto :goto_6f

    .line 336
    .end local v6    # "currentParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    :cond_6e
    goto :goto_4d

    .line 337
    :cond_6f
    :goto_6f
    if-nez v0, :cond_9e

    .line 338
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 339
    const-string v6, "Empty jpeg settings queue! Using default jpeg orientation and quality!"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V

    move-object v0, v6

    .line 342
    iput v5, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    .line 343
    const/16 v5, 0x64

    iput v5, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    move-object v5, v0

    goto :goto_9f

    .line 345
    :cond_8b
    const-string v5, "No jpeg settings found with matching timestamp for current processed input!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v5, "Using values from the top of the queue!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    move-object v5, v0

    goto :goto_9f

    .line 337
    :cond_9e
    move-object v5, v0

    .line 352
    .end local v0    # "jpegParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    .local v5, "jpegParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    :goto_9f
    nop

    .line 353
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 354
    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    invoke-virtual/range {v25 .. v25}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 355
    invoke-virtual/range {v26 .. v26}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    invoke-virtual/range {v26 .. v26}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 356
    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    iget v0, v5, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    .line 358
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v22

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v23

    move/from16 v19, v0

    iget v0, v5, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    .line 352
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v24, v0

    invoke-static/range {v6 .. v24}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    .line 360
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/media/Image;->setTimestamp(J)V

    .line 361
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 364
    :try_start_ed
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_f2
    .catch Ljava/lang/IllegalStateException; {:try_start_ed .. :try_end_f2} :catch_f9
    .catchall {:try_start_ed .. :try_end_f2} :catchall_f7

    .line 368
    nop

    :goto_f3
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 369
    goto :goto_101

    .line 368
    :catchall_f7
    move-exception v0

    goto :goto_102

    .line 365
    :catch_f9
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_fa
    const-string v6, "Failed to queue encoded result!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_f7

    .line 368
    nop

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_f3

    .line 370
    :goto_101
    return-void

    .line 368
    :goto_102
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 369
    throw v0

    .line 305
    .end local v5    # "jpegParams":Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
    .end local v17    # "jpegBuffer":Ljava/nio/ByteBuffer;
    .end local v18    # "jpegCapacity":I
    .end local v25    # "lumaPlane":Landroid/media/Image$Plane;
    .end local v26    # "crPlane":Landroid/media/Image$Plane;
    .end local v27    # "cbPlane":Landroid/media/Image$Plane;
    .end local v28    # "jpegParameters":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;>;"
    .end local v29    # "jpegIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;>;"
    :catch_106
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    if-eqz v3, :cond_10c

    .line 307
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 309
    :cond_10c
    if-eqz v4, :cond_111

    .line 310
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 312
    :cond_111
    const-string v5, "Failed to acquire processed yuv image or jpeg image!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method
