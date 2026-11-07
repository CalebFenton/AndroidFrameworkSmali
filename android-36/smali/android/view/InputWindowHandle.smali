.class public final Landroid/view/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputWindowHandle$InputConfigFlags;
    }
.end annotation


# instance fields
.field public blacklist alpha:F

.field public blacklist canOccludePresentation:Z

.field public blacklist contentSize:Landroid/util/Size;

.field public blacklist dispatchingTimeoutMillis:J

.field public blacklist displayId:I

.field public blacklist focusTransferTarget:Landroid/os/IBinder;

.field public final blacklist frame:Landroid/graphics/Rect;

.field public blacklist inputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public blacklist inputConfig:I

.field public blacklist layoutParamsFlags:I

.field public blacklist layoutParamsType:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist ownerPid:I

.field public blacklist ownerUid:I

.field public blacklist packageName:Ljava/lang/String;

.field private blacklist ptr:J

.field public blacklist replaceTouchableRegionWithCrop:Z

.field public blacklist scaleFactor:F

.field public blacklist surfaceInset:I

.field public blacklist token:Landroid/os/IBinder;

.field public blacklist touchOcclusionMode:I

.field public final blacklist touchableRegion:Landroid/graphics/Region;

.field public blacklist touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist transform:Landroid/graphics/Matrix;

.field private blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputApplicationHandle;I)V
    .registers 5
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "displayId"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    .line 117
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 182
    iput-object p1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 183
    iput p2, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 184
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputWindowHandle;)V
    .registers 5
    .param p1, "other"    # Landroid/view/InputWindowHandle;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    .line 117
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/InputWindowHandle;->ptr:J

    .line 189
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 190
    iget-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 191
    iget-object v0, p1, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 192
    iget-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 193
    iget v0, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 194
    iget v0, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 195
    iget-wide v0, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-wide v0, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 196
    iget-object v0, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    iget v0, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    iput v0, p0, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 198
    iget v0, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput v0, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 199
    iget-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 200
    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 201
    iget v0, p1, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 202
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 203
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 204
    iget-object v0, p1, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 205
    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v0, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 206
    iget-object v0, p1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 207
    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 208
    iget-object v0, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_90

    .line 209
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 210
    iget-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 212
    :cond_90
    iget-object v0, p1, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    .line 213
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    .line 214
    iget v0, p1, Landroid/view/InputWindowHandle;->alpha:F

    iput v0, p0, Landroid/view/InputWindowHandle;->alpha:F

    .line 215
    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    .line 216
    return-void
.end method

.method private native blacklist nativeDispose()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-direct {p0}, Landroid/view/InputWindowHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 240
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 241
    throw v0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 252
    invoke-virtual {p0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 254
    return-void
.end method

.method public blacklist setInputConfig(IZ)V
    .registers 5
    .param p1, "inputConfig"    # I
    .param p2, "value"    # Z

    .line 286
    if-eqz p2, :cond_8

    .line 287
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 288
    return-void

    .line 290
    :cond_8
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 291
    return-void
.end method

.method public blacklist setTouchableRegion(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 268
    iget-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 269
    return-void
.end method

.method public blacklist setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 261
    return-void
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "isTrusted"    # Z

    .line 295
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->surfaceTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_12

    .line 297
    :cond_a
    if-eqz p3, :cond_12

    .line 298
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 300
    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setWindowToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "iwindow"    # Landroid/os/IBinder;

    .line 273
    iput-object p1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 274
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v1, ", frame=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    const-string v1, ", windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    const-string v1, ", isClone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string v1, ", contentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    const-string v1, ", canOccludePresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method
