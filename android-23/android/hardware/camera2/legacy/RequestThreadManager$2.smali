.class Landroid/hardware/camera2/legacy/RequestThreadManager$2;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 210
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@5
    move-result-object v9

    #@6
    const-string/jumbo v10, "Received jpeg."

    #@9
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 211
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@e
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    #@11
    move-result-object v9

    #@12
    invoke-virtual {v9}, Landroid/hardware/camera2/legacy/CaptureCollector;->jpegProduced()Landroid/util/Pair;

    #@15
    move-result-object v0

    #@16
    .line 212
    .local v0, "captureInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/RequestHolder;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    #@18
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    if-nez v9, :cond_1

    #@1c
    .line 213
    :cond_0
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@1e
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    const-string/jumbo v10, "Dropping jpeg frame."

    #@25
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 214
    return-void

    #@29
    .line 216
    :cond_1
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2b
    check-cast v3, Landroid/hardware/camera2/legacy/RequestHolder;

    #@2d
    .line 217
    .local v3, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2f
    check-cast v9, Ljava/lang/Long;

    #@31
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@34
    move-result-wide v6

    #@35
    .line 218
    .local v6, "timestamp":J
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    #@38
    move-result-object v9

    #@39
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v5

    #@3d
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_3

    #@43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Landroid/view/Surface;

    #@49
    .line 220
    .local v4, "s":Landroid/view/Surface;
    :try_start_0
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@4b
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get10(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v4, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_2

    #@55
    .line 221
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@57
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    const-string/jumbo v10, "Producing jpeg buffer..."

    #@5e
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 223
    array-length v9, p1

    #@62
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetJpegFooterSize()I

    #@65
    move-result v10

    #@66
    add-int v8, v9, v10

    #@68
    .line 224
    .local v8, "totalSize":I
    add-int/lit8 v9, v8, 0x3

    #@6a
    and-int/lit8 v8, v9, -0x4

    #@6c
    .line 225
    invoke-static {v4, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    #@6f
    .line 230
    const/4 v9, 0x1

    #@70
    .line 229
    invoke-static {v4, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    #@73
    .line 232
    int-to-double v10, v8

    #@74
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@77
    move-result-wide v10

    #@78
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    #@7b
    move-result-wide v10

    #@7c
    double-to-int v1, v10

    #@7d
    .line 233
    .local v1, "dimen":I
    add-int/lit8 v9, v1, 0xf

    #@7f
    and-int/lit8 v1, v9, -0x10

    #@81
    .line 234
    invoke-static {v4, v1, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    #@84
    .line 236
    const/16 v9, 0x21

    #@86
    .line 235
    invoke-static {v4, p1, v1, v1, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    goto :goto_0

    #@8a
    .line 243
    .end local v1    # "dimen":I
    .end local v8    # "totalSize":I
    :catch_0
    move-exception v2

    #@8b
    .line 244
    .local v2, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@8d
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    const-string/jumbo v10, "Surface abandoned, dropping frame. "

    #@94
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@97
    goto :goto_0

    #@98
    .line 248
    .end local v2    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v4    # "s":Landroid/view/Surface;
    :cond_3
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@9a
    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->open()V

    #@a1
    .line 209
    return-void
.end method
