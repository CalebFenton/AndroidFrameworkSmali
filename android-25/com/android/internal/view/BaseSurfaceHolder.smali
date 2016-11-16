.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field mHaveGottenCallbacks:Z

.field mLastLockTime:J

.field protected mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedWidth:I

.field public mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTmpDirty:Landroid/graphics/Rect;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 34
    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@b
    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    .line 40
    new-instance v0, Landroid/view/Surface;

    #@14
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@19
    .line 42
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@1b
    .line 43
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@1d
    .line 45
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    #@1f
    .line 46
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    #@21
    .line 48
    const-wide/16 v0, 0x0

    #@23
    iput-wide v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    #@25
    .line 50
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    #@27
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    #@29
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@2e
    .line 30
    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 13
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 165
    iget v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    #@3
    const/4 v8, 0x3

    #@4
    if-ne v3, v8, :cond_0

    #@6
    .line 166
    new-instance v3, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    #@8
    .line 167
    const-string/jumbo v8, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    #@b
    .line 166
    invoke-direct {v3, v8}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@14
    .line 173
    const/4 v0, 0x0

    #@15
    .line 174
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 175
    if-nez p1, :cond_2

    #@1d
    .line 176
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 177
    new-instance v3, Landroid/graphics/Rect;

    #@23
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    #@28
    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    #@2a
    iget-object v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2f
    .line 180
    iget-object p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    #@31
    .line 184
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@33
    invoke-virtual {v3, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result-object v0

    #@37
    .line 191
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    #@39
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3c
    move-result-wide v8

    #@3d
    iput-wide v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    #@3f
    .line 193
    return-object v0

    #@40
    .line 185
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    #@41
    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BaseSurfaceHolder"

    #@44
    const-string/jumbo v8, "Exception locking surface"

    #@47
    invoke-static {v3, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_0

    #@4b
    .line 199
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4e
    move-result-wide v6

    #@4f
    .line 200
    .local v6, "now":J
    iget-wide v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    #@51
    const-wide/16 v10, 0x64

    #@53
    add-long v4, v8, v10

    #@55
    .line 201
    .local v4, "nextTime":J
    cmp-long v3, v4, v6

    #@57
    if-lez v3, :cond_5

    #@59
    .line 203
    sub-long v8, v4, v6

    #@5b
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@5e
    .line 206
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@61
    move-result-wide v6

    #@62
    .line 208
    :cond_5
    iput-wide v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    #@64
    .line 209
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@66
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@69
    .line 211
    return-object v12

    #@6a
    .line 204
    :catch_1
    move-exception v2

    #@6b
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 79
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 74
    return-void

    #@12
    .line 75
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 4

    #@0
    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 92
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@6
    return-object v1

    #@7
    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@9
    monitor-enter v2

    #@a
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 97
    .local v0, "N":I
    if-lez v0, :cond_3

    #@12
    .line 98
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@14
    if-eqz v1, :cond_1

    #@16
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@18
    array-length v1, v1

    #@19
    if-eq v1, v0, :cond_2

    #@1b
    .line 99
    :cond_1
    new-array v1, v0, [Landroid/view/SurfaceHolder$Callback;

    #@1d
    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@1f
    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@21
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26
    .line 105
    :goto_0
    const/4 v1, 0x1

    #@27
    iput-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 108
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    #@2c
    return-object v1

    #@2d
    .line 103
    :cond_3
    const/4 v1, 0x0

    #@2e
    :try_start_1
    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 95
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method

.method public getRequestedFormat()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    #@2
    return v0
.end method

.method public getRequestedHeight()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@2
    return v0
.end method

.method public getRequestedType()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    #@2
    return v0
.end method

.method public getRequestedWidth()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 157
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 84
    return-void

    #@a
    .line 85
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 117
    :cond_0
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@a
    .line 118
    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@c
    .line 119
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    #@f
    .line 115
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 132
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    #@6
    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    #@9
    .line 130
    :cond_0
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 124
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 125
    :cond_0
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    #@b
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    #@d
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    #@10
    .line 123
    :cond_1
    return-void
.end method

.method public setSurfaceFrameSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 228
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@3
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@5
    .line 229
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@7
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@9
    .line 230
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@b
    iput p1, v0, Landroid/graphics/Rect;->right:I

    #@d
    .line 231
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    #@f
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    #@11
    .line 227
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    #@3
    .line 145
    :goto_0
    packed-switch p1, :pswitch_data_1

    #@6
    .line 137
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    #@7
    .line 142
    :pswitch_1
    const/4 p1, 0x0

    #@8
    .line 143
    goto :goto_0

    #@9
    .line 148
    :pswitch_2
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    #@b
    if-eq v0, p1, :cond_0

    #@d
    .line 149
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    #@f
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    #@12
    goto :goto_1

    #@13
    .line 138
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@1c
    .line 145
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public ungetCallbacks()V
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    #@3
    .line 111
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@5
    .line 216
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 214
    return-void
.end method
