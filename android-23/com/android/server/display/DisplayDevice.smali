.class abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# instance fields
.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private mCurrentLayerStack:I

.field private mCurrentLayerStackRect:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private mCurrentSurface:Landroid/view/Surface;

.field mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field private final mDisplayToken:Landroid/os/IBinder;

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayAdapter"    # Lcom/android/server/display/DisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    #@6
    .line 43
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@8
    .line 56
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    #@a
    .line 57
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@c
    .line 58
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    #@e
    .line 55
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 0

    #@0
    .prologue
    .line 114
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mAdapter="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    #@e
    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "mUniqueId="

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v1, "mDisplayToken="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v1, "mCurrentLayerStack="

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v1, "mCurrentOrientation="

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v1, "mCurrentLayerStackRect="

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v1, "mCurrentDisplayRect="

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b3
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v1, "mCurrentSurface="

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v0

    #@bf
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 225
    return-void
.end method

.method public final getAdapterLocked()Lcom/android/server/display/DisplayAdapter;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    #@2
    return-object v0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 0

    #@0
    .prologue
    .line 120
    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .locals 4
    .param p1, "viewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 200
    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@2
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@4
    .line 202
    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 203
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@a
    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 209
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@15
    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1a
    .line 214
    :goto_1
    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@1c
    const/4 v3, 0x1

    #@1d
    if-eq v2, v3, :cond_2

    #@1f
    .line 215
    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@21
    const/4 v3, 0x3

    #@22
    if-ne v2, v3, :cond_3

    #@24
    const/4 v1, 0x1

    #@25
    .line 216
    .local v1, "isRotated":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@28
    move-result-object v0

    #@29
    .line 217
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz v1, :cond_4

    #@2b
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@2d
    :goto_3
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    #@2f
    .line 218
    if-eqz v1, :cond_5

    #@31
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@33
    :goto_4
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    #@35
    .line 199
    return-void

    #@36
    .line 205
    .end local v0    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v1    # "isRotated":Z
    :cond_0
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@3b
    goto :goto_0

    #@3c
    .line 211
    :cond_1
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@41
    goto :goto_1

    #@42
    .line 214
    :cond_2
    const/4 v1, 0x1

    #@43
    .restart local v1    # "isRotated":Z
    goto :goto_2

    #@44
    .line 215
    .end local v1    # "isRotated":Z
    :cond_3
    const/4 v1, 0x0

    #@45
    .restart local v1    # "isRotated":Z
    goto :goto_2

    #@46
    .line 217
    .restart local v0    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_4
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@48
    goto :goto_3

    #@49
    .line 218
    :cond_5
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@4b
    goto :goto_4
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public requestModeInTransactionLocked(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 138
    return-void
.end method

.method public final setLayerStackInTransactionLocked(I)V
    .locals 1
    .param p1, "layerStack"    # I

    #@0
    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 146
    iput p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    #@6
    .line 147
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@8
    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V

    #@b
    .line 144
    :cond_0
    return-void
.end method

.method public final setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 163
    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 164
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@6
    if-nez v0, :cond_3

    #@8
    .line 168
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    #@a
    .line 170
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 171
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@15
    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1a
    .line 175
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 176
    new-instance v0, Landroid/graphics/Rect;

    #@20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@25
    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@27
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2a
    .line 180
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@2c
    invoke-static {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2f
    .line 162
    :goto_0
    return-void

    #@30
    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 166
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 167
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_0

    #@44
    goto :goto_0
.end method

.method public final setSurfaceInTransactionLocked(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 190
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    #@6
    .line 191
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    #@8
    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V

    #@b
    .line 188
    :cond_0
    return-void
.end method
