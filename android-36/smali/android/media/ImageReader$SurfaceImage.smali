.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final blacklist mCloseLock:Ljava/lang/Object;

.field private blacklist mDataSpace:I

.field private greylist-max-o mFormat:I

.field private blacklist mHardwareBufferFormat:I

.field private greylist-max-o mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mNativeBuffer:J

.field private greylist-max-o mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransform:I

.field final synthetic blacklist this$0:Landroid/media/ImageReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .registers 2

    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/ImageReader;I)V
    .registers 5
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1167
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 1165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    .line 1429
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1430
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1431
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1433
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1168
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1169
    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mHardwareBufferFormat:I

    .line 1170
    invoke-static {p1}, Landroid/media/ImageReader;->-$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I

    move-result p1

    iput p1, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    .line 1171
    return-void
.end method

.method private greylist-max-o clearSurfacePlanes()V
    .registers 4

    .line 1345
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-eqz v0, :cond_23

    .line 1346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 1347
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_20

    .line 1348
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-$$Nest$mclearBuffer(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 1349
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1346
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1353
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private synchronized native blacklist nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native blacklist nativeGetFenceFd()I
.end method

.method private synchronized native greylist-max-o nativeGetFormat(I)I
.end method

.method private synchronized native greylist-max-o nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetHeight()I
.end method

.method private synchronized native greylist-max-o nativeGetWidth()I
.end method

.method private greylist-max-o setDetached(Z)V
    .registers 3
    .param p1, "detached"    # Z

    .line 1339
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1340
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1341
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1175
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_3
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1, p0}, Landroid/media/ImageReader;->-$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 1177
    monitor-exit v0

    .line 1178
    return-void

    .line 1177
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1314
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1316
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1317
    nop

    .line 1318
    return-void

    .line 1316
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1317
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 1289
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1290
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1273
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v0

    .line 1274
    .local v0, "fence":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1275
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFenceFd()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1

    .line 1277
    :cond_17
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getFormat()I
    .registers 3

    .line 1186
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1190
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    .line 1192
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    move v1, v0

    goto :goto_13

    .line 1193
    :cond_f
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v1

    :goto_13
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 1194
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    return v1
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1283
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1284
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 4

    .line 1223
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1225
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 1235
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    .local v0, "height":I
    goto :goto_16

    .line 1232
    .end local v0    # "height":I
    :sswitch_f
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    .line 1233
    .restart local v0    # "height":I
    nop

    .line 1237
    :goto_16
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1238
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    const/16 v2, 0x1006

    if-ne v1, v2, :cond_2a

    .line 1239
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    .line 1242
    :cond_2a
    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x24 -> :sswitch_f
        0x100 -> :sswitch_f
        0x101 -> :sswitch_f
        0x1005 -> :sswitch_f
        0x48454946 -> :sswitch_f
        0x69656963 -> :sswitch_f
    .end sparse-switch
.end method

.method greylist-max-o getNativeContext()J
    .registers 3

    .line 1334
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1335
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method greylist-max-o getOwner()Landroid/media/ImageReader;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1329
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method bridge synthetic blacklist getOwner()Ljava/lang/Object;
    .registers 2

    .line 1164
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlaneCount()I
    .registers 2

    .line 1265
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1266
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .registers 5

    .line 1301
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1303
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-nez v0, :cond_1f

    .line 1304
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I

    move-result v0

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1}, Landroid/media/ImageReader;->-$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I

    move-result v1

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-$$Nest$fgetmUsage(Landroid/media/ImageReader;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlanes(IIJ)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 1308
    :cond_1f
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getReader()Landroid/media/ImageReader;
    .registers 2

    .line 1181
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .registers 2

    .line 1259
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1260
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mScalingMode:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 1247
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1248
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .registers 2

    .line 1253
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1254
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTransform:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 4

    .line 1199
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1201
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 1211
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    .local v0, "width":I
    goto :goto_16

    .line 1208
    .end local v0    # "width":I
    :sswitch_f
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 1209
    .restart local v0    # "width":I
    nop

    .line 1213
    :goto_16
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1214
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    const/16 v2, 0x1006

    if-ne v1, v2, :cond_2a

    .line 1215
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 1218
    :cond_2a
    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x24 -> :sswitch_f
        0x100 -> :sswitch_f
        0x101 -> :sswitch_f
        0x1005 -> :sswitch_f
        0x48454946 -> :sswitch_f
        0x69656963 -> :sswitch_f
    .end sparse-switch
.end method

.method public greylist-max-o isAttachable()Z
    .registers 2

    .line 1322
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1323
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public whitelist setTimestamp(J)V
    .registers 3
    .param p1, "timestampNs"    # J

    .line 1295
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1296
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    .line 1297
    return-void
.end method
