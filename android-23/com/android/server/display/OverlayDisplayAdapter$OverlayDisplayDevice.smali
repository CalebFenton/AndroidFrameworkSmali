.class abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private mActiveMode:I

.field private final mDefaultMode:I

.field private final mDisplayPresentationDeadlineNanos:J

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mModes:[Landroid/view/Display$Mode;

.field private final mName:Ljava/lang/String;

.field private final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:F

.field private final mSecure:Z

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "activeMode"    # I
    .param p6, "defaultMode"    # I
    .param p7, "refreshRate"    # F
    .param p8, "presentationDeadlineNanos"    # J
    .param p10, "secure"    # Z
    .param p11, "state"    # I
    .param p12, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p13, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJZI",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    .local p4, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, "overlay:"

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    move/from16 v0, p13

    #@10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    #@1b
    .line 243
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    #@1d
    .line 244
    iput p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    #@1f
    .line 245
    iput-wide p8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    #@21
    .line 246
    move/from16 v0, p10

    #@23
    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    #@25
    .line 247
    move/from16 v0, p11

    #@27
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    #@29
    .line 248
    move-object/from16 v0, p12

    #@2b
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2d
    .line 249
    iput-object p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    #@2f
    .line 250
    invoke-interface {p4}, Ljava/util/List;->size()I

    #@32
    move-result v3

    #@33
    new-array v3, v3, [Landroid/view/Display$Mode;

    #@35
    iput-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@37
    .line 251
    const/4 v1, 0x0

    #@38
    .local v1, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    #@3b
    move-result v3

    #@3c
    if-ge v1, v3, :cond_0

    #@3e
    .line 252
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    #@44
    .line 253
    .local v2, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@46
    iget v4, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    #@48
    iget v5, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    #@4a
    invoke-static {v4, v5, p7}, Lcom/android/server/display/OverlayDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    #@4d
    move-result-object v4

    #@4e
    aput-object v4, v3, v1

    #@50
    .line 251
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 255
    .end local v2    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_0
    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    #@55
    .line 256
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    #@57
    .line 241
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 260
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3
    .line 261
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 262
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@c
    .line 263
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@e
    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    #@15
    .line 259
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 285
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 286
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@7
    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    #@9
    aget-object v0, v2, v3

    #@b
    .line 287
    .local v0, "mode":Landroid/view/Display$Mode;
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    #@d
    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    #@f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    #@15
    .line 288
    .local v1, "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    #@17
    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1c
    .line 289
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1e
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    #@20
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@22
    .line 290
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@24
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@2a
    .line 291
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@2c
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@2f
    move-result v3

    #@30
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@32
    .line 292
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@34
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@37
    move-result v3

    #@38
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@3a
    .line 293
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3c
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    #@3f
    move-result v3

    #@40
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@42
    .line 294
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@44
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@46
    aget-object v3, v3, v10

    #@48
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    #@4b
    move-result v3

    #@4c
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@4e
    .line 295
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@50
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@52
    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@54
    .line 296
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@56
    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@58
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@5a
    .line 297
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5c
    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@5e
    int-to-float v3, v3

    #@5f
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@61
    .line 298
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@63
    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@65
    int-to-float v3, v3

    #@66
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@68
    .line 299
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@6a
    iget-wide v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    #@6c
    .line 300
    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    #@6e
    float-to-int v3, v3

    #@6f
    int-to-long v6, v3

    #@70
    const-wide/32 v8, 0x3b9aca00

    #@73
    div-long v6, v8, v6

    #@75
    .line 299
    add-long/2addr v4, v6

    #@76
    iput-wide v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@78
    .line 301
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7a
    const/16 v3, 0x40

    #@7c
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@7e
    .line 302
    iget-boolean v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    #@80
    if-eqz v2, :cond_0

    #@82
    .line 303
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@84
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@86
    or-int/lit8 v3, v3, 0x4

    #@88
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@8a
    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@8c
    const/4 v3, 0x4

    #@8d
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@8f
    .line 306
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@91
    iput v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@93
    .line 307
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@95
    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    #@97
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@99
    .line 309
    .end local v0    # "mode":Landroid/view/Display$Mode;
    .end local v1    # "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@9b
    return-object v2
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalInTransactionLocked()V
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 271
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 272
    new-instance v0, Landroid/view/Surface;

    #@a
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@c
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@f
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@11
    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    #@13
    invoke-virtual {p0, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    #@16
    .line 269
    :cond_1
    return-void
.end method

.method public requestModeInTransactionLocked(I)V
    .locals 5
    .param p1, "id"    # I

    #@0
    .prologue
    .line 314
    const/4 v1, -0x1

    #@1
    .line 315
    .local v1, "index":I
    if-nez p1, :cond_2

    #@3
    .line 317
    const/4 v1, 0x0

    #@4
    .line 326
    :cond_0
    :goto_0
    const/4 v2, -0x1

    #@5
    if-ne v1, v2, :cond_1

    #@7
    .line 327
    const-string/jumbo v2, "OverlayDisplayAdapter"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Unable to locate mode "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ", reverting to default."

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 328
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    #@2a
    .line 330
    :cond_1
    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    #@2c
    if-ne v2, v1, :cond_4

    #@2e
    .line 331
    return-void

    #@2f
    .line 319
    :cond_2
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@32
    array-length v2, v2

    #@33
    if-ge v0, v2, :cond_0

    #@35
    .line 320
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    #@37
    aget-object v2, v2, v0

    #@39
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    #@3c
    move-result v2

    #@3d
    if-ne v2, p1, :cond_3

    #@3f
    .line 321
    move v1, v0

    #@40
    .line 322
    goto :goto_0

    #@41
    .line 319
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_1

    #@44
    .line 333
    .end local v0    # "i":I
    :cond_4
    iput v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    #@46
    .line 334
    const/4 v2, 0x0

    #@47
    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@49
    .line 335
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@4b
    const/4 v3, 0x2

    #@4c
    invoke-virtual {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@4f
    .line 336
    invoke-virtual {p0, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->onModeChangedLocked(I)V

    #@52
    .line 313
    return-void
.end method

.method public setStateLocked(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 279
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    #@2
    .line 280
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5
    .line 278
    return-void
.end method
