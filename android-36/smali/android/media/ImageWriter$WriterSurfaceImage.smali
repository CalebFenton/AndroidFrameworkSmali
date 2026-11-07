.class Landroid/media/ImageWriter$WriterSurfaceImage;
.super Landroid/media/Image;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final greylist-max-o DEFAULT_TIMESTAMP:J

.field private final blacklist mCloseLock:Ljava/lang/Object;

.field private blacklist mDataSpace:I

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mNativeBuffer:J

.field private greylist-max-o mNativeFenceFd:I

.field private greylist-max-o mOwner:Landroid/media/ImageWriter;

.field private greylist-max-o mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

.field private greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private greylist-max-o mTransform:I

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/ImageWriter;)V
    .registers 5
    .param p1, "writer"    # Landroid/media/ImageWriter;

    .line 1058
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 1041
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    .line 1043
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1044
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1045
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1049
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->DEFAULT_TIMESTAMP:J

    .line 1050
    iput-wide v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    .line 1052
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTransform:I

    .line 1053
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mScalingMode:I

    .line 1055
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mCloseLock:Ljava/lang/Object;

    .line 1059
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    .line 1060
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1061
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1062
    invoke-static {p1}, Landroid/media/ImageWriter;->-$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1063
    return-void
.end method

.method private greylist-max-o clearSurfacePlanes()V
    .registers 4

    .line 1220
    iget-boolean v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-eqz v0, :cond_23

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 1222
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_20

    .line 1223
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->-$$Nest$mclearBuffer(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V

    .line 1224
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1221
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1228
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private synchronized native greylist-max-o nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.end method

.method private synchronized native blacklist nativeGetFormat(I)I
.end method

.method private synchronized native greylist-max-o nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;
.end method

.method private synchronized native greylist-max-o nativeGetHeight()I
.end method

.method private synchronized native greylist-max-o nativeGetWidth()I
.end method

.method private synchronized native blacklist nativeSetFenceFd(I)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1203
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_3
    iget-boolean v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_e

    .line 1205
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/media/ImageWriter;->-$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V

    .line 1207
    :cond_e
    monitor-exit v0

    .line 1208
    return-void

    .line 1207
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected final whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1213
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1216
    nop

    .line 1217
    return-void

    .line 1215
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1216
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 1067
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1069
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1150
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1151
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0

    .line 1153
    :cond_13
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()I
    .registers 3

    .line 1081
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1083
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 1084
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    invoke-direct {p0, v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetFormat(I)I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    .line 1086
    :cond_10
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1141
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1143
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 1102
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1104
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1105
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHeight()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    .line 1108
    :cond_e
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    return v0
.end method

.method greylist-max-o getNativeContext()J
    .registers 3

    .line 1196
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1198
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method greylist-max-o getOwner()Landroid/media/ImageWriter;
    .registers 2

    .line 1189
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1191
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    return-object v0
.end method

.method bridge synthetic blacklist getOwner()Ljava/lang/Object;
    .registers 2

    .line 1037
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .registers 3

    .line 1169
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1171
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    if-nez v0, :cond_1d

    .line 1172
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getFormat()I

    move-result v0

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    .line 1173
    .local v0, "numPlanes":I
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    .line 1176
    .end local v0    # "numPlanes":I
    :cond_1d
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .registers 2

    .line 1120
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1122
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mScalingMode:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 1127
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1129
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .registers 2

    .line 1113
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1115
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTransform:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 1091
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1093
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1094
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetWidth()I

    move-result v0

    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    .line 1097
    :cond_e
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    return v0
.end method

.method public greylist-max-o isAttachable()Z
    .registers 2

    .line 1181
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDataSpace(I)V
    .registers 2
    .param p1, "dataSpace"    # I

    .line 1074
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1076
    iput p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mDataSpace:I

    .line 1077
    return-void
.end method

.method public whitelist setFence(Landroid/hardware/SyncFence;)V
    .registers 3
    .param p1, "fence"    # Landroid/hardware/SyncFence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1160
    invoke-virtual {p1}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1161
    invoke-virtual {p1}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeSetFenceFd(I)V

    goto :goto_19

    .line 1163
    :cond_15
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeSetFenceFd(I)V

    .line 1165
    :goto_19
    return-void
.end method

.method public whitelist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 1134
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1136
    iput-wide p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    .line 1137
    return-void
.end method
