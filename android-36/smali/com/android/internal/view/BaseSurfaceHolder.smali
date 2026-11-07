.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final greylist-max-o mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field greylist-max-o mHaveGottenCallbacks:Z

.field greylist-max-o mLastLockTime:J

.field protected greylist-max-o mRequestedFormat:I

.field greylist-max-o mRequestedHeight:I

.field greylist-max-o mRequestedType:I

.field greylist-max-o mRequestedWidth:I

.field public greylist-max-o mSurface:Landroid/view/Surface;

.field final greylist-max-o mSurfaceFrame:Landroid/graphics/Rect;

.field public final greylist-max-o mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field greylist-max-o mTmpDirty:Landroid/graphics/Rect;

.field greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 43
    iput v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 45
    iput v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 46
    iput v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 48
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 50
    iput v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final greylist-max-o internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .registers 10
    .param p1, "dirty"    # Landroid/graphics/Rect;
    .param p2, "hardware"    # Z

    .line 172
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6b

    .line 176
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 182
    if-nez p1, :cond_27

    .line 183
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v1, :cond_1e

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    .line 186
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 187
    iget-object p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    .line 191
    :cond_27
    if-eqz p2, :cond_31

    .line 192
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "c":Landroid/graphics/Canvas;
    .local v1, "c":Landroid/graphics/Canvas;
    goto :goto_38

    .line 194
    .end local v1    # "c":Landroid/graphics/Canvas;
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :cond_31
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_39

    move-object v0, v1

    .line 198
    :goto_38
    goto :goto_41

    .line 196
    :catch_39
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BaseSurfaceHolder"

    const-string v3, "Exception locking surface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    if-eqz v0, :cond_4a

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 204
    return-object v0

    .line 210
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 211
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    .line 212
    .local v3, "nextTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_62

    .line 214
    sub-long v5, v3, v1

    :try_start_59
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 216
    goto :goto_5e

    .line 215
    :catch_5d
    move-exception v5

    .line 217
    :goto_5e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 219
    :cond_62
    iput-wide v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 220
    iget-object v5, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    const/4 v5, 0x0

    return-object v5

    .line 173
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "now":J
    .end local v3    # "nextTime":J
    :cond_6b
    new-instance v0, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v1, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v0, v1}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 75
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 79
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_10
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 5

    .line 91
    iget-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v0

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 96
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 97
    .local v1, "N":I
    if-lez v1, :cond_27

    .line 98
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    array-length v2, v2

    if-eq v2, v1, :cond_1f

    .line 99
    :cond_1b
    new-array v2, v1, [Landroid/view/SurfaceHolder$Callback;

    iput-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 101
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2a

    .line 103
    :cond_27
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 105
    :goto_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 106
    .end local v1    # "N":I
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_31

    .line 108
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v0

    .line 106
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public greylist-max-o getRequestedFormat()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    return v0
.end method

.method public greylist-max-o getRequestedHeight()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    return v0
.end method

.method public greylist-max-o getRequestedType()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    return v0
.end method

.method public greylist-max-o getRequestedWidth()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 3

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 3

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o onAllowLockCanvas()Z
.end method

.method public abstract greylist-max-o onRelayoutContainer()V
.end method

.method public abstract greylist-max-o onUpdateSurface()V
.end method

.method public whitelist removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 85
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setFixedSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 116
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    .line 117
    :cond_8
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 118
    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 121
    :cond_f
    return-void
.end method

.method public whitelist setFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 131
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    if-eq v0, p1, :cond_9

    .line 132
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    .line 135
    :cond_9
    return-void
.end method

.method public whitelist setSizeFromLayout()V
    .registers 3

    .line 124
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, v1, :cond_10

    .line 125
    :cond_9
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 128
    :cond_10
    return-void
.end method

.method public greylist-max-o setSurfaceFrameSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 239
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 242
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 243
    return-void
.end method

.method public whitelist setType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 138
    packed-switch p1, :pswitch_data_14

    goto :goto_5

    .line 142
    :pswitch_4
    const/4 p1, 0x0

    .line 145
    :goto_5
    sparse-switch p1, :sswitch_data_1c

    goto :goto_12

    .line 148
    :sswitch_9
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    if-eq v0, p1, :cond_12

    .line 149
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    .line 154
    :cond_12
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_9
        0x3 -> :sswitch_9
    .end sparse-switch
.end method

.method public greylist-max-o ungetCallbacks()V
    .registers 2

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    .line 113
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 226
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    return-void
.end method
