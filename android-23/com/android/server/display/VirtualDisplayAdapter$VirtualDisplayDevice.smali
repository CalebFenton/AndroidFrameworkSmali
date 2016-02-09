.class final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualDisplayDevice"
.end annotation


# static fields
.field private static final PENDING_RESIZE:I = 0x2

.field private static final PENDING_SURFACE_CHANGE:I = 0x1

.field private static final REFRESH_RATE:F = 60.0f


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field private mDensityDpi:I

.field private mDisplayState:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mMode:Landroid/view/Display$Mode;

.field final mName:Ljava/lang/String;

.field final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private mPendingChanges:I

.field private mStopped:Z

.field private mSurface:Landroid/view/Surface;

.field private mUniqueIndex:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPackageName"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "densityDpi"    # I
    .param p10, "surface"    # Landroid/view/Surface;
    .param p11, "flags"    # I
    .param p12, "callback"    # Lcom/android/server/display/VirtualDisplayAdapter$Callback;
    .param p13, "uniqueId"    # Ljava/lang/String;
    .param p14, "uniqueIndex"    # I

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@2
    .line 192
    invoke-direct {p0, p1, p2, p13}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    #@5
    .line 193
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    #@7
    .line 194
    iput p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    #@9
    .line 195
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    #@b
    .line 196
    iput-object p6, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    #@d
    .line 197
    iput p7, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    #@f
    .line 198
    iput p8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    #@11
    .line 199
    const/high16 v0, 0x42700000    # 60.0f

    #@13
    invoke-static {p7, p8, v0}, Lcom/android/server/display/VirtualDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    #@19
    .line 200
    iput p9, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@1b
    .line 201
    iput-object p10, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@1d
    .line 202
    iput p11, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@1f
    .line 203
    iput-object p12, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    #@21
    .line 204
    const/4 v0, 0x0

    #@22
    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    #@24
    .line 205
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@26
    or-int/lit8 v0, v0, 0x1

    #@28
    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@2a
    .line 206
    iput p14, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    #@2c
    .line 191
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@9
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    #@b
    invoke-static {v0, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->-wrap0(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 210
    return-void

    #@10
    .line 211
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public destroyLocked(Z)V
    .locals 2
    .param p1, "binderAlive"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 217
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 218
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@7
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@a
    .line 219
    iput-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@c
    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    #@13
    .line 222
    if-eqz p1, :cond_1

    #@15
    .line 223
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    #@17
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayStopped()V

    #@1a
    .line 216
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mFlags="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mDisplayState="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    #@2a
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, "mStopped="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 282
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 292
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@4
    if-nez v1, :cond_4

    #@6
    .line 293
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    #@8
    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@d
    .line 294
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@f
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    #@11
    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@13
    .line 295
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@15
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    #@1b
    .line 296
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@1d
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    #@1f
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    #@21
    .line 297
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@23
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    #@25
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    #@27
    .line 298
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@29
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    #@2b
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    #@2e
    move-result v2

    #@2f
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    #@31
    .line 299
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@33
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    #@35
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    #@38
    move-result v2

    #@39
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    #@3b
    .line 300
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@3d
    new-array v2, v0, [Landroid/view/Display$Mode;

    #@3f
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    #@41
    aput-object v3, v2, v4

    #@43
    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@45
    .line 301
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@47
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@49
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    #@4b
    .line 302
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@4d
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@4f
    int-to-float v2, v2

    #@50
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    #@52
    .line 303
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@54
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@56
    int-to-float v2, v2

    #@57
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    #@59
    .line 304
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@5b
    const-wide/32 v2, 0xfe502a

    #@5e
    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    #@60
    .line 305
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@62
    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@64
    .line 306
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@66
    and-int/lit8 v1, v1, 0x1

    #@68
    if-nez v1, :cond_0

    #@6a
    .line 307
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@6c
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@6e
    or-int/lit8 v2, v2, 0x30

    #@70
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@72
    .line 310
    :cond_0
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@74
    and-int/lit8 v1, v1, 0x10

    #@76
    if-eqz v1, :cond_5

    #@78
    .line 311
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@7a
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@7c
    and-int/lit8 v2, v2, -0x21

    #@7e
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@80
    .line 316
    :goto_0
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@82
    and-int/lit8 v1, v1, 0x4

    #@84
    if-eqz v1, :cond_1

    #@86
    .line 317
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@88
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@8a
    or-int/lit8 v2, v2, 0x4

    #@8c
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@8e
    .line 319
    :cond_1
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@90
    and-int/lit8 v1, v1, 0x2

    #@92
    if-eqz v1, :cond_2

    #@94
    .line 320
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@96
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@98
    or-int/lit8 v2, v2, 0x40

    #@9a
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@9c
    .line 322
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    #@9e
    and-int/lit8 v1, v1, 0x1

    #@a0
    if-eqz v1, :cond_2

    #@a2
    .line 325
    const-string/jumbo v1, "portrait"

    #@a5
    .line 326
    const-string/jumbo v2, "persist.demo.remoterotation"

    #@a8
    .line 325
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v1

    #@b0
    if-eqz v1, :cond_2

    #@b2
    .line 327
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@b4
    const/4 v2, 0x3

    #@b5
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    #@b7
    .line 331
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@b9
    const/4 v2, 0x5

    #@ba
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    #@bc
    .line 332
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@be
    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@c0
    .line 333
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@c2
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@c4
    if-eqz v2, :cond_3

    #@c6
    const/4 v0, 0x2

    #@c7
    :cond_3
    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@c9
    .line 334
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@cb
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    #@cd
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    #@cf
    .line 335
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@d1
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    #@d3
    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    #@d5
    .line 337
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@d7
    return-object v0

    #@d8
    .line 313
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@da
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@dc
    or-int/lit16 v2, v2, 0x80

    #@de
    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@e0
    goto :goto_0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 242
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@3
    and-int/lit8 v0, v0, 0x2

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 243
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    #@d
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    #@f
    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->setDisplaySize(Landroid/os/IBinder;II)V

    #@12
    .line 245
    :cond_0
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@14
    and-int/lit8 v0, v0, 0x1

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 246
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    #@1d
    .line 248
    :cond_1
    iput v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@1f
    .line 241
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    .line 229
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 230
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    #@6
    .line 231
    const/4 v0, 0x1

    #@7
    if-ne p1, v0, :cond_1

    #@9
    .line 232
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    #@b
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayPaused()V

    #@e
    .line 237
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@f
    return-object v0

    #@10
    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    #@12
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayResumed()V

    #@15
    goto :goto_0
.end method

.method public resizeLocked(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    #@0
    .prologue
    .line 264
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    #@6
    if-eq v0, p2, :cond_2

    #@8
    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@e
    .line 266
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@10
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    #@13
    .line 267
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    #@15
    .line 268
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    #@17
    .line 269
    const/high16 v0, 0x42700000    # 60.0f

    #@19
    invoke-static {p1, p2, v0}, Lcom/android/server/display/VirtualDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    #@1f
    .line 270
    iput p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@21
    .line 271
    const/4 v0, 0x0

    #@22
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@24
    .line 272
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@26
    or-int/lit8 v0, v0, 0x2

    #@28
    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@2a
    .line 263
    :cond_1
    return-void

    #@2b
    .line 264
    :cond_2
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    #@2d
    if-eq v0, p3, :cond_1

    #@2f
    goto :goto_0
.end method

.method public setSurfaceLocked(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 252
    iget-boolean v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    #@5
    if-nez v2, :cond_1

    #@7
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@9
    if-eq v2, p1, :cond_1

    #@b
    .line 253
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@d
    if-eqz v2, :cond_2

    #@f
    move v2, v0

    #@10
    :goto_0
    if-eqz p1, :cond_3

    #@12
    :goto_1
    if-eq v2, v0, :cond_0

    #@14
    .line 254
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@1a
    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    #@1f
    .line 257
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    #@21
    .line 258
    iput-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@23
    .line 259
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@25
    or-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    #@29
    .line 251
    :cond_1
    return-void

    #@2a
    :cond_2
    move v2, v1

    #@2b
    .line 253
    goto :goto_0

    #@2c
    :cond_3
    move v0, v1

    #@2d
    goto :goto_1
.end method

.method public stopLocked()V
    .locals 1

    #@0
    .prologue
    .line 277
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    #@4
    .line 278
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    #@7
    .line 276
    return-void
.end method
