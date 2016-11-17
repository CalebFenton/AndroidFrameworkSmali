.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@2
    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1236
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@c
    .line 1828
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@e
    .line 1237
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@10
    .line 1238
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@12
    .line 1239
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@14
    .line 1240
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@16
    .line 1241
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@18
    .line 1242
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@1a
    .line 1235
    return-void
.end method

.method private guardedRun()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1284
    new-instance v21, Landroid/opengl/GLSurfaceView$EglHelper;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@6
    move-object/from16 v22, v0

    #@8
    invoke-direct/range {v21 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    #@b
    move-object/from16 v0, v21

    #@d
    move-object/from16 v1, p0

    #@f
    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@11
    .line 1285
    const/16 v21, 0x0

    #@13
    move/from16 v0, v21

    #@15
    move-object/from16 v1, p0

    #@17
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@19
    .line 1286
    const/16 v21, 0x0

    #@1b
    move/from16 v0, v21

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@21
    .line 1287
    const/16 v21, 0x0

    #@23
    move/from16 v0, v21

    #@25
    move-object/from16 v1, p0

    #@27
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@29
    .line 1290
    const/4 v10, 0x0

    #@2a
    .line 1291
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    #@2b
    .line 1292
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    #@2c
    .line 1293
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    #@2d
    .line 1294
    .local v7, "createGlInterface":Z
    const/4 v12, 0x0

    #@2e
    .line 1295
    .local v12, "lostEglContext":Z
    const/4 v15, 0x0

    #@2f
    .line 1296
    .local v15, "sizeChanged":Z
    const/16 v20, 0x0

    #@31
    .line 1297
    .local v20, "wantRenderNotification":Z
    const/4 v8, 0x0

    #@32
    .line 1298
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    #@33
    .line 1299
    .local v4, "askedToReleaseEglContext":Z
    const/16 v19, 0x0

    #@35
    .line 1300
    .local v19, "w":I
    const/4 v11, 0x0

    #@36
    .line 1301
    .local v11, "h":I
    const/4 v9, 0x0

    #@37
    .line 1304
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3a
    move-result-object v22

    #@3b
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3c
    .line 1306
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@3e
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@40
    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@42
    if-eqz v21, :cond_1

    #@44
    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@45
    .line 1593
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@48
    move-result-object v22

    #@49
    monitor-enter v22

    #@4a
    .line 1594
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@4d
    .line 1595
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit v22

    #@51
    .line 1307
    return-void

    #@52
    .line 1593
    :catchall_0
    move-exception v21

    #@53
    monitor-exit v22

    #@54
    throw v21

    #@55
    .line 1310
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@59
    move-object/from16 v21, v0

    #@5b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    #@5e
    move-result v21

    #@5f
    if-nez v21, :cond_3

    #@61
    .line 1311
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@65
    move-object/from16 v21, v0

    #@67
    const/16 v23, 0x0

    #@69
    move-object/from16 v0, v21

    #@6b
    move/from16 v1, v23

    #@6d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@70
    move-result-object v21

    #@71
    move-object/from16 v0, v21

    #@73
    check-cast v0, Ljava/lang/Runnable;

    #@75
    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@76
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v22

    #@77
    .line 1480
    if-eqz v9, :cond_17

    #@79
    .line 1481
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@7c
    .line 1482
    const/4 v9, 0x0

    #@7d
    .local v9, "event":Ljava/lang/Runnable;
    goto :goto_0

    #@7e
    .line 1316
    .end local v9    # "event":Ljava/lang/Runnable;
    :cond_3
    const/4 v13, 0x0

    #@7f
    .line 1317
    .local v13, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    #@81
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@83
    move/from16 v21, v0

    #@85
    move-object/from16 v0, p0

    #@87
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@89
    move/from16 v23, v0

    #@8b
    move/from16 v0, v21

    #@8d
    move/from16 v1, v23

    #@8f
    if-eq v0, v1, :cond_4

    #@91
    .line 1318
    move-object/from16 v0, p0

    #@93
    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@95
    .line 1319
    .local v13, "pausing":Z
    move-object/from16 v0, p0

    #@97
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@99
    move/from16 v21, v0

    #@9b
    move/from16 v0, v21

    #@9d
    move-object/from16 v1, p0

    #@9f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@a1
    .line 1320
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@a4
    move-result-object v21

    #@a5
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a8
    .line 1327
    .end local v13    # "pausing":Z
    :cond_4
    move-object/from16 v0, p0

    #@aa
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@ac
    move/from16 v21, v0

    #@ae
    if-eqz v21, :cond_5

    #@b0
    .line 1331
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@b3
    .line 1332
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@b6
    .line 1333
    const/16 v21, 0x0

    #@b8
    move/from16 v0, v21

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@be
    .line 1334
    const/4 v4, 0x1

    #@bf
    .line 1338
    :cond_5
    if-eqz v12, :cond_6

    #@c1
    .line 1339
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@c4
    .line 1340
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@c7
    .line 1341
    const/4 v12, 0x0

    #@c8
    .line 1345
    :cond_6
    if-eqz v13, :cond_7

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@ce
    move/from16 v21, v0

    #@d0
    if-eqz v21, :cond_7

    #@d2
    .line 1349
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@d5
    .line 1353
    :cond_7
    if-eqz v13, :cond_9

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@db
    move/from16 v21, v0

    #@dd
    if-eqz v21, :cond_9

    #@df
    .line 1354
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@e3
    move-object/from16 v21, v0

    #@e5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e8
    move-result-object v18

    #@e9
    check-cast v18, Landroid/opengl/GLSurfaceView;

    #@eb
    .line 1355
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-nez v18, :cond_11

    #@ed
    .line 1356
    const/4 v14, 0x0

    #@ee
    .line 1357
    .local v14, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v14, :cond_8

    #@f0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@f3
    move-result-object v21

    #@f4
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    #@f7
    move-result v21

    #@f8
    if-eqz v21, :cond_9

    #@fa
    .line 1358
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    #@fd
    .line 1366
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_9
    if-eqz v13, :cond_a

    #@ff
    .line 1367
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@102
    move-result-object v21

    #@103
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    #@106
    move-result v21

    #@107
    if-eqz v21, :cond_a

    #@109
    .line 1368
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@10d
    move-object/from16 v21, v0

    #@10f
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    #@112
    .line 1376
    :cond_a
    move-object/from16 v0, p0

    #@114
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@116
    move/from16 v21, v0

    #@118
    if-nez v21, :cond_b

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@11e
    move/from16 v21, v0

    #@120
    if-eqz v21, :cond_12

    #@122
    .line 1389
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    #@124
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@126
    move/from16 v21, v0

    #@128
    if-eqz v21, :cond_c

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@12e
    move/from16 v21, v0

    #@130
    if-eqz v21, :cond_c

    #@132
    .line 1393
    const/16 v21, 0x0

    #@134
    move/from16 v0, v21

    #@136
    move-object/from16 v1, p0

    #@138
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@13a
    .line 1394
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@13d
    move-result-object v21

    #@13e
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@141
    .line 1397
    :cond_c
    if-eqz v8, :cond_d

    #@143
    .line 1401
    const/16 v21, 0x0

    #@145
    move/from16 v0, v21

    #@147
    move-object/from16 v1, p0

    #@149
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@14b
    .line 1402
    const/4 v8, 0x0

    #@14c
    .line 1403
    const/16 v21, 0x1

    #@14e
    move/from16 v0, v21

    #@150
    move-object/from16 v1, p0

    #@152
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@154
    .line 1404
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@157
    move-result-object v21

    #@158
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@15b
    .line 1408
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    #@15e
    move-result v21

    #@15f
    if-eqz v21, :cond_16

    #@161
    .line 1411
    move-object/from16 v0, p0

    #@163
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@165
    move/from16 v21, v0

    #@167
    if-nez v21, :cond_e

    #@169
    .line 1412
    if-eqz v4, :cond_14

    #@16b
    .line 1413
    const/4 v4, 0x0

    #@16c
    .line 1428
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    #@16e
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@170
    move/from16 v21, v0

    #@172
    if-eqz v21, :cond_f

    #@174
    move-object/from16 v0, p0

    #@176
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@178
    move/from16 v21, v0

    #@17a
    if-eqz v21, :cond_15

    #@17c
    .line 1435
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    #@17e
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@180
    move/from16 v21, v0

    #@182
    if-eqz v21, :cond_16

    #@184
    .line 1436
    move-object/from16 v0, p0

    #@186
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@188
    move/from16 v21, v0

    #@18a
    if-eqz v21, :cond_10

    #@18c
    .line 1437
    const/4 v15, 0x1

    #@18d
    .line 1438
    move-object/from16 v0, p0

    #@18f
    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@191
    move/from16 v19, v0

    #@193
    .line 1439
    move-object/from16 v0, p0

    #@195
    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@197
    .line 1440
    const/16 v21, 0x1

    #@199
    move/from16 v0, v21

    #@19b
    move-object/from16 v1, p0

    #@19d
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@19f
    .line 1448
    const/4 v6, 0x1

    #@1a0
    .line 1450
    const/16 v21, 0x0

    #@1a2
    move/from16 v0, v21

    #@1a4
    move-object/from16 v1, p0

    #@1a6
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@1a8
    .line 1452
    :cond_10
    const/16 v21, 0x0

    #@1aa
    move/from16 v0, v21

    #@1ac
    move-object/from16 v1, p0

    #@1ae
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@1b0
    .line 1453
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1b3
    move-result-object v21

    #@1b4
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@1b7
    .line 1454
    move-object/from16 v0, p0

    #@1b9
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@1bb
    move/from16 v21, v0

    #@1bd
    if-eqz v21, :cond_2

    #@1bf
    .line 1455
    const/16 v20, 0x1

    #@1c1
    goto/16 :goto_2

    #@1c3
    .line 1356
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_11
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z

    #@1c6
    move-result v14

    #@1c7
    goto/16 :goto_3

    #@1c9
    .line 1380
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_12
    move-object/from16 v0, p0

    #@1cb
    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@1cd
    move/from16 v21, v0

    #@1cf
    if-eqz v21, :cond_13

    #@1d1
    .line 1381
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1d4
    .line 1383
    :cond_13
    const/16 v21, 0x1

    #@1d6
    move/from16 v0, v21

    #@1d8
    move-object/from16 v1, p0

    #@1da
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@1dc
    .line 1384
    const/16 v21, 0x0

    #@1de
    move/from16 v0, v21

    #@1e0
    move-object/from16 v1, p0

    #@1e2
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@1e4
    .line 1385
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1e7
    move-result-object v21

    #@1e8
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1eb
    goto/16 :goto_4

    #@1ed
    .line 1304
    :catchall_1
    move-exception v21

    #@1ee
    :try_start_7
    monitor-exit v22

    #@1ef
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@1f0
    .line 1589
    :catchall_2
    move-exception v21

    #@1f1
    .line 1593
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1f4
    move-result-object v22

    #@1f5
    monitor-enter v22

    #@1f6
    .line 1594
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    #@1f9
    .line 1595
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    #@1fc
    monitor-exit v22

    #@1fd
    .line 1589
    throw v21

    #@1fe
    .line 1414
    :cond_14
    :try_start_9
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@201
    move-result-object v21

    #@202
    move-object/from16 v0, v21

    #@204
    move-object/from16 v1, p0

    #@206
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@209
    move-result v21

    #@20a
    if-eqz v21, :cond_e

    #@20c
    .line 1416
    :try_start_a
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@210
    move-object/from16 v21, v0

    #@212
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@215
    .line 1421
    const/16 v21, 0x1

    #@217
    :try_start_b
    move/from16 v0, v21

    #@219
    move-object/from16 v1, p0

    #@21b
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@21d
    .line 1422
    const/4 v5, 0x1

    #@21e
    .line 1424
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@221
    move-result-object v21

    #@222
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@225
    goto/16 :goto_5

    #@227
    .line 1417
    :catch_0
    move-exception v17

    #@228
    .line 1418
    .local v17, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@22b
    move-result-object v21

    #@22c
    move-object/from16 v0, v21

    #@22e
    move-object/from16 v1, p0

    #@230
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@233
    .line 1419
    throw v17

    #@234
    .line 1429
    .end local v17    # "t":Ljava/lang/RuntimeException;
    :cond_15
    const/16 v21, 0x1

    #@236
    move/from16 v0, v21

    #@238
    move-object/from16 v1, p0

    #@23a
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@23c
    .line 1430
    const/4 v6, 0x1

    #@23d
    .line 1431
    const/4 v7, 0x1

    #@23e
    .line 1432
    const/4 v15, 0x1

    #@23f
    goto/16 :goto_6

    #@241
    .line 1476
    :cond_16
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@244
    move-result-object v21

    #@245
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@248
    goto/16 :goto_1

    #@24a
    .line 1486
    :cond_17
    if-eqz v6, :cond_18

    #@24c
    .line 1490
    :try_start_c
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@250
    move-object/from16 v21, v0

    #@252
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    #@255
    move-result v21

    #@256
    if-eqz v21, :cond_1f

    #@258
    .line 1491
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@25b
    move-result-object v22

    #@25c
    monitor-enter v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@25d
    .line 1492
    const/16 v21, 0x1

    #@25f
    :try_start_d
    move/from16 v0, v21

    #@261
    move-object/from16 v1, p0

    #@263
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@265
    .line 1493
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@268
    move-result-object v21

    #@269
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@26c
    :try_start_e
    monitor-exit v22

    #@26d
    .line 1503
    const/4 v6, 0x0

    #@26e
    .line 1506
    :cond_18
    if-eqz v7, :cond_19

    #@270
    .line 1507
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@274
    move-object/from16 v21, v0

    #@276
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    #@279
    move-result-object v21

    #@27a
    move-object/from16 v0, v21

    #@27c
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    #@27e
    move-object v10, v0

    #@27f
    .line 1509
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@282
    move-result-object v21

    #@283
    move-object/from16 v0, v21

    #@285
    invoke-virtual {v0, v10}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    #@288
    .line 1510
    const/4 v7, 0x0

    #@289
    .line 1513
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_19
    if-eqz v5, :cond_1b

    #@28b
    .line 1517
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@28f
    move-object/from16 v21, v0

    #@291
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@294
    move-result-object v18

    #@295
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@297
    .line 1518
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1a

    #@299
    .line 1520
    :try_start_f
    const-string/jumbo v21, "onSurfaceCreated"

    #@29c
    const-wide/16 v22, 0x8

    #@29e
    move-wide/from16 v0, v22

    #@2a0
    move-object/from16 v2, v21

    #@2a2
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2a5
    .line 1521
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2a8
    move-result-object v21

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@2ad
    move-object/from16 v22, v0

    #@2af
    move-object/from16 v0, v22

    #@2b1
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    #@2b3
    move-object/from16 v22, v0

    #@2b5
    move-object/from16 v0, v21

    #@2b7
    move-object/from16 v1, v22

    #@2b9
    invoke-interface {v0, v10, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    #@2bc
    .line 1523
    const-wide/16 v22, 0x8

    #@2be
    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2c1
    .line 1526
    :cond_1a
    const/4 v5, 0x0

    #@2c2
    .line 1529
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1b
    if-eqz v15, :cond_1d

    #@2c4
    .line 1533
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2c8
    move-object/from16 v21, v0

    #@2ca
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2cd
    move-result-object v18

    #@2ce
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@2d0
    .line 1534
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1c

    #@2d2
    .line 1536
    :try_start_11
    const-string/jumbo v21, "onSurfaceChanged"

    #@2d5
    const-wide/16 v22, 0x8

    #@2d7
    move-wide/from16 v0, v22

    #@2d9
    move-object/from16 v2, v21

    #@2db
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2de
    .line 1537
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@2e1
    move-result-object v21

    #@2e2
    move-object/from16 v0, v21

    #@2e4
    move/from16 v1, v19

    #@2e6
    invoke-interface {v0, v10, v1, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    #@2e9
    .line 1539
    const-wide/16 v22, 0x8

    #@2eb
    :try_start_12
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@2ee
    .line 1542
    :cond_1c
    const/4 v15, 0x0

    #@2ef
    .line 1549
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1d
    move-object/from16 v0, p0

    #@2f1
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    #@2f3
    move-object/from16 v21, v0

    #@2f5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2f8
    move-result-object v18

    #@2f9
    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    #@2fb
    .line 1550
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1e

    #@2fd
    .line 1552
    :try_start_13
    const-string/jumbo v21, "onDrawFrame"

    #@300
    const-wide/16 v22, 0x8

    #@302
    move-wide/from16 v0, v22

    #@304
    move-object/from16 v2, v21

    #@306
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@309
    .line 1553
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    #@30c
    move-result-object v21

    #@30d
    move-object/from16 v0, v21

    #@30f
    invoke-interface {v0, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    #@312
    .line 1555
    const-wide/16 v22, 0x8

    #@314
    :try_start_14
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@317
    .line 1559
    :cond_1e
    move-object/from16 v0, p0

    #@319
    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@31b
    move-object/from16 v21, v0

    #@31d
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    #@320
    move-result v16

    #@321
    .line 1560
    .local v16, "swapError":I
    sparse-switch v16, :sswitch_data_0

    #@324
    .line 1574
    const-string/jumbo v21, "GLThread"

    #@327
    const-string/jumbo v22, "eglSwapBuffers"

    #@32a
    move-object/from16 v0, v21

    #@32c
    move-object/from16 v1, v22

    #@32e
    move/from16 v2, v16

    #@330
    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    #@333
    .line 1576
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@336
    move-result-object v22

    #@337
    monitor-enter v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@338
    .line 1577
    const/16 v21, 0x1

    #@33a
    :try_start_15
    move/from16 v0, v21

    #@33c
    move-object/from16 v1, p0

    #@33e
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@340
    .line 1578
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@343
    move-result-object v21

    #@344
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    #@347
    :try_start_16
    monitor-exit v22

    #@348
    .line 1583
    :goto_7
    :sswitch_0
    if-eqz v20, :cond_0

    #@34a
    .line 1584
    const/4 v8, 0x1

    #@34b
    .line 1585
    const/16 v20, 0x0

    #@34d
    goto/16 :goto_0

    #@34f
    .line 1491
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v21

    #@350
    monitor-exit v22

    #@351
    throw v21

    #@352
    .line 1496
    :cond_1f
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@355
    move-result-object v22

    #@356
    monitor-enter v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    #@357
    .line 1497
    const/16 v21, 0x1

    #@359
    :try_start_17
    move/from16 v0, v21

    #@35b
    move-object/from16 v1, p0

    #@35d
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@35f
    .line 1498
    const/16 v21, 0x1

    #@361
    move/from16 v0, v21

    #@363
    move-object/from16 v1, p0

    #@365
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@367
    .line 1499
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@36a
    move-result-object v21

    #@36b
    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@36e
    :try_start_18
    monitor-exit v22

    #@36f
    goto/16 :goto_0

    #@371
    .line 1496
    :catchall_4
    move-exception v21

    #@372
    monitor-exit v22

    #@373
    throw v21

    #@374
    .line 1522
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v21

    #@375
    .line 1523
    const-wide/16 v22, 0x8

    #@377
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@37a
    .line 1522
    throw v21

    #@37b
    .line 1538
    :catchall_6
    move-exception v21

    #@37c
    .line 1539
    const-wide/16 v22, 0x8

    #@37e
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@381
    .line 1538
    throw v21

    #@382
    .line 1554
    :catchall_7
    move-exception v21

    #@383
    .line 1555
    const-wide/16 v22, 0x8

    #@385
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@388
    .line 1554
    throw v21

    #@389
    .line 1567
    .restart local v16    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    #@38a
    .line 1568
    goto :goto_7

    #@38b
    .line 1576
    :catchall_8
    move-exception v21

    #@38c
    monitor-exit v22

    #@38d
    throw v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    #@38e
    .line 1593
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v21

    #@38f
    monitor-exit v22

    #@390
    throw v21

    #@391
    .line 1560
    nop

    #@392
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1605
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    :cond_0
    move v0, v1

    #@f
    :cond_1
    :goto_0
    return v0

    #@10
    .line 1606
    :cond_2
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@12
    if-lez v2, :cond_0

    #@14
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@16
    if-lez v2, :cond_0

    #@18
    .line 1607
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@1a
    if-nez v2, :cond_1

    #@1c
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@1e
    if-eq v2, v0, :cond_1

    #@20
    move v0, v1

    #@21
    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    #@0
    .prologue
    .line 1277
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1278
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@6
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    #@9
    .line 1279
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@c
    .line 1280
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@13
    .line 1276
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1267
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@7
    .line 1268
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    #@9
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    #@c
    .line 1265
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    #@0
    .prologue
    .line 1601
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    #@0
    .prologue
    .line 1621
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 1622
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1621
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public onPause()V
    .locals 3

    #@0
    .prologue
    .line 1698
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1702
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1703
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1704
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 1697
    return-void

    #@19
    .line 1709
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1710
    :catch_0
    move-exception v0

    #@22
    .line 1711
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1698
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public onResume()V
    .locals 3

    #@0
    .prologue
    .line 1718
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1722
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    #@8
    .line 1723
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@b
    .line 1724
    const/4 v1, 0x0

    #@c
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@e
    .line 1725
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@15
    .line 1726
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@17
    if-nez v1, :cond_0

    #@19
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-eqz v1, :cond_1

    #@21
    :cond_0
    monitor-exit v2

    #@22
    .line 1717
    return-void

    #@23
    .line 1731
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 1732
    :catch_0
    move-exception v0

    #@2c
    .line 1733
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 1718
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 1740
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1741
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    #@7
    .line 1742
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    #@9
    .line 1743
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    #@c
    .line 1744
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@f
    .line 1745
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@12
    .line 1752
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    if-ne v1, p0, :cond_0

    #@18
    monitor-exit v2

    #@19
    .line 1753
    return-void

    #@1a
    .line 1756
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@21
    .line 1759
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@23
    if-nez v1, :cond_1

    #@25
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    if-eqz v1, :cond_2

    #@29
    :cond_1
    monitor-exit v2

    #@2a
    .line 1739
    return-void

    #@2b
    .line 1759
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 1760
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    move-result v1

    #@33
    .line 1759
    if-eqz v1, :cond_1

    #@35
    .line 1765
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 1766
    :catch_0
    move-exception v0

    #@3e
    .line 1767
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 1740
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1799
    if-nez p1, :cond_0

    #@2
    .line 1800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "r must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1802
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 1803
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1804
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1798
    return-void

    #@1e
    .line 1802
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    #@0
    .prologue
    .line 1776
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1777
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    #@8
    .line 1778
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1779
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1781
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 1782
    :catch_0
    move-exception v0

    #@1c
    .line 1783
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 1776
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 1773
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    #@0
    .prologue
    .line 1790
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    #@3
    .line 1791
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@a
    .line 1789
    return-void
.end method

.method public requestRender()V
    .locals 2

    #@0
    .prologue
    .line 1627
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 1628
    const/4 v0, 0x1

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@8
    .line 1629
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1626
    return-void

    #@11
    .line 1627
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public requestRenderAndWait()V
    .locals 3

    #@0
    .prologue
    .line 1634
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1639
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v1

    #@9
    if-ne v1, p0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 1640
    return-void

    #@d
    .line 1643
    :cond_0
    const/4 v1, 0x1

    #@e
    :try_start_1
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    #@10
    .line 1644
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    #@13
    .line 1645
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@16
    .line 1647
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@1d
    .line 1649
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    #@1f
    if-nez v1, :cond_1

    #@21
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    if-eqz v1, :cond_2

    #@25
    :cond_1
    monitor-exit v2

    #@26
    .line 1633
    return-void

    #@27
    .line 1649
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    #@29
    if-nez v1, :cond_1

    #@2b
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 1651
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1652
    :catch_0
    move-exception v0

    #@3a
    .line 1653
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1634
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "GLThread "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    #@1b
    .line 1253
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1257
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@25
    .line 1246
    :goto_0
    return-void

    #@26
    .line 1254
    :catch_0
    move-exception v0

    #@27
    .line 1257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@30
    .line 1257
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    #@37
    .line 1256
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    #@0
    .prologue
    .line 1611
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 1612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "renderMode"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1614
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@11
    move-result-object v1

    #@12
    monitor-enter v1

    #@13
    .line 1615
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    #@15
    .line 1616
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1610
    return-void

    #@1e
    .line 1614
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    #@0
    .prologue
    .line 1661
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1665
    const/4 v1, 0x1

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1666
    const/4 v1, 0x0

    #@9
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    #@b
    .line 1667
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@12
    .line 1668
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1669
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v1, :cond_1

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 1660
    return-void

    #@1c
    .line 1670
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 1672
    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 1673
    :catch_0
    move-exception v0

    #@29
    .line 1674
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 1661
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    #@0
    .prologue
    .line 1681
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 1685
    const/4 v1, 0x0

    #@6
    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    #@8
    .line 1686
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@f
    .line 1687
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 1680
    return-void

    #@19
    .line 1689
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1690
    :catch_0
    move-exception v0

    #@22
    .line 1691
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1681
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
